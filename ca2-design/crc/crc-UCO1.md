# CRC cards - UC01 Make Booking


### BookingController

| Responsibilities | Collaborators |
|---|---|
| receives checkAvailability and passes it on (checkAvailability) | Workspace, Resource |
| receives makeBooking and passes it on (makeBooking) | Workspace, Member, Resource |

### Workspace

| Responsibilities | Collaborators |
|---|---|
| knows all members and resources | |
| finds a member by member number (findMember) | Member |
| finds a resource by its id (findResource) | Resource |

### Member

| Responsibilities | Collaborators |
|---|---|
| knows its member number and name | |
| checks if it has an active membership (hasActiveMembership) | Membership |
| creates a Booking (createBooking) | Booking |
| checks if hours go over its plan allowance (isOverAllowance) | Membership, Plan |

### Membership

| Responsibilities | Collaborators |
|---|---|
| knows its status | |
| says if it is active (isActive) | |
| gives its plan (getPlan) | Plan |

### Plan

| Responsibilities | Collaborators |
|---|---|
| knows its name, desk hours and guest privileges | |
| checks if hours go over the allowance (isOverAllowance) | |

### Booking

| Responsibilities | Collaborators |
|---|---|
| knows its status and pattern | |
| creates a BookingDate (addDate) | BookingDate |
| creates a UsageRecord (recordUsage) | UsageRecord, Member |

### BookingDate

| Responsibilities | Collaborators |
|---|---|
| knows its date, start time and end time | |

### Resource

| Responsibilities | Collaborators |
|---|---|
| knows its name, kind and status | |
| checks if it is free for a date and time (isAvailable) | Booking, BookingDate |
| gives the faults recorded against it (getFaults) | Fault |

### Fault

| Responsibilities | Collaborators |
|---|---|
| knows its description and limitation | |

### UsageRecord

| Responsibilities | Collaborators |
|---|---|
| knows its excess usage | |



