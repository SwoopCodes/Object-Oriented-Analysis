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

## Notes

- Every Must and Should FR (FR01 to FR13) belongs to at least one use case, and every use case realises at least one FR.
- **UC08:** the scenario does not say who closes part of the workspace for maintenance or events, so the primary actor is a provisional choice (the workspace manager decides which resources are removed from service).
- **UC09:** the accounting system receives the usage data only. Invoicing stays outside the boundary (out of scope), and so does the access hardware.
- **Possible gaps (no FR yet):** the workspace manager's views of occupancy, recurring conflicts, provisional bookings, no-shows and faults, and registering a guest visit (approval depends on **CQ04**). If these are added as FRs, they would each need a use case.
