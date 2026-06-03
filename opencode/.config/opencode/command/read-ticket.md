---
description: Reads and summarizes a Jira ticket
temperature: 0.1
subtask: true
agent: atlassian
---

Read Jira ticket $1 and create a new markdown file using the jira ticket number as the file name that contains the following:

- Title
- Status
- Description
- Acceptance Criteria
- OPTIONAL: Open questions and key risks
- OPTIONAL: Context for the ticket (e.g. parent epic, related tickets, etc.)
