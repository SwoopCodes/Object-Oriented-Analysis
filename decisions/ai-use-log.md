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

**20/10/2026 - User stories**

| Suggestion | Decision |
|------------|----------|
| AI suggested six stories, each for a different actor and based on a Must FR (FR09, FR11, FR10, FR06, FR12, FR07), so the backlog covers the main roles. | Added US01 to US06 to requirements/user-stories.md with the same priority as their FR |
| AI suggested building acceptance criteria by splitting each FR's verification test, with at least one refusal criterion per story. | Wrote 3 to 4 criteria per story with no screens or technology |
| AI suggested referencing CQs where a criterion would need an unstated policy (hold period, hidden fields, partial use) instead of deciding it. | Listed CQ02, CQ06, CQ07 and CQ08 in each story's questions field instead of writing criteria for them, and did not add new rules |

**20/10/2026 - use-case catalogue**

| Suggestion | Decision |
|------------|----------|
| AI pointed out that FR13 (usage beyond plan allowance) was linked to UC05 Check In Member, which it has nothing to do with, and that UC09 Send Usage Records should also link FR05. | added FR05 to UC09 |
| AI pointed out that the scenario does not say who closes a resource (UC08) or who sends usage records (UC09), so the primary actor for each is an assumption, and UC09 may not have a person starting it at all. | Ignored |
| AI compared the catalogue with my actor-goal table and found goals with no use case: member change/cancel, the manager's occupancy view, and visitor access. | Ignored |
| AI suggested adding a sentence under the catalogue stating which actor goals are not modelled in this release, so the gaps read as a scope decision rather than an oversight. | Ignored |

**20/10/2026 - Review of Gherkin scenarios**

| Suggestion | Decision |
|------------|----------|
| AI pointed out that my scenarios were written as Markdown (.md) files, but the brief asks for .feature files. AI converted them to Gherkin syntax (Feature, Rule, Scenario, Scenario Outline, tags), as formatting only with no wording changed, and checked them with a Gherkin parser. | Changed it to .feature files as per assignment brief |
| AI pointed out that my tags were inconsistent (some had @, some didn't) and moved them onto their own line above each scenario. | Kept the change. Consistent formatting is important |

**21/10/2026 - Review of candidate-concept analysis**

| Suggestion | Decision |
|------------|----------|
| Visitor row cited FR05 for visitor charges, but FR05 only covers recording usage for bookings and check-ins. | Kept suggestion.. Replaced it with the scenario's Charges section as the source |
| Relocated and shortened are things that happen to a booking because of a closure (FR08), not statuses. | Kept. Booking status is now confirmed, provisional and cancelled only. Added a separate row for relocated/shortened as events covered by Closure |
| No-show was classified as an operation/event but converted to an attribute. | Changed the classification to attribute/value (outcome of a booking) so it matches the decision |
| Capacity, layout and accessibility were put on Resource but are only facts about a room, so Room may need to stay distinct. | Kept suggestion.. Room is now kept as a kind of Resource and the three attributes moved to Room. Desk and Equipment stay merged into Resource. I will confirm the generalisation with the is-a test in the domain model |
| Equipment status (FR04) and Fault (FR06) both mean a resource can't be used. | Added to the reasons that "under repair" is the effect of a fault and the Fault is the record of what went wrong. Whether staff can set the status without a fault isn't stated in the scenario so I left it unanswered |
| FR12 changes one date of a recurring booking and keeps the rest, which suggests the date is its own concept and not part of Booking. | Kept suggestion.. Recurring date is now kept as "Booking date" and added to the glossary. I may still argue it as part of Booking in the domain model |
| Orientation's reason said it has a date and a person who records it, which the scenario doesn't say. | Kept. Reworded the reason to what BR04 says and noted that orientation might be a link between a member and a resource. CQ12 remains open |
| Organisation administrators were removed as actors, but the system has to know which organisation they belong to. | Added a sentence that this is handled by the Member-Organisation link plus a role and not a separate class |
| Glossary: Booking used "reservation" which I merged into Booking, and Organisation's definition was the rule BR01. | Rewrote both definitions to say what the thing is. Glossary is now 14 concepts |
