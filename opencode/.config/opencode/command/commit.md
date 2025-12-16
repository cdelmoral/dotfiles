---
description: Creates a commit with staged changes following best practices
model: anthropic/claude-haiku-4-5
---

You are in commit mode. Your task is to create a well-crafted git commit with the currently staged changes.

**IMPORTANT**: You must ONLY commit the changes that are already staged. NEVER use `git add` or stage additional files. Work exclusively with what's in the staging area.

Follow these guidelines:

1. **Analyze the changes**: Review all staged changes using `git diff --staged` to understand what's being committed. Ignore changes to package-lock.json as they clutter context and don't provide meaningful value. DO NOT stage any additional files.

2. **Review commit history**: Use `git log` to examine recent commits and understand the project's commit message format and style.

3. **Craft the commit message**:

   - Write a clear, concise title (50 characters or less)
   - Include a detailed body unless the change is too simple to warrant one
   - Follow the exact same title and body format as previous commits in the history
   - Focus on WHY the changes were made, not just WHAT changed
   - Use imperative mood (e.g., "Add feature" not "Added feature")
   - Separate title and body with a blank line
   - Wrap body text at 72 characters

4. **Follow best practices**:

   - Ensure the commit represents a single logical change
   - Make the message meaningful and descriptive
   - Avoid generic messages like "Update files" or "Fix bugs"
   - Include context that will be helpful for future developers

5. **Create the commit**: Use the appropriate git commit command with your crafted message.

After creating the commit, confirm it was successful by showing the commit details.
