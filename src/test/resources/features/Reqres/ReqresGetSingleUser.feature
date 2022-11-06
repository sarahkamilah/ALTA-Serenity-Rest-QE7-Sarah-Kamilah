Feature: Reqres Get Single User Feature test
  @tugas
    Scenario Outline: Get single user with valid user <id>
      Given Get single user with parameter user <id>
      When Send get single user request
      Then Status code should be 200 OK
      And Response body page user be <id>
      And Validate get single user json schema
    Examples:
      | id |
      | 2  |
      | 3  |

  @tugas
    Scenario Outline: Get single user with invalid user <id>
      Given Get single user with parameter user <id>
      When Send get single user request
      Then Status code should be 404 No Content
      And Response body page be null
      And Valid get single user with invalid user schema
    Examples:
      | id     |
      | 23     |
      | 309483 |