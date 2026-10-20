Feature: Extend a booking

  Rule: An extension must not affect a later confirmed booking

    @SC04 @BR03 @FR11 @UC01 @US02
    Scenario Outline: Extension against a later confirmed booking
      Given member M-104 has a confirmed booking for Meeting Room 2 from 09:00 to 10:00 on 3 November
      And member M-210 has a confirmed booking for Meeting Room 2 from 11:00 to 12:00 on 3 November
      When member M-104 asks to extend the booking to end at <new end>
      Then the extension is <outcome>
      And the booking of member M-210 is unchanged

      Examples:
        | new end | outcome  |
        | 10:45   | accepted |
        | 11:00   | accepted |
        | 11:15   | refused  |
