# DR-004 Result types and error codes

| Field | Value |
|-------|-------|
| ID | DR-004 |
| Date | 24/11/2026 |
| Status | Proposed |
| Related card | T20 (#61) |
| Brief refs | Section 7, Section 9 |

## Context

We need one agreed way for the controller operations to say if they worked or failed. If everyone does it differently, the screens, tests and sequence diagrams won't match.

## Decision

As a group, we decided:

1. checkAvailability, makeBooking and checkInMember each return a result (AvailabilityResult, BookingResult, CheckInResult) with success, errorCode and message.
2. When something fails, success is false and errorCode holds an UPPER_CASE code from architecture.md section 4.
3. If an operation fails, nothing is saved.
4. Storage goes through IPersistenceFacade, and outside systems go through IAccessSystemAdapter and IAccountingAdapter. ServicesFactory gives these out.

## Rationale

Every screen can show a failure the same way, and tests can check for an exact code. The interfaces mean storage and outside systems can be swapped for fakes in tests without changing the domain classes.

## Alternatives considered

| Option | Reason not picked |
|--------|-------------------|
| Throw exceptions | Failures like a booking clash are normal, not crashes |
| Return null | Doesn't say what went wrong |
| One Result class for everything | Each operation returns different data when it works |

## Consequences

Every controller operation gets a return type on the class diagram. A new failure needs a new code agreed by the group. The sequence diagrams will need a put call to save bookings.

## Approved by

| Member | Date |
|--------|------|
| Eron | 25/11/2026 |
| Patryk | 25/11/2026|
| Albin | 25/11/2026 |
| Elisha | 25/11/2026 |