// Auto-generated. Do not edit!

// (in-package dnb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ToastTranslation = require('./ToastTranslation.js');

//-----------------------------------------------------------

class ToastMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.sender_id = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('sender_id')) {
        this.sender_id = initObj.sender_id
      }
      else {
        this.sender_id = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToastMessage
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [sender_id]
    bufferOffset = _serializer.string(obj.sender_id, buffer, bufferOffset);
    // Serialize message field [message]
    // Serialize the length for message field [message]
    bufferOffset = _serializer.uint32(obj.message.length, buffer, bufferOffset);
    obj.message.forEach((val) => {
      bufferOffset = ToastTranslation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToastMessage
    let len;
    let data = new ToastMessage(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sender_id]
    data.sender_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    // Deserialize array length for message field [message]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.message = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.message[i] = ToastTranslation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sender_id);
    object.message.forEach((val) => {
      length += ToastTranslation.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/ToastMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '450139b6154bf1387b145b5b52133212';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 INFO=0
    uint8 SUCCESS=1
    uint8 WARNING=2
    uint8 ERROR=3
    uint8 type
    string sender_id
    ToastTranslation[] message
    ================================================================================
    MSG: dnb_msgs/ToastTranslation
    string language_code
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToastMessage(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.sender_id !== undefined) {
      resolved.sender_id = msg.sender_id;
    }
    else {
      resolved.sender_id = ''
    }

    if (msg.message !== undefined) {
      resolved.message = new Array(msg.message.length);
      for (let i = 0; i < resolved.message.length; ++i) {
        resolved.message[i] = ToastTranslation.Resolve(msg.message[i]);
      }
    }
    else {
      resolved.message = []
    }

    return resolved;
    }
};

// Constants for message
ToastMessage.Constants = {
  INFO: 0,
  SUCCESS: 1,
  WARNING: 2,
  ERROR: 3,
}

module.exports = ToastMessage;
