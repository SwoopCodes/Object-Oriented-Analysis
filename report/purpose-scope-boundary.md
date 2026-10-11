# Purpose, scope and boundary

**Purpose:**
To build the **Workspace Management System** to manage memberships, resource bookings, and daily operations for Tralee Enterprise Workspace, replacing manual spreadsheets to reduce conflicting reservations and clarify service availability.

**In-scope:**
- Tracking member plans, allowances, and guest privileges.
- Managing single, recurring, and provisional bookings for desks, rooms, and equipment.
- Handling daily check-ins, unexpected arrivals, and no-shows.
- Logging faults, maintenance, and tracking partially usable resources.
- Calculating excess usage and visitor charges based on usage.
- Role-based views for the manager, members, reception, and temp staff.

**Out-of-scope:**
- Detailed invoicing and accounting (managed in a separate accounting system).
- Website management.
- Building-access hardware replacement.

**Dependencies:**
- Reliable usage data must be available to feed into the external accounting system.
- Depends on the access system for member check-ins.

**Assumptions:**
- **A01** Member and guest IDs are unique.
- **A02** The existing access system can provide check-in information to the Workspace Management System.
- **A03** The accounting system can accept usage data from the Workspace Management System.
- **A04** The current spreadsheets and calendars hold accurate enough information on members, plans and bookings to start from.

**Constraints:**
- The local booking record must remain usable even if the internet service fails.
