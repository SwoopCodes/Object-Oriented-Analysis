# Requirements

---

## Functional Requirements

| ID | Requirement | Source | MoSCoW | Verification |
| --- | --- | --- | --- | --- |
| **FR01** | The system shall not show a member the bookings or activity of any other organisation | **BR01** | Must | Test: A member of organisation A logs in and checks that none of organisation B's bookings appear in any view or search |
| **FR02** | The system shall allow reception staff to move a booking to a different resource, provided the new resource is free for the booked time | **P08**, **P01** | Must | Test: Reception staff move a desk booking to a free desk and check it updates, then try to move it to an occupied desk and check it is rejected |
| **FR03** | The system shall show reception staff and members the capacity, layout, accessibility, equipment and current availability of each room in one place | **P02** | Should | Test: Open a room as reception staff and as a member, and check all five items are shown without consulting another source |
| **FR04** | The system shall allow facilities staff to set the status of a piece of equipment (e.g. available, under repair) | **P06** | Must | Test: Facilities staff mark a projector as under repair and check it can no longer be selected on a new booking |
| **FR05** | The system shall record usage information for every booking and check-in so that it can be passed on for charging | **P11**, **CQ09** | Must | Test: The workspace manager completes a booking and a check-in and checks that both appear in the usage record. (Whether the system also prices them is held open by CQ09.) |
| **FR06** | The system shall allow facilities staff to log a fault against a room or resource, mark it as fully unavailable or partially usable, and record the limitation | **P07**, **CQ06** | Must | Test: Log a fault that limits but does not close a room and check that the limitation is shown when someone books it |
| **FR07** | The system shall hide members' commercial information from temporary cover staff while still letting them handle arrivals | **BR02**, **CQ07** | Must | Test: Log in as temporary cover staff, check in a member and check that plan, allowance and charge details are not shown. (The exact hidden fields depend on CQ07.) |
| **FR08** | The system shall tell members when a booking is relocated, shortened or cancelled because of a closure, using consistent wording for the notification| **P10** | Should | Test: Close a room with three bookings and check that each booking holder receives a message stating the change |
| **FR09** | The system shall show members whether a booking is confirmed or only being held provisionally | **P05**, **CQ02** | Must | Test: A member creates a provisional booking and a confirmed booking and checks that each displays its correct status |
| **FR10** | The system shall refuse a combined room and equipment booking if the equipment is not available at the same time as the room, while leaving the room bookable on its own | **P06** | Must | Test: A member attempts to book a free room with equipment that is reserved elsewhere and the combined booking is refused with a reason |
| **FR11** | The system shall prevent conflicting reservations of the same resource for overlapping times | **P01** | Must | Test: Two members attempt to book the same desk for overlapping times and the second booking should be rejected |
| **FR12** | The system shall allow organisation administrators to change or remove individual dates of a recurring booking so old dates do not remain in the calendar | **P09** | Must | Test: Organisation administrator removes a holiday date from a recurring booking and checks the resource shows as available on that date |
| **FR13** | The system shall record usage of a resource that goes beyond a member's plan allowance | **P03**, **FR05** | Must | Test: Create a test member with a plan, make bookings and uses that exceed the plan limits and check that the excess usage appears in the usage record |

---

## Non-Functional Requirements

| ID | Requirement | Source | MoSCoW | Verification |
| --- | --- | --- | --- | --- |
| **NFR01** | The system shall keep creating, viewing and changing bookings at the workspace during an internet outage, until the connection returns, without losing any booking | **Constraints (Purpose-scope-boundary.md)** | Must | Test: Disconnect the internet, create a booking as reception staff, view and change it, reconnect and restart the system. Pass if the booking is still present and matches what was entered |
| **NFR02** | The system shall record usage information with no missing or duplicated entries, and with totals that match the source events (zero errors, see A05) | **P11**, **A03**, **A05**, **FR05** | Must | Test: Set up a known set of chargeable events, let the system record them and compare the record against the known set. Pass if no event is missing or duplicated and the totals match |
| **NFR03** | The system shall show the availability of a resource within 2 seconds for at least 95% of requests (see A06) | **P01**, **P02**, **A06** | Should | Test: Request the availability of 100 resources during a normal working load and time each response. Pass if at least 95 return within 2 seconds |
| **NFR04** | The system shall let temporary cover staff check in a member within 60 seconds after a five-minute walkthrough (see A07) | **Temporary cover staff (stakeholders.md)**, **A07** | Should | Test: Five people unfamiliar with the system receive the walkthrough, then each checks in a known member while being timed. Pass if all five finish within 60 seconds |
