# REV-01 Cross-model review

| Field | Value |
|---|---|
| Date | 25/11/2026 |
| Reviewer | Eron Baftjari (checked by Patryk Graszk, as I made the class diagram) |
| Files reviewed | class-diagram.puml, seq-checkAvailability, seq-makeBooking, seq-checkInMember, makeBooking.md, checkInMember.md |

I checked each operation in the class diagram is used in a sequence diagram and, if it's a system operation, has a contract. Then I checked every message in the sequence diagrams is in the class diagram.

| Operation | In class diagram | Used in a sequence diagram | In a contract | Issue |
|---|---|---|---|---|
| BookingController.checkAvailability | Yes | seq-checkAvailability | No | No contract, but it doesn't change anything so it doesn't need one. No change. |
| BookingController.makeBooking | Yes | seq-makeBooking | C01 | Controller calls Member, Resource and Booking but is only linked to Workspace. No change. |
| CheckInController.checkInMember | Yes | seq-checkInMember | C02 | Controller calls Member and Booking but is only linked to Workspace. No change. |
| Workspace.findMember | Yes | seq-makeBooking, seq-checkInMember | n/a | Workspace to Member has no multiplicity on the Member end. No change. |
| Workspace.findResource | Yes | seq-checkAvailability, seq-makeBooking | n/a | None |
| Member.hasActiveMembership | Yes | seq-makeBooking | n/a | Clashes with the C01 precondition (see RV-01 row 2). No change. |
| Member.createBooking | Yes | seq-makeBooking | n/a | None |
| Member.findBookingFor | Yes | seq-checkInMember | n/a | None |
| Member.isOverAllowance | Yes | seq-makeBooking | n/a | None |
| Membership.isActive | Yes | seq-makeBooking | n/a | None |
| Membership.getPlan | Yes | seq-makeBooking | n/a | None |
| Plan.isOverAllowance | Yes | seq-makeBooking | n/a | None |
| Booking.addDate | Yes | seq-makeBooking | n/a | None |
| Booking.recordUsage | Yes | seq-makeBooking | n/a | None |
| Booking.checkIn | Yes | seq-checkInMember | n/a | None |
| Resource.isAvailable | Yes | seq-checkAvailability, seq-makeBooking | n/a | None |
| Resource.getFaults | Yes | seq-checkAvailability | n/a | None |
| CheckIn.recordUsage | Yes | seq-checkInMember | n/a | None |
| create(...) | No | seq-makeBooking, seq-checkInMember | n/a | These are constructors, so they're not listed in the class diagram. No change. |

The team agreed not to raise new cards or change the models from this review.