# Description
#   A hubot script to interact with jenkins
#
# Configuration:
#   HUBOT_JENKINS_URL
#   HUBOT_JENKINS_AUTH
#
# Commands:
#   hubot jenkins list        - <List all the defined Jenkins jobs>
#   hubot jenkins job jobName - <List all the defined Jenkins jobs>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   simon@simonjohansson.com

jenkinsapi = require 'jenkins-api'

getClient = ->
  url = process.env.HUBOT_JENKINS_URL
  auth = process.env.HUBOT_JENKINS_AUTH
  console.log url
  if auth
    url = "#{auth}@#{url}"
  jenkinsapi.init("http://#{url}")

formatError = (err, data) ->
  if data
    if data.body
      "Jenkins: #{htmlToText.fromString(data.body)}"
  else
    "Jenkins: #{err}"

list = (msg) ->
  jenkins = getClient()
  jenkins.all_jobs (err, data) ->
    if err
      msg.reply formatError(err, data)
    else
      msg.reply (data.map (job) -> "#{job.name} -> #{job.url}").join '\n'

jobInfo = (msg) ->
  jenkins = getClient()
  job = msg.match[1]
  jenkins.job_info job, (err, data) ->
    if err
      msg.reply formatError(err, data)
    else
      msg.reply """
        #{data.url}
        #{data.healthReport[0].description}
        Last build: #{data.lastBuild.url}
        Last completed build: #{data.lastCompletedBuild.url}
        Last failed build: #{data.lastFailedBuild.url}
      """

module.exports = (robot) ->
  robot.respond /jenkins list/, (msg) ->
    list(msg)

  robot.respond /jenkins job (.*)/i, (msg) ->
    jobInfo(msg)
