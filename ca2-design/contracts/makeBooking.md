# Contract C01: makeBooking

| Part | Content |
|---|---|
| Operation | `makeBooking(memberNumber, resourceIds, date, startTime, endTime, bookingType)` |
| Cross references | UC01 steps 3–7 and extensions 4a, 4b and 5a, SC01–SC04, FR05, FR09–FR11, FR13, BR03 |
| Preconditions | A `Member` with the supplied `memberNumber` exists and holds an active `Membership` (CQ03). |
| Postconditions | A `Booking` was created and associated with the `Member` and each requested `Resource`. A `BookingDate` was created with the supplied date, start time and end time and associated with the `Booking`. The booking status was set to Confirmed or Provisional according to `bookingType`. A `UsageRecord` was created and associated with the `Booking`. Any use beyond the plan allowance was recorded in `excessUsage`. |
| Controlled failures | **4a (FR11)** A conflicting request was refused. No booking or usage record was created.**5a (FR10)** The combined request was refused. No booking or usage record was created, and the room remained bookable on its own.**4b (BR03)** The extension was refused. The original and later confirmed bookings kept their existing times. |
| Open questions | **CQ01** Which plan overrides affect `excessUsage`?**CQ02** How long does a provisional booking hold its resources?**CQ09** Is the usage record passed on for pricing, or are charges calculated here? |

*This contract doesn't cover screens or storage.*
