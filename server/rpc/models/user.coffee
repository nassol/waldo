mongoose = require 'mongoose'

Schema = mongoose.Schema

UserSchema = new Schema
  name: String,
  userId: String,
  createdAt: {type: Date, default: Date.now}

mongoose.model 'User', UserSchema
mongoose.connect 'mongodb://localhost/waldo'

module.exports.User = mongoose.model 'User'
module.exports.UserSchema = UserSchema