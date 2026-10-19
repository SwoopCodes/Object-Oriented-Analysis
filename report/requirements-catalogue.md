# Requirements

---

## Functional Requirements

| ID | Requirement | Type | Source | MoSCoW | Verification |
| --- | --- | --- | --- | --- | --- |
| **FR01**| The system shall not allow members to see other organisation's activities | Functional  | **BR01** | Must | Test: Login with user account and try view external activities |
| **FR02** | The system shall allow a receptionist/staff to update booking  | Functional |**P01** | Must | Test: Receptionist to change booking from one resource to another |
| **FR03** | The system shall provide easy to access information and read information on access, capacity and availability  | Functional | **P02** | Should | Test: Reception staff try to access and navigate around system to find access, capacity and availability information |
| **FR04** | The system shall monitor where equipment is currently located or if its under repair  | Functional | **P06** | Must | Test: Receptionist/workspace manager moved equipment out of a room or sets it as 'under-repair' and attempts to make a booking with that equipment being specified |
| **FR05** | The system shall record and store past information on booking information for usage information to charge members  | Functional | **P10** | Must | Test: Accounting staff to try access and view past usage information |
| **FR06** | The system shall facilities staff to monitor room equipment and the usability status of a room  | functional | **Stakeholders.md** | ... | Test: find room with reserved or damaged equipment through system and check it's booking status (Can the room be booked for a certain use case even if the equipment is reserved elsewhere) |
| **FR07** | The system shall provide limited information depending on the role an actor has in the system  | Functional | **Purpose-scope-boundary.md** | ... | Test: Facilities staff would login and try to view booking information. The outcome should be that they cannot view it |
| **FR08** | The system shall provide clear messages to members if a booking is made, cancelled or updated   | Functional | **Scenario-interpretations.md** | ... | Test: A member makes a booking, updates it and then cancels it and checks if the information he recieves is accurate to the changes they made |
| **FR09** | ... | ... | ... | ... | ... |
| **FR10** | ... | ... | ... | ... | ... |
| **FR11** | ... | ... | ... | ... | ... |
| **FR12** | ... | ... | ... | ... | ... |