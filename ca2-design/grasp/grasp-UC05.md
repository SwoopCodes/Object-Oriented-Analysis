# GRASP rationale - UC05 Check In Member

| Responsibility | Given to | GRASP pattern | Why (one sentence) | Other option and why not |
|---|---|---|---|---|
| Receive checkInMember | CheckInController | Controller | It is the first object after the staff screen to get the check in  System event | BookingController - it already handles the make books so giving it check in too does 2 unrelated jobs|
| Find a member by number | Workspace | Information Expert | Workspace holds list of all members so it has what it needs to search member by member number | BookingController - it doesnt hold the members so it would have to go into Workspaces list which means more coupling |
| Find the member's booking for today | Member | Information Expert | Member makes booksings , so it has its own list of bookings to seach by dates | Workspace - it would have to looking through every booking of every member which is too much work |
| Create the CheckIn | Booking | Creator | A ChechIn records arrival for one booking so the booking records the CheckIn and is linked to it in the data model | CheckInController - Controllers should not create domain Objects and the CheckIn would have mo natrual owner to whos holding it  |
| Set the arrival time | CheckIn (when it is created) | Information Expert | ArrivalTime is CheckIn own attribute so CheckIn would be the right place to set it  | Booking - it would hold attendace data as well as booking data which will mix these 2 |
| Create the UsageRecord for the check-in | CheckIn | Creator | CheckIn has the data needed to start the UsageRecord which is the arrival time and the booking it belongs to | Booking - it would have to ask CheckIn for the arrival time first which adds an extra link |


## Controller Choice

BookingController handles UC01 Make Booking, and CheckInController handles UC05 Check In Member. These are two different use cases that happen at different times: a booking is made before the day, while check-in happens on the day when the member arrives at the desk. If BookingController also handled check-in, it would do two unrelated jobs, which is low cohesion, and it would keep growing every time a new use case was added. Keeping one controller per use case means each controller stays small and focused, and check-in can be changed without affecting booking.

## Coupling and cohesion

The design keeps coupling low because each class only talks to the class it is dirrectly linked to in the domain model , The controller asks Workspace for the member , the member finds its own booking and the Booking creates the CheckIn. Cohesion stays high as each class only works with its own data , `example `  Member searches its own bookings , CheckIn sets its own arrival time and creates its own UsageRecord . This means a change to one class is less likely to break the other classes.

## BR02
BR02  is about what the screen shows, so it belongs to the user interface and no domain class in this table is responsible for it.