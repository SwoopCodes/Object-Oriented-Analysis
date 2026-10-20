# User stories

Stories give the stakeholder-value view of selected Must requirements. Gherkin IDs are added where scenarios exist.

---

### US01 – Know booking status

**Story:** As a member, I want to see whether my booking is confirmed or only being held provisionally, so that I know whether my place is secure.

| | |
| --- | --- |
| **Business value** | Members can plan around bookings they can rely on (member goal: know for sure if their spot is locked in) |
| **Related** | **FR09**, **UC01** |
| **Priority** | Must |
| **Gherkin** | **SC01** |
| **Questions / assumptions** | **CQ02** |

**Acceptance criteria:**
- AC1 A member can see the status of each of their bookings as either confirmed or provisional.
- AC2 A newly created provisional booking is shown as provisional, and a confirmed booking is shown as confirmed.
- AC3 A member cannot see the status of another organisation's bookings (**BR01**).

---

### US02 – Prevent double bookings

**Story:** As reception staff, I want conflicting bookings of the same resource to be rejected, so that two people do not turn up expecting the same desk or room.

| | |
| --- | --- |
| **Business value** | Fewer conflicting reservations, which is the main reason for replacing the spreadsheets |
| **Related** | **FR11**, **FR02**, **UC01**, **UC03** |
| **Priority** | Must |
| **Gherkin** | **SC02**, **SC04** |
| **Questions / assumptions** | **CQ08** |

**Acceptance criteria:**
- AC1 A booking for a resource at a time when it is already booked is rejected.
- AC2 The rejection tells the person making the booking that the resource is unavailable at that time.
- AC3 A booking for the same resource at a non-overlapping time is accepted.
- AC4 Moving a booking to a resource that is free for the booked time succeeds, and moving it to an occupied one is rejected.

---

### US03 – Rooms with equipment

**Story:** As the workspace manager, I want a combined room and equipment booking to be refused when the equipment is not available, so that a booked room is actually usable for the member's purpose.

| | |
| --- | --- |
| **Business value** | "A free room is not useful if the equipment the member requested is unavailable" |
| **Related** | **FR10**, **FR04**, **UC01**, **UC06** |
| **Priority** | Must |
| **Gherkin** | **SC03** |
| **Questions / assumptions** | None |

**Acceptance criteria:**
- AC1 A combined booking is refused if the equipment is reserved by someone else at the same time as the room.
- AC2 A combined booking is refused if the equipment is marked as under repair.
- AC3 The refusal states the reason.
- AC4 The same room can still be booked on its own for that time.
- AC5 A combined booking is accepted when both the room and the equipment are available.

---

### US04 – Limited resources

**Story:** As a facilities staff member, I want to log a fault and record whether a resource is fully unavailable or still usable with a limitation, so that staff and members know what can still be booked.

| | |
| --- | --- |
| **Business value** | "A fault may limit a room without making the whole room unusable" |
| **Related** | **FR06**, **UC07** |
| **Priority** | Must |
| **Gherkin** | None |
| **Questions / assumptions** | **CQ06** |

**Acceptance criteria:**
- AC1 A fault can be recorded against a room or other resource.
- AC2 The fault can be marked as making the resource fully unavailable or as leaving it partially usable.
- AC3 For a partially usable resource, the recorded limitation is shown to anyone booking it.
- AC4 A resource marked as fully unavailable cannot be booked.

---

### US05 – Recurring dates

**Story:** As an organisation administrator, I want to change or remove individual dates of a recurring booking, so that old dates do not remain in the calendar and block other people.

| | |
| --- | --- |
| **Business value** | "Our recurring booking changes during holidays, but old dates remain in the calendar" |
| **Related** | **FR12**, **FR01**, **UC04** |
| **Priority** | Must |
| **Gherkin** | None |
| **Questions / assumptions** | **CQ02** |

**Acceptance criteria:**
- AC1 An administrator can remove a single date from their organisation's recurring booking without removing the other dates.
- AC2 After a date is removed, the resource shows as available on that date.
- AC3 An administrator cannot change or remove dates of another organisation's recurring booking (**BR01**).

---

### US06 – Check-in without commercial data

**Story:** As temporary cover staff, I want to check in arriving members without seeing their commercial information, so that I can cover reception without exposing details I do not need.

| | |
| --- | --- |
| **Business value** | "I need to handle arrivals without seeing every member's commercial information" |
| **Related** | **FR07**, **BR02**, **NFR04**, **UC05** |
| **Priority** | Must |
| **Gherkin** | **SC05** |
| **Questions / assumptions** | **CQ07**, **A07** |

**Acceptance criteria:**
- AC1 Temporary cover staff can check in a member who has arrived.
- AC2 While doing so, the member's plan, allowance and charge details are not shown to them.
- AC3 A check-in takes no more than 60 seconds after a five-minute walkthrough (**A07**).
