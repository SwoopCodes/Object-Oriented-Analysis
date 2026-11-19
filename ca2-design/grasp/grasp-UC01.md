# GRASP rationale - UC01 Make Booking

| Responsibility | Given to | GRASP pattern | Why (one sentence) | Other option and why not |
|---|---|---|---|---|
| Receive checkAvailability and makeBooking | BookingController | Controller | It is the first thing after the booking screen to get these requests, and it hands the work to other classes. | Workspace could take them, but then it would get every request in the whole system and get too big. |
| Find a member by number | Workspace | Information Expert | Workspace has all the members, so it can find one by number. | BookingController could keep its own list of members, but that copies data and ties it to every member. |
| Find a resource by id | Workspace | Information Expert | Workspace has all the resources, so it can find one by id. | Booking could look for resources, but a booking only knows the resources it has already booked. |
| Check a resource is free for a time | Resource | Information Expert | A resource knows its own status, faults and bookings, so it can tell if it's free. | BookingController could check, but it would need to know every resource's bookings. |
| Check the membership is active | Membership (asked through Member) | Information Expert | Membership has the status, so it can say if it's active. Member just passes the question on. | BookingController could check the status itself, but then it would depend on Membership as well as Member. |
| Create the Booking | Member | Creator | In the domain model a Member makes Bookings, and the Member has the details a new booking needs. | BookingController could create it, but then the controller would be doing the work instead of handing it on. |
| Create the BookingDate | Booking | Creator | A Booking holds its dates and already has the date and times needed. | Member could create it, but Member doesn't hold booking dates, so it would be linked to something it doesn't need. |
| Create the UsageRecord | Booking | Creator | In the domain model a usage record is recorded from a Booking, so the Booking creates it. | CheckIn could create it, but in UC01 the member hasn't arrived yet, so there is no CheckIn. CheckIn creates it later, in UC05. |
| Check usage is over the plan allowance | Plan (asked through Member and Membership) | Information Expert | Plan has deskHours, which is the allowance, so it