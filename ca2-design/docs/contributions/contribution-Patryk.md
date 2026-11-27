# Contribution statement: Patryk Graszk

## Personal work

| Card | Files | PR | Check |
|---|---|---|---|
| CA2-01: Board, Product Goal, Definition of Done and AI log | ca2-design/ folder structure; decisions/DR-001-board-tool.md; docs/process/definition-of-done.md; docs/process/board-captures/Board_screenshot.png; docs/ai/ai-log.md | Direct commits to master (4 to 9 November): 5f57495, 21b54b5, 0b7a0a8, 72dc288, 478082d | I checked all five commits on GitHub. I made them under my other git name |
| T01: Detailed use case UC05 Check In Member (#29) | use-cases/UC05-check-in-member.md | #45 | Elisha reviewed it (LGTM), then it was merged |
| T03: System sequence diagram UC01 Make Booking (#31) | diagrams/ssd-UC01.puml, ssd-UC01.png | #48 | Elisha reviewed it (LGTM), then it was merged |
| T12: Sequence diagram makeBooking (#40) | diagrams/seq-makeBooking.puml, seq-makeBooking.png | #52 | Eron reviewed it (LGTM), then it was merged. An earlier version, #51, was closed after Eron asked for the file to end with @enduml |
| T15: Product Goal (#43) | ca2-design/README.md | #55 | - |
| CA2 baseline README updates | ca2-design/README.md, README.md | #67 | - |
| Fixes from review RV-01 (#68) | diagrams/seq-makeBooking.puml, diagrams/class-diagram.puml, crc/crc-UCO1.md (I checked it. The rename to crc-UC01.md is not done yet), RV-01 review files | #72 | Merged with no description and no review on GitHub |
| T25: Tag the CA2 baseline (#66) | ca2-submission tag | #73 (README wording and baseline date). Tag link: [add once the tag is pushed] | The tag is not on GitHub yet |

I created the board and the backlog items. We talked through the backlog items and planned them as a group. Then I created the items on the board.

Scenario 13 is my CA1 scenario. We chose it at the first group meeting. My CA1 files (the use-case model, the Gherkin features and the rules register) are the base for UC01 and UC05.

## Group work

These are things I did for the team, not on my own cards.

- Chose Scenario 13 at the first group meeting. The lecturer, Andrew Shields, approved the group and scenario on 04/11/2026 (see DR-001).
- Approved DR-004 on 25/11/2026.
- DR-001 is my draft.

I reviewed these PRs. I read the changes on GitHub and left comments.

- **#69** (Elisha, design scope): I approved it with a one-line comment ("Approved!"). After merging, I added one file comment on the UC01 row of design-scope.md. It says both files pick UC01 and UC05, and the rule numbers match. It also points out that FR01 and FR13 appear for UC01 in the scope table. The diagram text does not mention them, so I could not check them. No review from Eron is on GitHub.
- **#70** (Eron, package view): I left a short general comment. After merging, I added a file comment on ServicesFactory in package-diagram.puml. I checked the three packages against architecture.md section 1. I also checked the classes against class-diagram.puml. ServicesFactory is in architecture.md and the package diagram, but not in class-diagram.puml. I suggested adding it to that diagram or removing it from the package diagram.
- **#57** (Elisha, checkAvailability sequence diagram): I merged it with a short general comment. After merging, I added a file comment on the first message in seq-checkAvailability.puml. I checked that message and its three calls in the loop against class-diagram.puml. I suggested the name AvailabilityResult for the final message.
- **#46** (Elisha, use-case diagram): approved and merged.
- **#47** (Elisha, operation contract for makeBooking): approved and merged.
- **#49** (Eron, system sequence diagram for UC05 and AI log): reviewed and merged.
- **#53** (Elisha, CRC cards for UC05): reviewed and merged.
- **#54** (Eron, GRASP rationales for UC05): reviewed and merged.
- **#56** (Albin, checkInMember sequence diagram, contract and GRASP rationale for UC01): reviewed and merged.

The six PRs above were quick checks, reviewed and merged. They were not detailed reviews. The file comments on #69, #70 and #57 are single comments, not formal reviews. Most of my other comments were short.

Other review work:

- I checked parts of Eron's review records: RV-01 UC01 row 6 (the CRC file rename, which I checked but is not done yet), RV-02 UC05 rows 2, 3, 5 and 6, and the cross-model review.
- We walk through each other's work regularly on Slack or in person.
- One example: Eron pointed out on PR #52 that my PUML file must end with @enduml. We met to agree the standards, and I fixed the file.
- The team agreed the CA2 baseline. The README lists all four of us.

## AI support

Tool used: Claude Sonnet 5.5.

| Date | What I used it for | What I kept or changed |
|---|---|---|
| 11/11/2026 | Review of the SSD (system sequence diagram) for UC01 Make Booking | I kept most suggestions and changed some. I kept the CQ06 message neutral and kept the CQ06 note. CQ06 is an open question the team has not decided |
| 13/11/2026 | Review of seq-makeBooking (UC01 steps 3 to 7) | No changes were needed from the first check. I kept one suggestion and moved a note next to the call it describes. I left out one suggestion: a path for when hasActiveMembership() returns false |
| 25/11/2026 | Fixes to seq-makeBooking after RV-01 | Eron's review found the issues (rows 1, 2, 3, 5 and 7). AI suggested the fixes. I kept all four suggestions |

What AI did not do:

- It did not choose the scenario or the use cases.
- It did not decide business rules or open questions.
- It did not write my files from scratch

## Individual AI declaration

I, Patryk Graszk, used Claude Sonnet 5.5 for review and checks only. I used it to check my diagrams and files for mistakes and mismatches, and to suggest fixes. I decided which suggestions to keep, and I changed some of them. The AI did not write my files, choose the scenario or use cases, or decide business rules. This matches my AI log (ca2-design/docs/ai/ai-log-Patryk.md). I can explain every part of my work.

## Signed

Patryk Graszk, 26/11/2026
