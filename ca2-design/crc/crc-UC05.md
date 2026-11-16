# CRC cards - UC05 Check In Member

### CheckInController

| Responsibilities | Collaborators |
|---|---|
| receives the check-in request and coordinates member lookup, arrival and usage recording (checkInMember) | Workspace, Member, Booking, CheckIn |

### Workspace

| Responsibilities | Collaborators |
|---|---|
| knows all members | |
| finds a member by member number (findMember) | Member |

### Member

| Responsibilities | Collaborators |
|---|---|
| knows its member number and name | |
| knows its bookings | |
| finds its booking for the given date (findBookingFor) | Booking |

### Booking

| Responsibilities | Collaborators |
|---|---|
| knows its status and pattern | |
| creates a CheckIn with the arrival time (checkIn) | CheckIn |

### CheckIn

| Responsibilities | Collaborators |
|---|---|
| knows its arrival time | |
| creates a UsageRecord for the check-in (recordUsage) | UsageRecord |

### UsageRecord

| Responsibilities | Collaborators |
|---|---|
| knows its excess usage | |
