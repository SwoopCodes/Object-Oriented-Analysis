# AI use log

AI tool: Claude (Anthropic), Level 3 use as per the CA1 brief.

**07/10/2026 - Repo setup**
- Set up the folder structure from section 7 of the brief.

**10/10/2026 - Review of scenario interpretation and scope notes**

| Ai Suggestion | Decision |
|------------|----------|
| My problems section said the spreadsheets cause the conflicting reservations. The scenario doesn't say this, and the brief says technology shouldn't be presented as the problem. Reworded to what staff want to fix. | Kept the suggestion..  Indeed I made an assumption about the spreadsheets being the issue. I only want to work off certainty |
| "Occasionally against procedure" for arriving without a booking etc. The scenario doesn't mention any procedure, so this was an assumption written as a rule. Removed it and added a clarification question. | kept suggestion.. Stakeholders / project owners should decide what is against procedure and how to handle issues relating to this. Clarification would be necessary |
| "Calculating visitor charges" in scope might overlap with the accounting system, which is out of scope. Added a clarification question instead of changing the scope. | Kept suggestion.. Project owner should decide if the system only tracks usage of resources for memberships or calculates additional charges if a member exceeds their membership usage limits|

**11/10/2026 - Review of stakeholder and actor notes**

| Suggestion | Decision |
|------------|----------|
| Facilities staff are listed as a direct stakeholder but as an offstage actor. Offstage means they don't use the system, but logging faults is in my scope. Need to pick one. | Facilities staff changed from offstage to primary. |
| "Service providers" isn't in the scenario. Either say who this means or remove it. | Indeed service providers aren't mentioned in the scenario. Removing it from stakeholders document |
| "Visitor / Guest" are joined in the actor goals, but the scenario uses both words and doesn't say if they're the same. Added a clarification question. | Good catch. clarification question required in this context|

**11/10/2026 - Review of work against lecture notes**

| Suggestion | Decision |
|------------|----------|
| AI compared my constraints with Lecture 3’s definitions and suggested that my constraints (internet failure, members not seeing other organisations, temp staff not seeing commercial info) fit Lecture 3's definitions of non-functional requirements and business rules better than constraints. | Moved two to business rules BR01, BR02. Internet failure moves to NFRs at requirements stage |
| AI had earlier removed IDs (A-01, CQ-05) at my request. After checking the lecture notes, it pointed out that the lectures use IDs (FR01, UC-03) and the traceability chain depends on them. Suggested using IDs from requirements onwards. | Kept. Used Claude Code to add IDs to problems, assumptions and questions (formatting only, no wording changed). IDs will be used from requirements onwards |
| Quotes in my consequences were attached to the wrong problems (e.g. the manager's equipment quote was under conflicting reservations). | Kept. Matched each quote to the problem it actually describes and made recurring holiday dates a separate problem |
| Naming the system "Workspace Reservation & Access System" could blur the boundary with the external access system, which is out of scope. | Renamed the system to *'Workspace Management System'* as it suits the idea of the system a lot better |
| My assumption about syncing offline bookings described how the solution would work rather than something to verify. | Dropped it from assumptions. The internet failure need is covered by the constraint, which becomes an NFR later |
| Stakeholder table says organisations "pay for memberships", which the scenario doesn't state. | Removed line about paying for emberships in the stakeholder analysis and added a clarification question|

**19/10/2026 - Review of requirements catalogue**

| Suggestion | Decision |
|------------|----------|
| FR02 "update booking" was too vague and "receptionist/staff" was not one role. | Changed it to just be reception staff to keep the requirement accurate |
| FR05 had the wrong source (P10 instead of P11), said "charge members" while CQ09 is still open, and used accounting staff as the tester even though they don't use the system directly. | Kept the reference to CQ09 since it isn't fully answered and using such wording makes it seem like an assumption |
| FR07's test assumed facilities staff can't see bookings, which is a policy the scenario doesn't confirm (CQ07). | Referenced CQ07 in references and in the test column |
| The Type column repeated "Functional" on every row, which the "Functional Requirements" heading already says. | Kept. Removed the Type column from the functional requirements table|

**20/10/2026 - Review of non-functional requirements**

| Suggestion | Decision |
|------------|----------|
| My first NFRs ("reliable", "accurate") weren't measurable. AI suggested stating which functions, thresholds and conditions, as in Lecture 3's examples. | Followed Ai suggestion my previous NFRs were considered more like FRs instead|
| AI pointed out that two of my NFRs (one booking per resource, usage beyond plan limits) were really functional requirements, and that one duplicated FR11. | Revised the requirements and added new ones based off of the assumptions inside of the purpose scope boundary |
| Numbers in my NFRs (response time & check-in time) aren't in the scenario, so AI suggested recording them as assumptions instead of presenting them as confirmed. | Added assumptions for response time and check-in time |
| AI pointed out that usage data goes to the accounting system, not accounting staff, because accounting personnel are offstage in my stakeholder analysis. | renamed to 'accounting system' as it keeps it in-line with the scenario|

**20/10/2026 - Business rules and risks**

| Suggestion | Decision |
|------------|----------|
| AI suggested adding only rules the scenario states (extensions, orientation, plan contents, visitor/guest information, equipment with rooms) and keeping unstated policies as CQs. | Added BR03 to BR07 with the scenario source for each |
| AI suggested risks drawn from assumptions, open CQs and the access and accounting dependencies. | Added R01 to R05 with responses and added BR and R to the README identifiers |
