# Candidate-concept analysis

## Candidate terms

| Term | Classification | Evidence | Decision | Reason |
| --- | --- | --- | --- | --- |
| Member | Class | P03, FR01, FR07, UC01, BR01, SC01 | Keep | Has identity (M-104), information, relationships and a lifecycle; the business's own word for a person with a membership |
| Customer | Class (synonym) | Organisation section of scenario | Merge into Member | Generic scenario word; visitors are covered separately, so "Member" is the one agreed term |
| Individual | Attribute/value | Members section | Convert to attribute of Member | Describes whether a member stands alone or is linked to an organisation; not a thing in itself |
| Organisation | Class | P09, FR01, FR12, UC04, BR01, CQ11 | Keep | Members link to it, BR01 hides its activity, and organisation administrators manage its bookings |
| Plan | Class | P03, FR13, UC01, CQ01 | Keep | Has information (desk hours, meeting-room allowance, access times, guest privileges, special equipment) shared by many members |
| Membership | Class | P03, FR13, UC01 step 6, SC01, CQ03, CQ11 | Keep | Separate from Plan: a plan is the package, a membership is one member's holding with a status and a lifecycle. Two concepts, not one |
| Plan exception | Class candidate | P03, CQ01 | Merge into Membership | Exceptions are agreed per member and not documented today; they belong to the membership until CQ01 says who approves them |
| Membership status (active, suspended, awaiting renewal, ending) | Attribute/value | scenario Members, UC01 precondition, SC01, CQ03 | Convert to attribute of Membership | A state of the membership, not a thing with its own identity |
| Allowance / desk hours / meeting room allowance | Attribute/value | scenario Members, FR13, UC01 step 6 | Convert to attribute of Plan | Limits a plan sets; excess over them is what gets recorded (FR13) |
| Access times, guest privileges, special equipment | Attribute/value | scenario Members | Convert to attribute of Plan | Further plan terms; no identity or lifecycle of their own |
| Induction | Operation/event | scenario Members | Remove | Onboarding step; no FR, UC or BR needs the business to remember it, so out of the current scope |
| Orientation | Class | BR04, UC01 ext. 2b, CQ12 | Keep | The scenario says certain rooms or equipment require it before use (BR04). It may be better modelled as a link between a member and a resource (this member has done it for that resource), which the domain model decides. Who records it and whether it blocks booking are open (CQ12), not decided here |
| Visitor | Class | P04, BR05, scenario Charges section (visitor access), stakeholders.md, CQ04, CQ10 | Keep | Has information, a limited lifecycle and must never see member details. Used as the working term; whether visitor and guest are the same is open (CQ10) and who approves them is open (CQ04) |
| Guest | Class (synonym?) | P04, BR05, A01, CQ10 | Merge into Visitor (provisional) | Treated as one term only so the model can progress; CQ10 may split it (visitor books, guest accompanies a member), which would add a relationship to Member |
| Resource | Class | FR03, FR04, FR06, FR11, UC01, SC02 | Keep | The thing a booking covers; conflicts, faults and status all apply to it regardless of kind |
| Desk | Class | P08, FR02, SC02 | Merge into Resource | A kind of resource; same booking and conflict rules |
| Room | Class | FR03, FR10, UC01, SC01 | Keep | A kind of resource that has capacity, layout and accessibility, which a desk or projector does not. This is the evidence for the is-a test in the domain model, where the generalisation is confirmed |
| Equipment | Class | P06, FR04, FR10, SC03 | Merge into Resource | A kind of resource that can also be booked with a room (FR10); it has a status rather than room facts, so it is merged into Resource with only that status |
| Capacity, layout, accessibility | Attribute/value | FR03, scenario Resources | Convert to attribute of Room | Descriptive facts about a room only, so they are not attributes of every resource |
| Equipment status (available, under repair) | Attribute/value | FR04, P06, US03 | Convert to attribute of Resource | A state of a resource, set by facilities staff (FR04). I treat "under repair" as the resulting state when a fault (FR06) makes the resource unavailable, so the Fault is the record of what went wrong and the status is its effect. Whether staff can set it without a fault is not stated |
| Booking | Class | P01, FR09, FR11, UC01, SC01–SC04 | Keep | Core transaction: has a period, a status and a lifecycle, and links member and resources |
| Reservation | Class (synonym) | P01, P05 | Merge into Booking | Same thing as booking; "Booking" is used in requirements and use cases |
| Booking status (confirmed, provisional, cancelled) | Attribute/value | FR08, FR09, P05, SC01, CQ02 | Convert to attribute of Booking | A state the booking sits in. Provisional is listed as a type in the scenario but FR09 treats it as status; flagged. Hold time is open (CQ02) |
| Relocated / shortened | Operation/event | P10, FR08, scenario Daily operations | Remove | Things that happen to a booking because of a closure, not states it sits in; they are covered by Closure and the booking's period |
| Single / recurring | Attribute/value | scenario Resources, UC01 step 3, FR12 | Convert to attribute of Booking | Pattern of a booking |
| Date / time / period | Attribute/value | UC01 step 1, SC01 | Convert to attribute of Booking | Values, not things |
| Recurring date (occurrence) | Class | P09, FR12, UC04, US05 | Keep as Booking date | FR12 changes or removes one date while the rest of the recurring booking stays, so a date has its own state and history. Could be argued as part of Booking; the domain model confirms |
| No-show | Attribute/value (outcome of a booking) | P08 context, scenario Information views, CQ05 | Convert to attribute of Booking | Outcome of a booking with no arrival; effect on limits open (CQ05) |
| Check-in (arrival) | Class | P08, FR05, UC05, SC05, CQ08 | Keep | Transaction with a date/time that the business must remember (occupancy, usage). Unexpected or later-recorded arrivals are the same concept; whether tolerated or allowed is open (CQ08) |
| Fault | Class | P07, FR06, UC07, US04, CQ06 | Keep | Has a date, a cause, an effect (fully unavailable or partly usable, with limitation) and a lifecycle |
| Repair / maintenance | Operation/event | P06, scenario Daily operations | Merge into Fault | The handling of a fault, not a separate thing the system must remember |
| Closure | Class | P10, FR08, UC08 | Keep | Has a period, a scope (part or all of site) and a reason, and causes bookings to be relocated, shortened or cancelled |
| Usage record | Class | P11, FR05, FR13, NFR02, UC09, SC01 | Keep | Something the business must remember for charging; needs identity and no missing or duplicate entries |
| Charge / excess usage | Class candidate | scenario Charges, FR13, CQ09 | Merge into Usage record | Whether the system calculates charges at all is open (CQ09); until settled it only records usage, with excess marked |
| Invoice | Out of scope | purpose-scope-boundary.md | Remove | Invoicing is done by the external accounting system |
| Access system | Actor | stakeholders.md, UC05, R01 | Remove | External supporting actor, outside the boundary |
| Accounting system | Actor | stakeholders.md, UC09, R02 | Remove | External supporting actor, outside the boundary |
| Reception staff, Facilities staff, Temporary cover staff, Workspace manager, Organisation administrator | Actor | stakeholders.md, UC01–UC09 | Remove | Roles that use the system; no FR or UC requires the business to remember anything about them as people. Their view limits are rules (BR02), not classes. An organisation administrator changes their organisation's recurring bookings (FR12), so the system must know their organisation; this is the Member–Organisation link plus a role, not a separate class |
| Notification / closure message | Operation/event | P10, FR08 | Remove | An output of the system, not something it needs to remember |
| Approval (of guests, exceptions) | Operation/event | P04, CQ01, CQ04 | Remove | An action whose owner is open (CQ01, CQ04); not modelled until answered |
| Occupancy, availability | Operation/event (derived) | P08, FR03, NFR03 | Remove | Worked out from bookings and check-ins, not stored |
| Calendar, spreadsheet, email, role-based view | Out of scope / UI | scenario Organisation, scope | Remove | Present tools or screens, not business concepts |

