# Use-case model

**System boundary:** Workspace Management System

## Use-case catalogue

| ID | Use case | Primary actor | Supporting actor | Related FRs | Related stories |
| --- | --- | --- | --- | --- | --- |
| **UC01** | Make Booking | Member | – | **FR01**, **FR09**, **FR10**, **FR11** | **US01**, **US02**, **US03** |
| **UC02** | View Room Information | Member, Reception staff | – | **FR01**, **FR03** | – |
| **UC03** | Move Booking | Reception staff | – | **FR02**, **FR11** | **US02** |
| **UC04** | Change Recurring Booking Dates | Organisation administrator | – | **FR01**, **FR12** | **US05** |
| **UC05** | Check In Member | Reception staff, Temporary cover staff | Access system | **FR05**, **FR07**, **FR13** | **US06** |
| **UC06** | Set Equipment Status | Facilities staff | – | **FR04** | **US03** |
| **UC07** | Log Fault | Facilities staff | – | **FR06** | **US04** |
| **UC08** | Close Resource | Workspace manager | – | **FR08** | – |
| **UC09** | Send Usage Records | Workspace manager | Accounting system | **FR05**, **FR13** | – |

---

## Detailed use case: UC01 Make Booking

| | |
| --- | --- |
| **Scope** | Workspace Management System |
| **Level** | User goal |
| **Primary actor** | Member |
| **Related** | FR01, FR09, FR10, FR11, FR13, US01, US02, US03, BR01, BR03, BR04 |

**Stakeholders and interests**
- **Member:** to know straight away whether the booking worked and whether it is confirmed or only held.
- **Other members:** not to lose a desk or room they already booked to a double booking, and not to see anyone else's activity (BR01).
- **Workspace manager:** rooms booked with equipment that can actually be used, and bookings they can trust when checking occupancy.
- **Facilities staff:** equipment that is under repair or faulty is not handed out.
- **Accounting system:** a usage record for each booking, so charges can be worked out later.

**Preconditions**
- The system knows who the member is.
- The member's membership is active (what happens when it is suspended or ending is open, see CQ03).

**Trigger:** The member needs a desk, room or piece of equipment for a certain time.

**Minimal guarantee:** If the booking fails or is given up, nothing is reserved, no equipment is allocated and the existing bookings of other members are unchanged.

**Success guarantee:** The booking is recorded for the member's resource(s) and period, with its status (confirmed or provisional), and the usage is recorded so it can be passed on for charging, including any usage over the plan allowance.

**Main success scenario**
1. Member says which resource(s) they want (desk, room, equipment or a combination) and for what period.
2. System shows whether the resource(s) are available for that period.
3. Member chooses the type of booking (single, recurring or provisional) and asks to book it.
4. System checks that no other booking overlaps the resource for that period.
5. System checks that any equipment requested is available for the same period.
6. System records the booking with its status and records the usage, marking any part that goes beyond the member's plan allowance.
7. System tells the member the booking is recorded and whether it is confirmed or provisional.

**Extensions**
- **2a.** *(Recoverable exception)* The resource has a recorded fault that limits it.
1. System shows the member the limitation that was recorded.
2. Whether a limited resource can still be booked is not decided here (CQ06). Where it can, the use case resumes at step 3; where it cannot, the member picks something else and the use case resumes at step 1.
- **2b.** *(Recoverable exception)* The resource needs additional orientation (BR04).
1. System tells the member the resource needs orientation.
2. Whether the member may still book it is not decided here (CQ12). The use case continues or returns to step 1 depending on that answer.
- **3a.** *(Cancellation)* The member gives up before asking to book.
1. Nothing is recorded.
2. Use case ends.
- **4a.** *(Recoverable exception)* Another booking overlaps the resource for that period.
1. System refuses the booking and tells the member the resource is not available then.
2. Member picks another time or resource, and the use case resumes at step 1. If they give up, the use case ends with nothing recorded.
- **4b.** *(Failure)* The member is extending an existing booking and the extra time runs into a later confirmed booking (BR03).
1. System leaves the later booking unchanged and refuses the extra time.
2. The member's original booking stays as it was. Use case ends.
- **5a.** *(Alternative success)* The room is free but the equipment is not available at that time (FR10).
1. System refuses the combined booking and gives the reason.
2. The room stays bookable on its own. If the member wants the room alone, the use case resumes at step 6 for the room only. If they want other equipment or another time, it resumes at step 1. If they give up, it ends with nothing recorded.

**Special requirements**
- Availability is shown within 2 seconds for at least 95% of requests (NFR03, A06).
- Usage is recorded with no missing or duplicated entries (NFR02).

**Open issues**
- **CQ01:** which plan rules can be overridden and who approves it (affects step 6 when usage goes over the plan allowance).
- **CQ02:** how long a provisional or recurring booking holds the resource before it is confirmed or dropped (affects step 3 and step 7).
- **CQ03:** what happens to bookings when a membership is suspended or ending (affects the second precondition).
- **CQ06:** when a partly usable resource can still be booked (affects extension 2a).
- **CQ09:** whether the system works out the charge or only records usage (affects step 6).
- **CQ12:** whether a member without the required orientation may book that resource (affects extension 2b).
