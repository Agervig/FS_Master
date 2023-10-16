// Auto-generated. Do not edit!

// (in-package dnb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KeTopStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.buttons_active = null;
      this.second_active = null;
      this.teach_mode = null;
      this.auto_mode = null;
      this.enabling_key_pressed = null;
      this.jog_mode = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('buttons_active')) {
        this.buttons_active = initObj.buttons_active
      }
      else {
        this.buttons_active = [];
      }
      if (initObj.hasOwnProperty('second_active')) {
        this.second_active = initObj.second_active
      }
      else {
        this.second_active = false;
      }
      if (initObj.hasOwnProperty('teach_mode')) {
        this.teach_mode = initObj.teach_mode
      }
      else {
        this.teach_mode = false;
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = false;
      }
      if (initObj.hasOwnProperty('enabling_key_pressed')) {
        this.enabling_key_pressed = initObj.enabling_key_pressed
      }
      else {
        this.enabling_key_pressed = false;
      }
      if (initObj.hasOwnProperty('jog_mode')) {
        this.jog_mode = initObj.jog_mode
      }
      else {
        this.jog_mode = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeTopStatus
    // Serialize message field [buttons_active]
    bufferOffset = _arraySerializer.uint8(obj.buttons_active, buffer, bufferOffset, null);
    // Serialize message field [second_active]
    bufferOffset = _serializer.bool(obj.second_active, buffer, bufferOffset);
    // Serialize message field [teach_mode]
    bufferOffset = _serializer.bool(obj.teach_mode, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.bool(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [enabling_key_pressed]
    bufferOffset = _serializer.bool(obj.enabling_key_pressed, buffer, bufferOffset);
    // Serialize message field [jog_mode]
    bufferOffset = _serializer.uint8(obj.jog_mode, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeTopStatus
    let len;
    let data = new KeTopStatus(null);
    // Deserialize message field [buttons_active]
    data.buttons_active = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [second_active]
    data.second_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [teach_mode]
    data.teach_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enabling_key_pressed]
    data.enabling_key_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [jog_mode]
    data.jog_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.buttons_active.length;
    length += _getByteLength(object.msg);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/KeTopStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86f0ec71e85ea498020b5729ce416bde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ACK_BUTTON=0
    uint8 START_BUTTON=13
    uint8 STEP_BUTTON=18
    uint8 MENU_BUTTON=23
    uint8[] buttons_active
    
    bool second_active
    bool teach_mode
    bool auto_mode
    bool enabling_key_pressed
    
    uint8 WORLD=0
    uint8 BASE=1
    uint8 TOOL=2
    uint8 JOINTS=3
    uint8 jog_mode
    
    string msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeTopStatus(null);
    if (msg.buttons_active !== undefined) {
      resolved.buttons_active = msg.buttons_active;
    }
    else {
      resolved.buttons_active = []
    }

    if (msg.second_active !== undefined) {
      resolved.second_active = msg.second_active;
    }
    else {
      resolved.second_active = false
    }

    if (msg.teach_mode !== undefined) {
      resolved.teach_mode = msg.teach_mode;
    }
    else {
      resolved.teach_mode = false
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = false
    }

    if (msg.enabling_key_pressed !== undefined) {
      resolved.enabling_key_pressed = msg.enabling_key_pressed;
    }
    else {
      resolved.enabling_key_pressed = false
    }

    if (msg.jog_mode !== undefined) {
      resolved.jog_mode = msg.jog_mode;
    }
    else {
      resolved.jog_mode = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

// Constants for message
KeTopStatus.Constants = {
  ACK_BUTTON: 0,
  START_BUTTON: 13,
  STEP_BUTTON: 18,
  MENU_BUTTON: 23,
  WORLD: 0,
  BASE: 1,
  TOOL: 2,
  JOINTS: 3,
}

module.exports = KeTopStatus;
