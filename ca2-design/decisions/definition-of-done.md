# Definition of Done

The Definition of Done (DoD) is the same quality check for every card on the board. Acceptance criteria are different for each card, but the DoD applies to all of them.

## Every card

- [ ] Editable source is committed to the repo (.md, .puml, .feature) and any exported output (.png) is readable
- [ ] Terminology and identifiers match the glossary and the traceability matrix
- [ ] The card's reviewer has reviewed the work
- [ ] Linked models, requirements, decisions and tests still agree with each other
- [ ] Board status is updated
- [ ] AI log is updated

## Extra checks by type

### Models (PlantUML)

- [ ] .puml and exported .png are both committed and the .png matches the latest .puml
- [ ] Class, attribute and actor names match the glossary and domain model

### Documents (Markdown)

- [ ] IDs are used the same way as in the other files
- [ ] Links to other files work

### Gherkin (.feature)

- [ ] Each scenario links to the requirement, rule or use case it covers

### Decision records

- [ ] Dated and includes context, decision, rationale and consequences
- [ ] Approving members are named

### Reviews

- [ ] Review is done by someone other than the card owner
- [ ] Changes from the review are made or the reason for not making them is recorded

### Code

*To be added once the technology decision record is agreed.*

## Not Done if

- Only a draft exists
- It hasn't been reviewed
