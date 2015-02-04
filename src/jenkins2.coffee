# Description
#   A hubot script to interact with jenkins
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot jenkins list - <List all the defined Jenkins jobs>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   simon@simonjohansson.com

jenkinsapi = require 'jenkins-api'

formatError = (err, data) ->
  if data
    if data.body
      "Jenkins: #{htmlToText.fromString(data.body)}"
  else
    "Jenkins: #{err}"

list = (msg) ->
  jenkins = jenkinsapi.init("..")
  jenkins.all_jobs (err, data) ->
    if err
      msg.reply formatError(err, data)
    else
      msg.reply (data.map (job) -> "#{job.name} -> #{job.url}").join '\n'

jobInfo = (msg) ->
  job = msg.match[1]
  jenkins = jenkinsapi.init("..")
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
