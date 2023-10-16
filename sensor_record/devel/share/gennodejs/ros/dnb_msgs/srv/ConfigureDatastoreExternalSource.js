// Auto-generated. Do not edit!

// (in-package dnb_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DatastoreExternalEntry = require('../msg/DatastoreExternalEntry.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConfigureDatastoreExternalSourceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.entries = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('entries')) {
        this.entries = initObj.entries
      }
      else {
        this.entries = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureDatastoreExternalSourceRequest
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [entries]
    // Serialize the length for message field [entries]
    bufferOffset = _serializer.uint32(obj.entries.length, buffer, bufferOffset);
    obj.entries.forEach((val) => {
      bufferOffset = DatastoreExternalEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureDatastoreExternalSourceRequest
    let len;
    let data = new ConfigureDatastoreExternalSourceRequest(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [entries]
    // Deserialize array length for message field [entries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.entries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.entries[i] = DatastoreExternalEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    object.entries.forEach((val) => {
      length += DatastoreExternalEntry.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnb_msgs/ConfigureDatastoreExternalSourceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c227c9fdc93e0c3a5ee90f54bf35910a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source
    DatastoreExternalEntry[] entries
    
    ================================================================================
    MSG: dnb_msgs/DatastoreExternalEntry
    string source
    string source_id
    string value
    string type
    string display_title
    bool editable
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureDatastoreExternalSourceRequest(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.entries !== undefined) {
      resolved.entries = new Array(msg.entries.length);
      for (let i = 0; i < resolved.entries.length; ++i) {
        resolved.entries[i] = DatastoreExternalEntry.Resolve(msg.entries[i]);
      }
    }
    else {
      resolved.entries = []
    }

    return resolved;
    }
};

class ConfigureDatastoreExternalSourceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result_code = null;
      this.result_message = null;
    }
    else {
      if (initObj.hasOwnProperty('result_code')) {
        this.result_code = initObj.result_code
      }
      else {
        this.result_code = 0;
      }
      if (initObj.hasOwnProperty('result_message')) {
        this.result_message = initObj.result_message
      }
      else {
        this.result_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureDatastoreExternalSourceResponse
    // Serialize message field [result_code]
    bufferOffset = _serializer.int32(obj.result_code, buffer, bufferOffset);
    // Serialize message field [result_message]
    bufferOffset = _serializer.string(obj.result_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureDatastoreExternalSourceResponse
    let len;
    let data = new ConfigureDatastoreExternalSourceResponse(null);
    // Deserialize message field [result_code]
    data.result_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result_message]
    data.result_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result_message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnb_msgs/ConfigureDatastoreExternalSourceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e623f0c90342060a328c0ac82e7a4d36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result_code
    int32 SUCCESS = 0
    int32 INVALID_SOURCE = 1
    int32 INVALID_ENTRY = 2
    string result_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureDatastoreExternalSourceResponse(null);
    if (msg.result_code !== undefined) {
      resolved.result_code = msg.result_code;
    }
    else {
      resolved.result_code = 0
    }

    if (msg.result_message !== undefined) {
      resolved.result_message = msg.result_message;
    }
    else {
      resolved.result_message = ''
    }

    return resolved;
    }
};

// Constants for message
ConfigureDatastoreExternalSourceResponse.Constants = {
  SUCCESS: 0,
  INVALID_SOURCE: 1,
  INVALID_ENTRY: 2,
}

module.exports = {
  Request: ConfigureDatastoreExternalSourceRequest,
  Response: ConfigureDatastoreExternalSourceResponse,
  md5sum() { return '316e479ef71cdaadbff872e2fcd262ac'; },
  datatype() { return 'dnb_msgs/ConfigureDatastoreExternalSource'; }
};
