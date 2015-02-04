chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

Helper = require('hubot-test-helper')
helper = new Helper('../src')

jenkins = require 'jenkins-api'

describe 'Commands', ->
  room = null
  stub = sinon.stub(jenkins)

  beforeEach ->
    room = helper.createRoom()

  context 'user asks for all the jobs', ->
    test_data = require './all_jobs'

    beforeEach ->
      stub.init = -> {
        all_jobs: (cal) -> cal(null, test_data.stubData())
      }
      room.user.say 'simon', '@hubot jenkins list'

    it 'hubot replies with the jobs', ->
      expect(room.messages).to.eql [
        ['simon', '@hubot jenkins list']
        ['hubot', test_data.expectedReturn()]
      ]
