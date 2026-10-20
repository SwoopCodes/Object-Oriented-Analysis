# Uncertainty and rules register

**Clarification Questions for Stakeholders:**
- **CQ01** Which plan rules may be overridden and who has the authority to approve exceptions?
- **CQ02** What is the maximum time a provisional or recurring booking can reserve resources before being confirmed or dropped?
- **CQ03** How should future bookings in the calendar be treated when a membership is suspended or ends?
- **CQ04** Who exactly (member, receptionist, or manager) is allowed to approve guests and temporary access?
- **CQ05** How do no-shows and unrecorded resource changes officially affect a member's usage limits?
- **CQ06** What are the exact rules for when a partially usable resource may continue to be booked?
- **CQ07** Which specific booking, membership, and charge information is visible to each individual staff role?
- **CQ08** Is arriving without a booking or moving to a different free desk allowed, or just tolerated by staff?
- **CQ09** Should the system work out charge amounts, or only record usage for the accounting system?
- **CQ10** Is a visitor (who books a resource) the same as a guest (who comes in with a member)?
- **CQ11** Do organisations pay for a membership the same as a member does?
- **CQ12** Can a member who has not had the required orientation still book a room or equipment that needs it, and who records that orientation?

**Business rules:**
- **BR01** Members must not see other organisations' activity.
- **BR02** Temporary cover staff must not see members' commercial information. (Exact information covered is not confirmed, see CQ07.)
- **BR03** An extension to a booking must not affect a later confirmed booking. (Source: Resources and bookings, "An extension should not affect a later confirmed booking")
- **BR04** Certain rooms or equipment require additional orientation before a member may use them. (Source: Members, plans and access, "Certain rooms or equipment require additional orientation")
- **BR05** Visitors and guests get temporary access without seeing member information. (Source: Members, plans and access, "Visitors and guests need temporary access without seeing member information")

**Risks:**

| ID | Risk | Linked to | Response |
| --- | --- | --- | --- |
| **R01** | The access system cannot supply check-in information, so check-ins and usage records have to be entered by hand and become incomplete | **A02** | Confirm with the access system owner early what data it provides; design check-in so reception staff can record arrivals manually |
| **R02** | The accounting system cannot accept usage data in the form the Workspace Management System produces, so charges are not passed on reliably | **A03**, **CQ09** | Agree the data format with the accounting system early and settle CQ09 so the scope of what is passed on is known |
| **R03** | The spreadsheets and calendars hold duplicate, outdated or incomplete member, plan and booking records, so the system starts with wrong data | **A04** | Assess data quality before migration and have staff correct records before the system goes live |
| **R04** | Plan overrides, provisional booking limits and suspended-membership handling are never confirmed, so the requirements that depend on them cannot be finalised | **CQ01**, **CQ02**, **CQ03** | Get these questions answered by the workspace manager early. until then, treat dependent requirements as provisional |
| **R05** | The 2 second and 60 second targets are not acceptable to staff and members, so the system is judged too slow or too hard to use | **A06**, **A07** | Review the targets with reception staff and temporary cover staff before design, and test with them during development |
