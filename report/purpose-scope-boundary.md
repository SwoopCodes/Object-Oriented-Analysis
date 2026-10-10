# Purpose, scope and boundary

**Purpose:**
To build a system to manage memberships, resource bookings, and daily operations for Tralee Enterprise Workspace, replacing manual spreadsheets to reduce conflicting reservations and clarify service availability.

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

**Constraints:**
- The local booking record must remain usable even if the internet service fails.
- Members must not see other organisations' activity.
- Temporary cover staff must not see members' commercial information.
