Feature: Check in a member

  @SC05 @FR07 @BR02 @UC05 @US06
  Scenario: Temporary cover staff check in a member without seeing commercial details
    Given member M-104 has a booking for Hot Desk 14 on 3 November
    And Sam is working as temporary cover staff
    When Sam checks in member M-104 on arrival
    Then member M-104 is recorded as arrived
    And Sam is not shown the plan, allowance or charge details of member M-104
