# Description
#   A hubot script to interact with jenkins
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Simon Johansson[@<org>]

module.exports = (robot) ->
  robot.respond /jenkins list/, (msg) ->
    list(msg)