## Glossary

| Concept | Definition | Related concepts |
| --- | --- | --- |
| Member | A person registered to use the workspace, either on their own or linked to an organisation | Organisation, Membership, Booking, Orientation |
| Organisation | A company or group that members belong to and that books workspace through them | Member, Booking |
| Plan | A package of allowances and terms (hours, room allowance, access times, guest privileges, special equipment) that a membership is held under | Membership, Usage record |
| Membership | A member's holding of a plan, with a status and any agreed exceptions | Member, Plan, Booking |
| Visitor | A person given temporary access who must not see member details (whether this is the same as a guest is open, CQ10) | Member, Booking, Check-in |
| Resource | A desk, room or piece of equipment that can be booked | Room, Booking, Fault, Closure, Orientation |
| Room | A kind of resource with a capacity, layout, accessibility and equipment information | Resource, Booking |
| Booking | An agreement that a member may use one or more resources for a period, confirmed or provisional, single or recurring | Member, Resource, Booking date, Check-in, Usage record |
| Booking date | One date of a recurring booking, which can be changed or removed without affecting the other dates | Booking |
| Check-in | The recorded arrival of a person for a booking or an unexpected visit | Booking, Member, Visitor, Usage record |
| Fault | A recorded problem with a resource and whether it makes it fully unavailable or partly usable | Resource, Booking, Closure |
| Closure | A period when part or all of the workspace is closed, leading to bookings being relocated, shortened or cancelled | Resource, Booking, Fault |
| Usage record | The record of a booking or check-in, including any use over the plan allowance, passed on for charging | Booking, Check-in, Plan |
| Orientation | Extra familiarisation a member must have before being allowed to use certain rooms or equipment | Member, Resource |