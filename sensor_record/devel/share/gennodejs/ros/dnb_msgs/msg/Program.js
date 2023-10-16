// Auto-generated. Do not edit!

// (in-package dnb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Argument = require('./Argument.js');

//-----------------------------------------------------------

class Program {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.arguments = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('arguments')) {
        this.arguments = initObj.arguments
      }
      else {
        this.arguments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Program
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [arguments]
    // Serialize the length for message field [arguments]
    bufferOffset = _serializer.uint32(obj.arguments.length, buffer, bufferOffset);
    obj.arguments.forEach((val) => {
      bufferOffset = Argument.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Program
    let len;
    let data = new Program(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arguments]
    // Deserialize array length for message field [arguments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arguments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arguments[i] = Argument.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.arguments.forEach((val) => {
      length += Argument.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/Program';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d51239b0eb86a694c9fb7b883a96b58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    Argument[] arguments
    ================================================================================
    MSG: dnb_msgs/Argument
    string name
    string type
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Program(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.arguments !== undefined) {
      resolved.arguments = new Array(msg.arguments.length);
      for (let i = 0; i < resolved.arguments.length; ++i) {
        resolved.arguments[i] = Argument.Resolve(msg.arguments[i]);
      }
    }
    else {
      resolved.arguments = []
    }

    return resolved;
    }
};

module.exports = Program;
