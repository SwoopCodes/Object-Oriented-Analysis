# Scenario selection and baseline record

## 1 Candidate scenarios

Each member worked on a different scenario in CA1. The table lists all four.

| Member | CA1 scenario | Main analysis decisions (one line) |
|---|---|---|
| Patryk | Scenario 13: Small Business Shared Workspace Service (Tralee Enterprise Workspace) | 9 use cases, with UC01 Make Booking and UC05 Check In Member written in full. An 11-class domain model where Room is a kind of Resource and BookingDate is its own class. |
| Eron | Scenario 16: Engineering Workshop Job Coordination Service (Munster Engineering Workshop) | [member to add] |
| Albin | Scenario 12: Holiday Cottage Turnaround Service (Dingle Peninsula Property Care) | [member to add] |
| Elisha | Scenario 15: Business Training and Mentoring Service (Kerry Enterprise Development Network) | [member to add] |

## 2 Suitability matrix

Each member scores their own scenario from 1 (poor) to 5 (very good) in each column. The columns mean:

- **Scope:** the problem is the right size for the CA2 work.
- **Behavioural richness:** there are enough rules, states and exceptions to model.
- **OO potential:** the scenario has clear objects that can become classes.
- **Sliceability:** we can pick a few use cases and design them end to end.
- **Testability:** the rules can be written as clear pass or fail tests.
- **Comparability:** the scenario is easy to compare with the other options.

| Scenario | Scope | Behavioural richness | OO potential | Sliceability | Testability | Comparability | Total |
|---|---|---|---|---|---|---|---|
| 13 Small Business Shared Workspace (Patryk) | 4 | 5 | 5 | 5 | 4 | 4 | 27 |
| 16 Engineering Workshop Job Coordination (Eron) | | | | | | | |
| 12 Holiday Cottage Turnaround (Albin) | | | | | | | |
| 15 Business Training and Mentoring (Elisha) | | | | | | | |

Scores agreed on 04/11/2026.

*Note: the Scenario 13 scores are a suggestion. The group still needs to agree them. Each member adds the scores for their own scenario.*

## 3 Selected scenario and reason

We picked Scenario 13 because its actors and goals are clear, and our CA1 work already lists 9 use cases for it. Its booking rules give plenty of behaviour to design, such as confirmed and provisional bookings, overlaps, and rooms that need equipment. It also has clear objects, like Member, Booking and Resource, that turn straight into classes. The work splits cleanly into two slices, UC01 Make Booking and UC05 Check In Member. Many of its rules are already written as test scenarios in `features/` (SC01 to SC05).

## 4 Approval

| Item | Value |
|---|---|
| Date sent | 04/11/2026 |
| Date of reply | 04/11/2026 |
| Reply | Group and scenario has been approved by Andrew Shields |

Source: `ca2-design/decisions/DR-001-board-tool.md`.

## 5 Expansion items

None given (04/11/2026).

## 6 Change log against CA1

We opened each CA1 file in `report/` (and the CA1 diagrams it links to) and compared it with the matching CA2 file in `ca2-design/`. Each row is one difference.

- **accepted:** we kept the CA1 item and built on it.
- **rejected:** we left the CA1 item out of the CA2 design.
- **merged:** we joined two CA1 items into one.
- **changed:** we kept the CA1 item but changed it.

| ID | CA1 item | Change | Reason | Where it is now |
|---|---|---|---|---|
| CL01 | Use-case diagram (`diagrams/use-case-model.puml`) | changed | We added the UC IDs to each use case. We coloured UC01 and UC05 and added a note that CA2 covers them. | `ca2-design/diagrams/use-case-diagram.puml` |
| CL02 | UC01 Make Booking, full use case (`report/use-case-model.md`) | accepted | It was already detailed enough to design from. | `ca2-design/diagrams/ssd-UC01.puml`, `ca2-design/contracts/makeBooking.md`, `ca2-design/diagrams/seq-makeBooking.puml` |
| CL03 | UC01 step 2 and steps 3–7 | changed | We split them into two system events: `checkAvailability` (step 2) and `makeBooking` (steps 3–7). | `ca2-design/diagrams/ssd-UC01.puml` |
| CL04 | UC01 extensions 4a (overlap) and 5a (equipment not free) | merged | Both end the same way: the booking is refused. The sequence diagram shows them as one "not free" branch. | `ca2-design/diagrams/seq-makeBooking.puml` |
| CL05 | UC01 extension 4b (extension runs into a later booking, BR03) | accepted | The contract lists it as a controlled failure. | `ca2-design/contracts/makeBooking.md` |
| CL06 | UC01 extension 2b (resource needs orientation, CQ12) | rejected | We left it out of this slice because CQ12 is still open. It is not in the SSD, contract or sequence diagram. | Only in `report/use-case-model.md` |
| CL07 | UC05 Check In Member, one row in the use-case catalogue | changed | We wrote it out as a full use case so we could design it. | `ca2-design/use-cases/UC05-check-in-member.md`, `ca2-design/diagrams/ssd-UC05.puml` |
| CL08 | Clarification questions CQ01–CQ12 (`report/Rules-and-uncertainty.md`) | changed | We added CQ13: what the system sends to the Access system at check-in. The scenario does not say. | `ca2-design/use-cases/UC05-check-in-member.md` |
| CL09 | Domain model classes: Member, Membership, Plan, Booking, BookingDate, Resource, Room, Fault, CheckIn, UsageRecord (`report/domain-model.md`) | accepted | We kept the same classes and attributes and added operations to them. | `ca2-design/diagrams/class-diagram.puml`, `ca2-design/crc/crc-UCO1.md` |
| CL10 | Domain model `Visitor` class | rejected | It is not needed for UC01 or UC05. CQ10 (is a visitor the same as a guest?) is still open. | Not in `ca2-design/diagrams/class-diagram.puml` |
| CL11 | "Member makes Booking" association | changed | It is now two-way. A Member creates a Booking, and a Booking calls back to its Member to check the plan allowance. | `ca2-design/diagrams/class-diagram.puml`, `ca2-design/diagrams/seq-makeBooking.puml` |
| CL12 | System boundary "Workspace Management System" | changed | We added three design classes: `BookingController` and `CheckInController` receive the system events, and `Workspace` finds members and resources. | `ca2-design/diagrams/class-diagram.puml` |
| CL13 | "Occupancy and availability are worked out, not stored" | accepted | Resource works out if it is free with `isAvailable()`. Nothing stores availability. | `ca2-design/diagrams/class-diagram.puml` |
| CL14 | "A check-in may have no booking" (CQ08) | accepted | We kept Booking 0..1 to CheckIn. UC05 extension 2b covers a member with no booking. | `ca2-design/diagrams/class-diagram.puml`, `ca2-design/use-cases/UC05-check-in-member.md` |
| CL15 | AI use log (`decisions/ai-use-log.md`) | changed | Each member now keeps their own log. | `ca2-design/docs/ai/` |

These CA1 files have no matching CA2 file yet, so they carry over with no change: `scenario-interpretations.md`, `stakeholders.md`, `requirements-catalogue.md`, `traceability.md`, `purpose-scope-boundary.md`, `candidate-concepts.md`, `reflection.md`, and `Rules-and-uncertainty.md` (apart from CQ13 in CL08).
