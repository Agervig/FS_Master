// Auto-generated. Do not edit!

// (in-package dnb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DatastoreExternalEntry = require('./DatastoreExternalEntry.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DatastoreExternalSourceUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source = null;
      this.entries = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
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
    // Serializes a message object of type DatastoreExternalSourceUpdate
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
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
    //deserializes a message object of type DatastoreExternalSourceUpdate
    let len;
    let data = new DatastoreExternalSourceUpdate(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.source);
    object.entries.forEach((val) => {
      length += DatastoreExternalEntry.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/DatastoreExternalSourceUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d33e29f01329ea3b4ee770fb21f027e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string source
    DatastoreExternalEntry[] entries
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new DatastoreExternalSourceUpdate(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

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

module.exports = DatastoreExternalSourceUpdate;
