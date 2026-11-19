# DR-003 Baseline changes

| Field | Value |
|-------|-------|
| ID | DR-003 |
| Date | 19/11/2026 |
| Status | Proposed |
| Related card | TBC |
| Brief refs | Reconciliation and expansion record, Revised analysis baseline |

## Context

The CA2 design is built on our CA1 analysis of Scenario 13, which is in `report/`. While designing UC01 and UC05 we kept some CA1 items, changed some, and left some out. We need one agreed record of these changes so the CA2 design and the CA1 analysis do not disagree.

## Decision

We accept these changes as the new baseline. The IDs match the change log in `ca2-design/report/scenario-selection.md`.

- **CL03:** UC01 is split into two system events, `checkAvailability` and `makeBooking`.
- **CL04:** UC01 extensions 4a and 5a are merged into one "not free" branch in the sequence diagram.
- **CL06:** UC01 extension 2b (orientation) is left out of this slice until CQ12 is answered.
- **CL07:** UC05 Check In Member is now a full use case.
- **CL08:** CQ13 is added: what the system sends to the Access system at check-in.
- **CL10:** the `Visitor` class is left out of the class diagram until CQ10 is answered.
- **CL11:** the link between Member and Booking now works both ways.
- **CL12:** three design classes are added: `BookingController`, `CheckInController` and `Workspace`.

All other CA1 items carry over with no change.

## Rationale

Each change comes from designing UC01 and UC05 in detail. The CA1 domain model held up well, so we kept its classes and added operations. Where a rule is still unclear, we left it out instead of guessing, and kept the open question.

## Alternatives considered

| Option | Reason not picked |
|--------|-------------------|
| Keep the CA1 analysis exactly as it was | The design needs things CA1 did not have, like system events, controllers and the full UC05 use case |
| Redo the domain model from scratch | Most CA1 classes still fit. Starting again would cost time and break the links to the CA1 requirements |

## Consequences

The CA2 files in `ca2-design/` are now the current version of the design. The CA1 files in `report/` stay as they were, so the change log is the place to see what changed. Open questions CQ06, CQ08, CQ10, CQ12 and CQ13 still need answers before those parts can be designed.

## Lecturer reply

**Date sent:** Not sent yet
**Date of reply:** -

## Approved by

| Member | Date |
|--------|------|
| Eron | DD/MM/YYYY |
| Patryk | DD/MM/YYYY |
| Albin | DD/MM/YYYY |
| Elisha | DD/MM/YYYY |
