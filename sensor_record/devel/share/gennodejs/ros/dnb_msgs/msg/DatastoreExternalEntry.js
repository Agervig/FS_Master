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

class DatastoreExternalEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.source_id = null;
      this.value = null;
      this.type = null;
      this.display_title = null;
      this.editable = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('source_id')) {
        this.source_id = initObj.source_id
      }
      else {
        this.source_id = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('display_title')) {
        this.display_title = initObj.display_title
      }
      else {
        this.display_title = '';
      }
      if (initObj.hasOwnProperty('editable')) {
        this.editable = initObj.editable
      }
      else {
        this.editable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DatastoreExternalEntry
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [source_id]
    bufferOffset = _serializer.string(obj.source_id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [display_title]
    bufferOffset = _serializer.string(obj.display_title, buffer, bufferOffset);
    // Serialize message field [editable]
    bufferOffset = _serializer.bool(obj.editable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DatastoreExternalEntry
    let len;
    let data = new DatastoreExternalEntry(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source_id]
    data.source_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [display_title]
    data.display_title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [editable]
    data.editable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    length += _getByteLength(object.source_id);
    length += _getByteLength(object.value);
    length += _getByteLength(object.type);
    length += _getByteLength(object.display_title);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnb_msgs/DatastoreExternalEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5511fa9acf57fd3f2c6cc80e60bd29f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DatastoreExternalEntry(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.source_id !== undefined) {
      resolved.source_id = msg.source_id;
    }
    else {
      resolved.source_id = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.display_title !== undefined) {
      resolved.display_title = msg.display_title;
    }
    else {
      resolved.display_title = ''
    }

    if (msg.editable !== undefined) {
      resolved.editable = msg.editable;
    }
    else {
      resolved.editable = false
    }

    return resolved;
    }
};

module.exports = DatastoreExternalEntry;
