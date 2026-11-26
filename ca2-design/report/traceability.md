# CA2 traceability matrix

| Operation | Use case | Backlog items | Stories | Rules and requirements | Gherkin | SSD | Contract | CRC / GRASP | Sequence diagram | DCD classes |
|---|---|---|---|---|---|---|---|---|---|---|
| checkAvailability | UC01 steps 1-2 | T02 (#30), T03 (#31), T07 (#35), T09 (#37), T11 (#39), T14 (#42) | missing | FR06, FR11, NFR03, CQ06 | missing | ssd-UC01 | missing | crc-UCO1, grasp-UC01 | seq-checkAvailability | BookingController, Workspace, Resource |
| makeBooking | UC01 steps 3-7 | T02 (#30), T03 (#31), T05 (#33), T07 (#35), T09 (#37), T12 (#40), T14 (#42) | US01, US02, US03 | FR05, FR09, FR10, FR11, FR13, NFR02, BR03, CQ01, CQ02, CQ09 | SC01, SC02, SC03, SC04 | ssd-UC01 | C01 | crc-UCO1, grasp-UC01 | seq-makeBooking | BookingController, Workspace, Member, Membership, Plan, Resource, Booking, BookingDate, UsageRecord |
| checkInMember | UC05 | T01 (#29), T02 (#30), T04 (#32), T06 (#34), T08 (#36), T10 (#38), T13 (#41), T14 (#42) | US06 | FR05, FR07, NFR04, BR02, CQ07, CQ08 | SC05 | ssd-UC05 | C02 | crc-UC05, grasp-UC05 | seq-checkInMember | CheckInController, Workspace, Member, Booking, CheckIn, UsageRecord |

## Gaps found

### Missing cells

| Gap | File | Owner |
|---|---|---|
| checkAvailability has no user story | requirements/user-stories.md | Patryk |
| checkAvailability has no Gherkin scenario, including the fault path 2a (left open until CQ06, RV-01 row 4) | features/make-booking.feature | Patryk |
| checkAvailability has no contract (RV-01 cross-model says it doesn't need one, as it changes nothing) | ca2-design/contracts/ | Elisha |

### Names that don't match between files

| Mismatch | Files | Owner |
|---|---|---|
| RV-01 row 6 says crc-UCO1.md was renamed to crc-UC01.md, but master still has crc-UCO1.md (letter O) | ca2-design/crc/crc-UCO1.md | Eron |
| seq-makeBooking has BookingController call Booking.recordUsage(), but crc-UCO1 doesn't list Booking as a BookingController collaborator | crc-UCO1.md | Eron |
| seq-makeBooking has BookingController call Booking.recordUsage(), but the grasp-UC01 coupling paragraph only lists Workspace, Member and Resource | grasp-UC01.md | Albin |
| grasp-UC01 has a row for checking the membership is active, but no sequence diagram calls hasActiveMembership() since RV-01 row 2 made it a C01 precondition | grasp-UC01.md | Albin |
| The class diagram says the Access system link comes "after CQ13", but Rules-and-uncertainty.md has no CQ13 | class-diagram.puml, report/Rules-and-uncertainty.md | Eron |
| ssd-UC05 and C02 have a "member number not found" path (2a), but seq-checkInMember doesn't (recorded as a known gap in RV-02 row 1) | seq-checkInMember.puml | Albin |# CA2 traceability matrix
