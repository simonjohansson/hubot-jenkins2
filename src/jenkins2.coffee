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

module.exports = (robot) ->
  robot.respond /jenkins list/, (msg) ->
    list(msg)
