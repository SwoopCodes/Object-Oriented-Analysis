Feature: Make a booking

  @SC01 @FR09 @FR11 @UC01 @US01
  Scenario: Member books a free room and it is confirmed
    Given Meeting Room 2 has no bookings on 3 November
    And member M-104 has an active membership
    When member M-104 books Meeting Room 2 from 10:00 to 12:00 on 3 November as a confirmed booking
    Then the booking is recorded for member M-104 with Confirmed status
    And the usage for the booking is recorded
    And the member is told the booking is confirmed

  @SC02 @FR11 @UC01 @US02
  Scenario: Overlapping booking for the same desk is refused
    Given member M-210 has a confirmed booking for Hot Desk 14 from 09:00 to 13:00 on 3 November
    When member M-104 books Hot Desk 14 from 11:00 to 15:00 on 3 November
    Then the booking is refused
    And member M-104 is told Hot Desk 14 is not available at that time
    And the booking of member M-210 is unchanged

  @SC03 @FR10 @UC01 @US03
  Scenario: Room and equipment booking is refused when the equipment is taken, but the room stays bookable
    Given Meeting Room 2 is free from 14:00 to 16:00 on 3 November
    And Video Conferencing Kit VC-1 is reserved by member M-210 from 14:00 to 16:00 on 3 November
    When member M-104 books Meeting Room 2 with Video Conferencing Kit VC-1 from 14:00 to 16:00 on 3 November
    Then the booking is refused
    And member M-104 is told VC-1 is not available at that time
    And Meeting Room 2 can still be booked on its own for that time
