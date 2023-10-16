// Auto-generated. Do not edit!

// (in-package camera_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWhiteBalanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.balance_ratio_red = null;
      this.balance_ratio_green = null;
      this.balance_ratio_blue = null;
    }
    else {
      if (initObj.hasOwnProperty('balance_ratio_red')) {
        this.balance_ratio_red = initObj.balance_ratio_red
      }
      else {
        this.balance_ratio_red = 0.0;
      }
      if (initObj.hasOwnProperty('balance_ratio_green')) {
        this.balance_ratio_green = initObj.balance_ratio_green
      }
      else {
        this.balance_ratio_green = 0.0;
      }
      if (initObj.hasOwnProperty('balance_ratio_blue')) {
        this.balance_ratio_blue = initObj.balance_ratio_blue
      }
      else {
        this.balance_ratio_blue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWhiteBalanceRequest
    // Serialize message field [balance_ratio_red]
    bufferOffset = _serializer.float32(obj.balance_ratio_red, buffer, bufferOffset);
    // Serialize message field [balance_ratio_green]
    bufferOffset = _serializer.float32(obj.balance_ratio_green, buffer, bufferOffset);
    // Serialize message field [balance_ratio_blue]
    bufferOffset = _serializer.float32(obj.balance_ratio_blue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWhiteBalanceRequest
    let len;
    let data = new SetWhiteBalanceRequest(null);
    // Deserialize message field [balance_ratio_red]
    data.balance_ratio_red = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [balance_ratio_green]
    data.balance_ratio_green = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [balance_ratio_blue]
    data.balance_ratio_blue = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_control_msgs/SetWhiteBalanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd091419509df5ea2efedf994e89474af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Balance White camera feature allows you to manually correct color shifts so that white objects appear white in images acquired.
    # For this purpose, a digital gain correction can be applied per color channel (red, green, blue).
    # The increase or decrease in intensity is proportional. For example, if the balance ratio for a color is set to 1.2, the intensity of that color is increased by 20 %.
    # NOTE: calling this service will turn off the "Balance White Auto"
    
    float32 balance_ratio_red
    float32 balance_ratio_green
    float32 balance_ratio_blue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWhiteBalanceRequest(null);
    if (msg.balance_ratio_red !== undefined) {
      resolved.balance_ratio_red = msg.balance_ratio_red;
    }
    else {
      resolved.balance_ratio_red = 0.0
    }

    if (msg.balance_ratio_green !== undefined) {
      resolved.balance_ratio_green = msg.balance_ratio_green;
    }
    else {
      resolved.balance_ratio_green = 0.0
    }

    if (msg.balance_ratio_blue !== undefined) {
      resolved.balance_ratio_blue = msg.balance_ratio_blue;
    }
    else {
      resolved.balance_ratio_blue = 0.0
    }

    return resolved;
    }
};

class SetWhiteBalanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWhiteBalanceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWhiteBalanceResponse
    let len;
    let data = new SetWhiteBalanceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_control_msgs/SetWhiteBalanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWhiteBalanceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetWhiteBalanceRequest,
  Response: SetWhiteBalanceResponse,
  md5sum() { return 'fdbb1487027d9369a9a369523a030ac9'; },
  datatype() { return 'camera_control_msgs/SetWhiteBalance'; }
};
