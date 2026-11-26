# DR-003 Baseline changes

| Field | Value |
|-------|-------|
| ID | DR-003 |
| Date | 26/11/2026 |
| Status | Proposed |
| Related card | T17 (#58) |
| Brief refs | §7 |

## Context

The CA2 baseline is the agreed starting point for our CA2 design. This record lists the scope decisions and the gaps we still need to fix.

## Decision

The CA2 baseline is the work tagged `ca2-submission`.

**Scope decisions and open gaps**

- **Accepted:** UC01 Make Booking and UC05 Check In Member.
- **Deferred (not rejected):** UC02, UC03, UC04, UC06, UC07, UC08 and UC09.
- **Gap, still open:** FR05 is missing from UC01's Related row.
- **Gap, still open:** CQ13 is cited but not defined in Rules-and-uncertainty.md.

The tag will be `ca2-submission`. We will record its date after we push it.

## Rationale

Each change traces to [design-scope.md](../report/design-scope.md). That file gives a reason for each deferred use case.

## Consequences

- FR05 and CQ13 stay open until the group fixes them.
- The tag must be pushed before anyone links to it.

## Alternatives considered

| Option | Reason not picked |
|--------|-------------------|
| Keep all nine use cases in CA2 | The design scope would be too wide. [design-scope.md](../report/design-scope.md) keeps the design focused on booking and arrival |

## Approved by

| Member | Date |
|--------|------|
| Patryk Graszk | |
| Elisha Seruma | |
| Eron Baftjari | |
| Albin Kastrati | |
