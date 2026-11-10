# Detailed use case: UC05 Check In Member

| | |
| --- | --- |
| **Scope** | Workspace Management System |
| **Level** | User goal |
| **Primary actor** | Reception staff (also Temporary cover staff) |
| **Related** | FR05, FR07, FR13, US06, BR02, SC05 |

**Stakeholders and interests**
- **Reception staff:** to check a member in quickly and know the arrival is recorded.
- **Temporary cover staff:** to handle arrivals without seeing members' plan, allowance or charge details (BR02).
- **Arriving member:** to get checked in fast. They don't want cover staff to see their commercial details.
- **Workspace manager:** check-ins they can trust, so they know who's actually in.
- **Accounting system:** a usage record for each check-in, so charges can be worked out later (FR05).

**Preconditions**
- The staff member is logged in to the system.
- The workspace is open.

**Trigger:** A member arrives at reception.

**Minimal guarantee:** If the check-in fails or is given up, nothing is recorded. No check-in and no usage.

**Success guarantee:** The check-in is recorded with the arrival time. The usage is recorded too, so it can be passed on for charging. This includes any usage over the plan allowance (FR13).

**Main success scenario**
1. Staff member enters the member's number (`checkInMember(memberNumber)`).
2. System finds the member's booking for today and shows it to the staff member.
3. Staff member confirms the check-in.
4. System records the check-in with the arrival time.
5. System records the usage for the booking (FR05).
6. System tells the staff member the arrival is recorded.

**Extensions**
- **1a.** *(Alternative success)* Temporary cover staff are doing the check-in (BR02, FR07).
1. System doesn't show the member's plan, allowance or charge details.
2. Exactly which fields are hidden isn't decided here (CQ07). The use case goes on at step 2.
- **2a.** *(Failure)* The member number isn't found.
1. System tells the staff member the number isn't found.
2. Nothing is recorded. Staff can type the number again and the use case goes back to step 1. If they give up, it ends.
- **2b.** *(Recoverable exception)* The member has no booking for today.
1. System tells the staff member there's no booking for today.
2. Whether the member can still be checked in isn't decided here (CQ08). The use case goes on or ends depending on that answer.
- **3a.** *(Cancellation)* The staff member gives up before confirming.
1. Nothing is recorded.
2. Use case ends.

**Special requirements**
- Usage is recorded with no missing or duplicated entries (NFR02).
- Temporary cover staff can check in a member within 60 seconds after a five-minute walkthrough (NFR04, A07).

**Open issues**
- **CQ07:** which booking, membership and charge details each staff role can see (affects extension 1a).
- **CQ08:** whether a member can turn up without a booking or move to a different free desk, or if staff just put up with it (affects extension 2b).
- **CQ13 (new):** what does the system send to the Access system when a member checks in? The CA1 catalogue lists the Access system as a supporting actor. The scenario doesn't say what it gets, so there's no step for it yet.
