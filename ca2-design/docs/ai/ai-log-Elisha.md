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
