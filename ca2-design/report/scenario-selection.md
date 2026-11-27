# Scenario selection (T17)

## Choice and approval

We chose Scenario 13. The lecturer, Andrew Shields, approved the group and scenario on 04/11/2026. The lecturer reply is in [DR-001](../decisions/DR-001-board-tool.md).

We record the choice in [DR-002](../decisions/DR-002-scenario-selection.md). We record the baseline changes in [DR-003](../decisions/DR-003-baseline-changes.md).

## Scores

Scale: 1 to 5, where 5 is best. Each member scores their own scenario.

| Member | Scenario | Scope | Behaviour | OO potential | Sliceability | Testability | Comparability | Total |
|---|---|---|---|---|---|---|---|---|
| Patryk Graszk | 13 | 4 | 4 | 4 | 3 | 4 | pending | 19 of 25 (five criteria scored) |
| Elisha Seruma | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] |
| Eron Baftjari | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] |
| Albin Kastrati | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] | [pending] |

### Why I scored Scenario 13 this way

- **Scope (4):** Wide, so we had to cut it. It has 9 use cases, 13 functional requirements and 4 non-functional requirements. We kept UC01 and UC05.
- **Behaviour (4):** Many rules to get right. It covers overlapping bookings, extensions, provisional bookings and equipment. The rules file lists 5 business rules and 12 open questions.
- **OO potential (4):** Good room for object design. The CA1 domain model has 11 classes, and the CA2 class diagram has 22.
- **Sliceability (3):** Lower, because there are only three operations for four members. [design-scope.md](design-scope.md) says they do not give one slice per member.
- **Testability (4):** Strong, because the scenarios and contracts already exist: five Gherkin scenarios (SC01 to SC05), two operation contracts (C01 and C02), and the error codes in DR-004.
- **Comparability:** pending. The repo has no evidence for this. It needs the other members' scores.

## Why Scenario 13

- The CA1 files for this scenario are in the repo: a use-case model, Gherkin feature files and a rules file. UC01 and UC05 build on them.
- The scenario has booking rules and conflicts we can test. Five Gherkin scenarios cover them.
- Conflicting reservations are the main problem in this scenario (P01), and it covers them.

## Lecturer approval

- **Date:** 04/11/2026
- **Name:** Andrew Shields
- **Source:** [DR-001](../decisions/DR-001-board-tool.md), "Lecturer reply"

## Expansion items

Not confirmed yet. We will add the lecturer's extra rules, actors or use cases here once the group replies. If nobody knows of any, this section will say "None given".

## Change log against CA1

We kept most of the CA1 analysis for Scenario 13 as it was. The table lists what changed.

| Item | Result | Reason |
|---|---|---|
| UC01 Make Booking | Accepted | Selected in [design-scope.md](design-scope.md) |
| UC05 Check In Member | Accepted | Selected in [design-scope.md](design-scope.md) |
| UC02, UC03, UC04, UC06, UC07, UC08, UC09 | Deferred (not rejected) | Each reason is in the "Not selected" list of [design-scope.md](design-scope.md). That list says these are proposed for group review |
| FR05 on UC01 | Gap found | UC01's Related row leaves out FR05, but its flow records usage ([design-scope.md](design-scope.md)) |
| CQ13 | Gap found | Cited in [design-scope.md](design-scope.md) and the class diagram, but not defined in [Rules-and-uncertainty.md](../../report/Rules-and-uncertainty.md) |
| Other members' CA1 changes | not provided | Rows will be added if Elisha, Eron or Albin report changes or merges from their own CA1 |

## Open items

- Scores and reasons from Elisha, Eron and Albin.
- Comparability score for Scenario 13.
- Expansion items from the lecturer, if any. Not confirmed yet.
- FR05 on UC01's Related row.
- CQ13, which is cited but not defined.