# Contract C02: checkInMember

| Part | Content |
|---|---|
| Operation | checkInMember(memberNumber) |
| Cross references | UC05, SC05, FR05, FR07, BR02 |
| Preconditions | Reception staff or temporary cover staff are logged in to the system |
| Postconditions | A CheckIn c was created<br>c.arrivalTime became the current time<br>c was associated with the Member's Booking for today<br>A UsageRecord u was created (FR05)<br>u was associated with c |
| Controlled failures | Member number not found: nothing was created, and staff were told the member number was not found<br>No booking for today: not decided, see CQ08 |
| Open questions | CQ07 - Which specific booking, membership, and charge information is visible to each individual staff role?<br>CQ08 - Is arriving without a booking or moving to a different free desk allowed, or just tolerated by staff?<br>R01 (risk) - the access system may not supply check-in information, so nothing is sent to or received from it here |

BR02 (temporary cover staff don't see commercial details) is about what is shown on screen, not a change to domain objects, so it isn't a postcondition.