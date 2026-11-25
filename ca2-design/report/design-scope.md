# Selected CA2 design scope

The selected capabilities support the [Product Goal](../README.md) by making bookings reliable and recording arrivals and usage.

| Use case | System operations | Business value | Priority | Rules and requirements covered | Depends on | Why selected |
|---|---|---|---|---|---|---|
| UC01 Make Booking | `checkAvailability`, `makeBooking` | Members can rely on bookings, avoid conflicts and obtain the equipment they need (US01–US03). | Must | FR01, FR09, FR10, FR11, FR13; US01–US03; BR01, BR03, BR04 | Known member, active membership and resource information. CQ01, CQ02, CQ03, CQ06, CQ09 and CQ12 remain open. | Its two system operations address the Product Goal's booking and availability needs. Three linked business rules and four Gherkin scenarios (SC01–SC04) provide privacy, orientation, success, conflict and boundary behaviour to examine. |
| UC05 Check In Member | `checkInMember` | Temporary cover staff can handle arrivals while protecting members' commercial information (US06). | Must | FR05, FR07, FR13; US06; BR02; SC05 | Logged-in staff, an open workspace and a booking from UC01 for the normal path. CQ07, CQ08 and CQ13 remain open. | Its one system operation connects the booking record to an actual arrival and usage. One linked business rule (BR02) and one Gherkin scenario (SC05) add staff privacy behaviour to the selected design. |

## Not selected

The following scope reasons are proposed for group review.

- **UC02 View Room Information** — Detailed room-information viewing is deferred while UC01 covers availability checking.
- **UC03 Move Booking** — Moving an existing booking is deferred to keep the design focused on booking creation and arrival.
- **UC04 Change Recurring Booking Dates** — Editing individual recurring dates adds a separate organisation-administrator workflow.
- **UC06 Set Equipment Status** — Equipment-status maintenance is deferred. UC01 uses the recorded resource status when checking availability.
- **UC07 Log Fault** — Fault entry is deferred. UC01 reads existing faults and reports their limitations.
- **UC08 Close Resource** — Closures, booking relocation and notifications add a separate operational workflow.
- **UC09 Send Usage Records** — Accounting transfer is deferred while the selected capabilities cover recording usage.

## Scope check

There are three selected system operations and four group members. The scope covers member booking and staff check-in, with five Gherkin scenario IDs across the two use cases. Work can be shared across behaviour, contracts, CRC cards, GRASP rationale, class design, interactions and reviews.

The three operations do not by themselves establish one implementation slice per member. Any required third use case needs group agreement against the CA2 brief before a new card is raised.

UC01's Related row omits FR05 although its success flow records usage. FR05 is covered by UC05 and C01, and the UC01 reference needs reconciliation.

## Sources

- [Product Goal and team](../README.md)
- [UC01 and use-case catalogue](../../report/use-case-model.md)
- [UC05 detailed use case](../use-cases/UC05-check-in-member.md)
- [User stories and business value](../../requirements/user-stories.md)
- [Requirements and priorities](../../report/requirements-catalogue.md)
- [Rules and open questions](../../report/Rules-and-uncertainty.md)
- [Booking scenarios SC01–SC03](../../features/make-booking.feature), [extension scenario SC04](../../features/booking-extension.feature) and [check-in scenario SC05](../../features/check-in.feature)
