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

class ToastTranslation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language_code = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('language_code')) {
        this.language_code = initObj.language_code
      }
      else {
        this.language_code = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToastTranslation
    // Serialize message field [language_code]
    bufferOffset = _serializer.string(obj.language_code, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToastTranslation
    let len;
    let data = new ToastTranslation(null);
    // Deserialize message field [language_code]
    data.language_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.language_code);
    length += _getByteLength(object.value);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/ToastTranslation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29b983d22ef0190726766d474d9c2435';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string language_code
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToastTranslation(null);
    if (msg.language_code !== undefined) {
      resolved.language_code = msg.language_code;
    }
    else {
      resolved.language_code = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    return resolved;
    }
};

module.exports = ToastTranslation;
