# AI use log - Elisha Seruma




**11/11/2026 - Operation contract for makeBooking (T05)**

| Suggestion | Decision |
|------------|----------|
| Put the known member and active membership in Preconditions. Cover availability and overlap under Controlled failures. | Used that structure and listed the booking and usage changes in the past tense. |


**15/11/2026 - CRC cards for UC05 Check In Member (T08)**

| Suggestion | Decision |
|------------|----------|
| Keep each card short and list what it knows, what it does and which classes help. | Draft uses six cards and lists each UC05 operation once. |


**17/11/2026 - Sequence diagram for checkAvailability (T11)**

| Suggestion | Decision |
|------------|----------|
| Loop through each resource, find it through Workspace, then ask Resource for availability and faults. | Used the shared operation names, dashed returns and the CQ06 note. |

**24/11/2026 - Design evaluation (T21)**

| Suggestion | Decision |
|------------|----------|
| Count operations and directed links from the class diagram, then compare C01 and C02 with the sequence diagrams. | Added the counts and named the files where creation, failure paths and links need clarification. |
| Link assumptions to CQs and use the GRASP records for rejected alternatives. T20 and issue #68 are still open. | Kept the open questions visible and marked coupling for review after T20. |
