Feature: here are the contents of 'my-signin.feature'
  @env=SignIn
  @wip
  Scenario:
    Given url loginUrlBase
    And request { userId: '#(username)', userPass: '#(password)' }
    When method post
    Then status 200
    And def authToken = response

# second HTTP call, to get a list of 'projects'
    Given path 'users', authToken.userId, 'projects'
    When method get
    Then status 200
# logic to 'choose' first project
    And set authToken.projectId = response.projects[0].projectId;