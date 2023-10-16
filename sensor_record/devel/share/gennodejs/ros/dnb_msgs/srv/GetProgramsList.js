// Auto-generated. Do not edit!

// (in-package dnb_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Program = require('../msg/Program.js');

//-----------------------------------------------------------

class GetProgramsListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramsListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramsListRequest
    let len;
    let data = new GetProgramsListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnb_msgs/GetProgramsListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetProgramsListRequest(null);
    return resolved;
    }
};

class GetProgramsListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.programs = null;
    }
    else {
      if (initObj.hasOwnProperty('programs')) {
        this.programs = initObj.programs
      }
      else {
        this.programs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramsListResponse
    // Serialize message field [programs]
    // Serialize the length for message field [programs]
    bufferOffset = _serializer.uint32(obj.programs.length, buffer, bufferOffset);
    obj.programs.forEach((val) => {
      bufferOffset = Program.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramsListResponse
    let len;
    let data = new GetProgramsListResponse(null);
    // Deserialize message field [programs]
    // Deserialize array length for message field [programs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.programs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.programs[i] = Program.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.programs.forEach((val) => {
      length += Program.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnb_msgs/GetProgramsListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72cea8df2b0c1e870498322f5ffbab0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Program[] programs
    
    ================================================================================
    MSG: dnb_msgs/Program
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
    const resolved = new GetProgramsListResponse(null);
    if (msg.programs !== undefined) {
      resolved.programs = new Array(msg.programs.length);
      for (let i = 0; i < resolved.programs.length; ++i) {
        resolved.programs[i] = Program.Resolve(msg.programs[i]);
      }
    }
    else {
      resolved.programs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetProgramsListRequest,
  Response: GetProgramsListResponse,
  md5sum() { return '72cea8df2b0c1e870498322f5ffbab0b'; },
  datatype() { return 'dnb_msgs/GetProgramsList'; }
};
