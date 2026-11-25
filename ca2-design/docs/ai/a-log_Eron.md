# AI use log - Eron Baftjari

## crc-UCO1
| Date | Task | What I did | What AI did | Outcome |
|------|------|------------|----------------------|---------|
| 11/11/2026 | Understand the card | Read card #35 and the scenario, asked what CRC cards, responsibilities and collaborators mean | Explained CRC cards, the two columns and the shared names table | Understood the task |
| 11/11/2026 | Pick the classes and operations | Checked which operations belong to UC01 and which to UC05 | Pointed out that findBookingFor, checkIn and checkInMember are UC05 | Only UC01 operations used |
| 11/11/2026 | Write the cards | Went through each card and the reason for each collaborator, removed the intro sentence | Drafted the 10 cards from domain-model.puml, the UC01 use case and the shared names | Kept the draft with my edits |
| 11/11/2026 | makeBooking collaborators | Agreed to add Resource and flag it to the team | Pointed out no card showed who checks availability when booking, and suggested adding Resource | Kept, flagged in PR |
| 11/11/2026 | Check against the brief | Asked for checks against the Done when list, puml and use case | Checked counts, attributes and UC01 steps, and found the 2b orientation gap | All Done when points met |

## ssd-UC05

| Date | Task | What I did | What AI  did | Outcome |
|------|------|------------|----------------------|---------|
| 11/11/2026 | SSD UC05 | Read card #32, asked how SSDs work, checked the diagram against UC05, BR02, CQ08 and Done when | Explained SSDs and pointed out Requirments i needed | Kept |

## Class-Diagram-T14

**Date: 12/11/2026**

| Suggestion | Decision |
|------------|----------|
| The Class diagram That the Membership must have at least 1 plan | changed the relationships to its suited coat |
| MakeBooking class has a workspace | Changed the relationship and recorded the change |

## GRASP-UC05 -T10

**Date: 16/11/2026**

| Suggestion | Decision |
|------------|----------|
| Why not Column for find member should be CheckInController since it doesnt hold members and workspace does | Took the suggestion and applied it |
|Suggested I add how the 2 use Cases are different in explaining the reasoning of my Controller choice| I then added the explanation and got AI to check if my answer made sense |
|Suggested i should add examples when explain Cohesion and Coupling|I took the Advice and added examples with the help of AI |

## T20

**Date : 24/11/2026**

| Suggestion | Decision |
|------------|----------|
| Remove the Accounting interface | Kept it, because card step 8 asks for it |
|Suggest i add  IPersistenceFacade | Decided to go ahead with it and write it and use it  |


## T22

**Date : 25/11/2026**
| Suggestion | Decision |
|------------|----------|
| AI reviewed my finished review records and pointed out what to fix | Accepted, I made the fixes myself |
| AI pointed out issues to look for: names matching across SSD, contract and sequence diagram; contract postconditions missing from sequence diagrams; failure cases with no alt branch or Gherkin scenario; class and operation names not matching the class diagram | Accepted, I did the checks myself and wrote each issue into the review records |


