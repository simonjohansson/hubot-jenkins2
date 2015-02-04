exports.stubData = ->
  [{name: 'job1', url: 'http://jenkins/job/job1/', color: 'blue'},
    {name: 'job2', url: 'http://jenkins/job/job2/', color: 'blue'},
    {name: 'job3', url: 'http://jenkins/job/job3', color: 'blue'}]

exports.expectedReturn = ->
  """@simon job1 -> http://jenkins/job/job1/
  job2 -> http://jenkins/job/job2/
  job3 -> http://jenkins/job/job3"""
