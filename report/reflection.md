# Reflection and AI declaration

## Important decisions

### Plan and Membership as two concepts
We decided to split Plan and Membership into two distinct concepts instead of combining them into one. A membership tracks who belongs to the workspace, while a plan defines billing and access rules. Merging them would have made changing subscription tiers messy later on. The alternative was a single combined entity, but that broke flexibility when members upgrade or change plans.

### Refusing combined room-and-equipment bookings (FR10)
We chose to reject booking requests that try to reserve both a room and specific equipment at the same time (FR10), rather than just showing a warning. The system needs clear boundaries to prevent scheduling conflicts and messy error handling. The alternative was letting users book both together with a warning message, but that risked double-booking resources if users ignored the alert.

## Revisions
- At first, we blamed spreadsheets for data issues, but we reworded this after realizing it was an unverified assumption rather than a proven fact.
- We updated our initial list of constraints after realizing many of them were actually business rules and NFRs, matching our lecture definitions.
- We threw away a fully generated draft of the requirements catalogue and rebuilt FR01 through FR13 ourselves to make sure they matched our specific scenario.
- NFRs started out vague and unmeasurable, so we added concrete thresholds as working assumptions to make them testable.

## Limitations
- Actor goals for member changes, cancellations, occupancy views, and visitor access are not modelled in this release.
- P04 covers guest approval, but it currently has no matching requirement tied to it.
- NFR numbers are based on working assumptions rather than confirmed business targets.
- The domain model still has a few gaps that would need fixing with more time.

## Unresolved questions
- CQ02 regarding the hold period directly affects FR09, UC01, and SC01, and needs stakeholder confirmation.
- CQ10 regarding visitor versus guest terminology remains open and affects domain model relationships.

## AI declaration
AI was only used as an assistant and guide throughout the process and was never used to generate any information. Most of the key decisions and suggestions were noted inside of the ai-use-log.md file. Specifically, tools like Claude (chat) and Claude Code helped with formatting, converting Gherkin to feature files, and checking traceability. Any generated content, like the early requirements draft, was rejected because we wrote the analysis ourselves. We checked every suggestion against the scenario and lecture slides, and all records are logged in decisions/ai-use-log.md.