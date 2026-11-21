# AI use log - Patryk Graszk

**11/11/2026 - Review of SSD for UC01 Make Booking**

| Suggestion | Decision |
|------------|----------|
| The alt block was placed after @enduml, so it wasn't part of the diagram. There was also a stray ~ after end. | Moved the alt above @enduml and removed the ~ |
| The success return "Booking confirmed" was still on its own after makeBooking. It should be moved into the first branch of the alt. Step 7 also returns Confirmed or Provisional, not just Confirmed. | Removed the extra line and added both statuses to the success message |
| The 2a condition said "unavailable", but 2a in UC01 is a recorded fault. | Changed the condition and message to recorded fault |
| The 2a message said the resource can't be booked. This decides CQ06, which is still open. | Kept suggestion. Changed the message to only report the fault. The CQ06 note stays |
| The success condition "Resource booked" read like the 4a failure, and the next version had x and y placeholders in it. | Changed it to "No overlap and equipment free" |
| CQ06 was in both the message and the note. | Removed it from the message and kept the note |
| The note linking SC01, SC02 and SC03 to the alt branches was missing. | Added the note before @enduml |
| Check "booked by another member" in 4a against the UC01 wording. | wording in both the SSD and use-case model are correct |

**13/11/2026 - Review of seq-makeBooking (UC01 steps 3-7)**

| Ai Suggestion | Decision |
|------------|----------|
| Checked the draft. Every call is from the shared names table, Booking, BookingDate and UsageRecord creation is shown, the refusal path is in an alt block, there's no database lifeline and the controller doesn't check rules itself. Rendered it to confirm it compiles. | No changes needed from this. |
| The CQ01/CQ09 note rendered below the alt box, away from the call it's about. Move it straight after `P --> M : Boolean`. | Kept suggestion.. Moved the note next to the isOverAllowance call |
| No path shown for when hasActiveMembership() returns false. | Left it out |