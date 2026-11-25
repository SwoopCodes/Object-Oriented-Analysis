# DR-002 Scenario selection

| Field | Value |
|-------|-------|
| ID | DR-002 |
| Date | 04/11/2026 |
| Status | Approved by Lecturer |
| Related card | TBC |
| Brief refs | Section 2, Section 7 |

## Context

Each of the four members worked on a different scenario in CA1. For CA2 the group has to pick one of them and design it together. We scored each scenario in a suitability matrix to help us choose. The full record is in `ca2-design/report/scenario-selection.md`.

## Decision

We picked Scenario 13: Small Business Shared Workspace Service (Tralee Enterprise Workspace). This was Patryk's CA1 scenario.

## Rationale

The actors and goals are clear, and the CA1 work already lists 9 use cases. The booking rules give plenty of behaviour to design, such as confirmed and provisional bookings, overlaps, and rooms that need equipment. It has clear objects, like Member, Booking and Resource, that turn straight into classes.

The work also splits cleanly into two slices: UC01 Make Booking and UC05 Check In Member. Many of the rules are already written as test scenarios in `features/` (SC01 to SC05).

## Alternatives considered

| Option | Reason not picked |
|--------|-------------------|
| Scenario 16: Engineering Workshop Job Coordination Service (Eron) | [Eron to add] |
| Scenario 12: Holiday Cottage Turnaround Service (Albin) | [Albin to add] |
| Scenario 15: Business Training and Mentoring Service (Elisha) | Proposed rationale: it offers rich behaviour, but spans courses, mentoring, reviews and partner sharing, with eligibility and matching policies still open. Scenario 13 already has a developed analysis and concrete booking examples that support the selected design. |

## Consequences

All CA2 design work is based on the Scenario 13 CA1 analysis in `report/`. Changes from that analysis are recorded in DR-003 and in the change log in `ca2-design/report/scenario-selection.md`.

## Lecturer reply

**Date sent:** 04/11/2026
**Date of reply:** 04/11/2026

Group and scenario has been approved by Andrew Shields

## Approved by

| Member | Date |
|--------|------|
| Eron | DD/MM/YYYY |
| Patryk | MM/MM/YYYY |
| Albin | DD/MM/YYYY |
| Elisha | DD/MM/YYYY |
