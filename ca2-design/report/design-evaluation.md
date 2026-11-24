# Design evaluation

## 1 Cohesion

The [class diagram](../diagrams/class-diagram.puml) declares these operation counts.

| Class | Operations |
|---|---|
| Member | 4 |
| Booking | 3 |
| BookingController, Workspace, Membership, Resource | 2 each |
| CheckInController, Plan, CheckIn | 1 each |
| BookingDate, Room, Fault, UsageRecord | 0 |

The [CRC cards](../crc/crc-UC05.md) keep arrival data with CheckIn and booking creation with Member. Controllers coordinate work using other objects' data. Workspace performs two related lookup tasks. Member has the most operations, but delegates membership status and allowance decisions.

## 2 Coupling

Counts below use directed relationships in the class diagram. The bidirectional Member–Booking association counts once each way. Room's generalisation points towards Resource.

| Class | Incoming | Outgoing |
|---|---|---|
| BookingController, CheckInController | 0 | 1 |
| Workspace, Member | 2 | 2 |
| Membership, CheckIn | 1 | 1 |
| Plan, BookingDate, Fault | 1 | 0 |
| Booking | 1 | 5 |
| Resource | 3 | 1 |
| Room | 0 | 1 |
| UsageRecord | 2 | 0 |

Booking has the most outgoing connections. However, seq-makeBooking.puml also calls Member and Resource from BookingController without corresponding navigable links in the class diagram. Structural counts therefore understate interaction dependencies. Recheck this section after T20 defines packages and interfaces.

## 3 Controller choice

The [UC05 GRASP rationale](../grasp/grasp-UC05.md) separates booking before arrival from check-in on arrival. Each controller stays focused on its use case. BookingController handling both availability and booking is reasonable because these operations serve the same booking goal.

## 4 Object validity

[C01](../contracts/makeBooking.md) requires a Booking linked to Member and Resources, a BookingDate with date and times, status and an associated UsageRecord with excess usage. The [booking sequence](../diagrams/seq-makeBooking.puml) shows creation but leaves association and status initialisation implicit. UsageRecord.create() receives no excess value. A failure between creations could leave incomplete objects because rollback is unspecified. SC02's refusal and SC04's extension guarantee need preservation; the latter has no sequence branch. Issue #68 tracks these booking gaps.

[C02](../contracts/checkInMember.md) requires CheckIn, arrival time, its Booking link and an associated UsageRecord. The [check-in sequence](../diagrams/seq-checkInMember.puml) shows creation but leaves links implicit and omits the unknown-member refusal. Partial failure and repeated check-in could leave missing or duplicate usage records.

## 5 Assumptions

- **CQ01** Allowance comparison uses Plan; override handling remains undecided.
- **CQ02** Confirmed and provisional statuses exist; hold expiry remains unspecified.
- **CQ03** C01 assumes active membership. The booking sequence lacks a false-status branch.
- **CQ06** Availability reports faults; permission to book limited resources remains open.
- **CQ07** BR02 restricts commercial information; exact hidden fields remain open.
- **CQ08** UC05's success path assumes today's booking exists; walk-in handling remains open.
- **CQ09** Usage is recorded; pricing ownership remains undecided.
- **CQ12** UC01 requires orientation information, but the sequences omit it.
- **CQ13** Access-system exchange remains undefined in UC05.

## 6 Risks

The [risk register](../../report/Rules-and-uncertainty.md) identifies R01 access-data failure, R02 incompatible accounting data, R03 inaccurate starting records, R04 unresolved policies and R05 unconfirmed performance/usability targets. These affect integration, availability and usage accuracy. C01/C02 also need failure and duplicate-handling decisions to satisfy NFR02.

## 7 Rejected alternatives

The [GRASP records](../grasp/grasp-UC01.md) reject Workspace receiving every event, controller-owned member lists, Booking locating unrelated resources and controller-owned availability/status rules. They also reject controller-created Bookings, Member-created BookingDates and CheckIn creating UC01 usage before arrival.

UC05 rejects one controller for booking and check-in, Workspace searching every booking, controller-created CheckIns, Booking owning arrival time and Booking creating arrival usage by querying CheckIn. The final UC01 allowance-rationale row is truncated and needs completion.

## 8 Limitations

The models cover UC01 and UC05. Screens, persistence, offline recovery and external integrations remain unspecified. BR02 is noted but SC05's privacy outcome needs implementation evidence. T20 and review corrections remain pending.
