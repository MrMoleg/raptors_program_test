// Auto-generated. Do not edit!

// (in-package raptors_task.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IndexNumber = null;
      this.Name = null;
      this.Surname = null;
      this.Section = null;
      this.YearOfBirth = null;
    }
    else {
      if (initObj.hasOwnProperty('IndexNumber')) {
        this.IndexNumber = initObj.IndexNumber
      }
      else {
        this.IndexNumber = 0;
      }
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
      if (initObj.hasOwnProperty('Surname')) {
        this.Surname = initObj.Surname
      }
      else {
        this.Surname = '';
      }
      if (initObj.hasOwnProperty('Section')) {
        this.Section = initObj.Section
      }
      else {
        this.Section = '';
      }
      if (initObj.hasOwnProperty('YearOfBirth')) {
        this.YearOfBirth = initObj.YearOfBirth
      }
      else {
        this.YearOfBirth = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [IndexNumber]
    bufferOffset = _serializer.int32(obj.IndexNumber, buffer, bufferOffset);
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    // Serialize message field [Surname]
    bufferOffset = _serializer.string(obj.Surname, buffer, bufferOffset);
    // Serialize message field [Section]
    bufferOffset = _serializer.string(obj.Section, buffer, bufferOffset);
    // Serialize message field [YearOfBirth]
    bufferOffset = _serializer.int32(obj.YearOfBirth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [IndexNumber]
    data.IndexNumber = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Surname]
    data.Surname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Section]
    data.Section = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [YearOfBirth]
    data.YearOfBirth = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Name);
    length += _getByteLength(object.Surname);
    length += _getByteLength(object.Section);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptors_task/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c66f7d04e1fe420ad3f0efb223970bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 IndexNumber
    string Name
    string Surname
    string Section
    int32 YearOfBirth
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.IndexNumber !== undefined) {
      resolved.IndexNumber = msg.IndexNumber;
    }
    else {
      resolved.IndexNumber = 0
    }

    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    if (msg.Surname !== undefined) {
      resolved.Surname = msg.Surname;
    }
    else {
      resolved.Surname = ''
    }

    if (msg.Section !== undefined) {
      resolved.Section = msg.Section;
    }
    else {
      resolved.Section = ''
    }

    if (msg.YearOfBirth !== undefined) {
      resolved.YearOfBirth = msg.YearOfBirth;
    }
    else {
      resolved.YearOfBirth = 0
    }

    return resolved;
    }
};

module.exports = Person;
