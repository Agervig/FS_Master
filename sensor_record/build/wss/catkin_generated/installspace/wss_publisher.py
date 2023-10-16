#Run this command if you encounter i2c permission errors: sudo chmod a+rw /dev/i2c-1




import rospy
from wss.msg import FloatsWithTimestamp
from std_msgs.msg import Float32MultiArray 
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

i2c = busio.I2C(board.SCL, board.SDA)
ads = ADS.ADS1115(i2c)
chan = AnalogIn(ads, ADS.P0)
FREQUENCY = 300


def talker():
    pub = rospy.Publisher("wss/wss_pub", FloatsWithTimestamp, queue_size=10)
    rospy.init_node("publisher_node", anonymous=True)
    rospy.loginfo("Node /wss/publisher_node initilized")
    rate = rospy.Rate(FREQUENCY)
    val_vol_msg = FloatsWithTimestamp()
    rospy.loginfo("Running node wss_pub")
    
    
    while not rospy.is_shutdown():
        val_vol_msg.timestamp = rospy.Time.now()
        val_vol_msg.value = chan.value
        val_vol_msg.voltage = chan.voltage
        pub.publish(val_vol_msg)
        rate.sleep()
        
if __name__=="__main__":
    try:
        talker()
    except rospy.ROSInitException:
        pass