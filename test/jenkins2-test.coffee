chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

Helper = require('hubot-test-helper')
helper = new Helper('../src')

jenkins = require 'jenkins-api'

describe 'Commands', ->
  room = null
  request = require 'request'
  stub = sinon.stub(jenkins)

  beforeEach ->
    room = helper.createRoom()

  context 'user asks for all the jobs', ->
    beforeEach ->
      stub.init = -> {
        all_jobs: (cal) -> cal(null, [{name: 'job1', url: 'http://jenkins/job/job1/', color: 'blue'}, {name: 'job2', url: 'http://jenkins/job/job2/', color: 'blue'}, {name: 'job3', url: 'http://jenkins/job/job3', color: 'blue'}])
      }
      room.user.say 'simon', '@hubot jenkins list'

    it 'hubot replies with the jobs', ->
      expect(room.messages).to.eql [
        ['simon', '@hubot jenkins list']
        ['hubot', '@simon job1 -> http://jenkins/job/job1/\njob2 -> http://jenkins/job/job2/\njob3 -> http://jenkins/job/job3']
      ]
