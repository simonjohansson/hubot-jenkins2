exports.stubData = -> {
  "actions": [],
  "description": "",
  "displayName": "DeployCF",
  "displayNameOrNull": null,
  "name": "DeployCF",
  "url": "http://jenkins-01:8080/job/DeployCF/",
  "buildable": true,
  "builds": [
    {
      "number": 28,
      "url": "http://jenkins-01:8080/job/DeployCF/28/"
    },
    {
      "number": 27,
      "url": "http://jenkins-01:8080/job/DeployCF/27/"
    },
    {
      "number": 26,
      "url": "http://jenkins-01:8080/job/DeployCF/26/"
    },
    {
      "number": 25,
      "url": "http://jenkins-01:8080/job/DeployCF/25/"
    },
    {
      "number": 24,
      "url": "http://jenkins-01:8080/job/DeployCF/24/"
    },
    {
      "number": 23,
      "url": "http://jenkins-01:8080/job/DeployCF/23/"
    },
    {
      "number": 22,
      "url": "http://jenkins-01:8080/job/DeployCF/22/"
    },
    {
      "number": 21,
      "url": "http://jenkins-01:8080/job/DeployCF/21/"
    },
    {
      "number": 20,
      "url": "http://jenkins-01:8080/job/DeployCF/20/"
    },
    {
      "number": 19,
      "url": "http://jenkins-01:8080/job/DeployCF/19/"
    },
    {
      "number": 18,
      "url": "http://jenkins-01:8080/job/DeployCF/18/"
    },
    {
      "number": 17,
      "url": "http://jenkins-01:8080/job/DeployCF/17/"
    },
    {
      "number": 16,
      "url": "http://jenkins-01:8080/job/DeployCF/16/"
    },
    {
      "number": 15,
      "url": "http://jenkins-01:8080/job/DeployCF/15/"
    },
    {
      "number": 14,
      "url": "http://jenkins-01:8080/job/DeployCF/14/"
    },
    {
      "number": 13,
      "url": "http://jenkins-01:8080/job/DeployCF/13/"
    },
    {
      "number": 12,
      "url": "http://jenkins-01:8080/job/DeployCF/12/"
    },
    {
      "number": 11,
      "url": "http://jenkins-01:8080/job/DeployCF/11/"
    },
    {
      "number": 10,
      "url": "http://jenkins-01:8080/job/DeployCF/10/"
    },
    {
      "number": 9,
      "url": "http://jenkins-01:8080/job/DeployCF/9/"
    },
    {
      "number": 8,
      "url": "http://jenkins-01:8080/job/DeployCF/8/"
    },
    {
      "number": 7,
      "url": "http://jenkins-01:8080/job/DeployCF/7/"
    },
    {
      "number": 6,
      "url": "http://jenkins-01:8080/job/DeployCF/6/"
    },
    {
      "number": 5,
      "url": "http://jenkins-01:8080/job/DeployCF/5/"
    },
    {
      "number": 4,
      "url": "http://jenkins-01:8080/job/DeployCF/4/"
    },
    {
      "number": 3,
      "url": "http://jenkins-01:8080/job/DeployCF/3/"
    },
    {
      "number": 2,
      "url": "http://jenkins-01:8080/job/DeployCF/2/"
    },
    {
      "number": 1,
      "url": "http://jenkins-01:8080/job/DeployCF/1/"
    }
  ],
  "color": "blue",
  "firstBuild": {
    "number": 1,
    "url": "http://jenkins-01:8080/job/DeployCF/1/"
  },
  "healthReport": [
    {
      "description": "Build stability: 1 out of the last 5 builds failed.",
      "iconClassName": "icon-health-60to79",
      "iconUrl": "health-60to79.png",
      "score": 80
    }
  ],
  "inQueue": false,
  "keepDependencies": false,
  "lastBuild": {
    "number": 28,
    "url": "http://jenkins-01:8080/job/DeployCF/28/"
  },
  "lastCompletedBuild": {
    "number": 28,
    "url": "http://jenkins-01:8080/job/DeployCF/28/"
  },
  "lastFailedBuild": {
    "number": 24,
    "url": "http://jenkins-01:8080/job/DeployCF/24/"
  },
  "lastStableBuild": {
    "number": 28,
    "url": "http://jenkins-01:8080/job/DeployCF/28/"
  },
  "lastSuccessfulBuild": {
    "number": 28,
    "url": "http://jenkins-01:8080/job/DeployCF/28/"
  },
  "lastUnstableBuild": null,
  "lastUnsuccessfulBuild": {
    "number": 25,
    "url": "http://jenkins-01:8080/job/DeployCF/25/"
  },
  "nextBuildNumber": 29,
  "property": [
    {
      "parameterDefinitions": [
        {
          "defaultParameterValue": {
            "name": "MANIFEST_PATH",
            "value": ""
          },
          "description": "",
          "name": "MANIFEST_PATH",
          "type": "StringParameterDefinition"
        },
        {
          "defaultParameterValue": {
            "name": "BOSH_API",
            "value": ""
          },
          "description": "",
          "name": "BOSH_API",
          "type": "StringParameterDefinition"
        },
        {
          "defaultParameterValue": {
            "name": "BOSH_PASSWORD",
            "value": ""
          },
          "description": "",
          "name": "BOSH_PASSWORD",
          "type": "StringParameterDefinition"
        }
      ]
    }
  ],
  "queueItem": null
}

exports.expectedReturn = ->
  """@simon http://jenkins-01:8080/job/DeployCF/
  Build stability: 1 out of the last 5 builds failed.
  Last build: http://jenkins-01:8080/job/DeployCF/28/
  Last completed build: http://jenkins-01:8080/job/DeployCF/28/
  Last failed build: http://jenkins-01:8080/job/DeployCF/24/"""
