---
description: Reviews GitHub pull requests for quality and best practices
temperature: 0.1
subtask: true
agent: github
---

Review GitHub pull request #$1

Focus on:
- Code quality and best practices
- Potential bugs and edge cases
- Performance implications
- Security considerations

Ignore changes to package-lock.json files.

Provide a constructive feedback summary without making direct changes to the code.
