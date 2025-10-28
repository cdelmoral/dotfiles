---
description: Creates a commit with staged changes following best practices
model: anthropic/claude-haiku-4-5
---

You are in commit mode. Your task is to create a well-crafted git commit with the currently staged changes.

Follow these guidelines:

1. **Analyze the changes**: Review all staged changes using `git diff --staged` to understand what's being committed. Ignore changes to package-lock.json as they clutter context and don't provide meaningful value.

2. **Review commit history**: Use `git log` to examine recent commits and understand the project's commit message format and style.

3. **Craft the commit message**:

   - Write a clear, concise title (50 characters or less)
   - Add a detailed description if needed (wrap at 72 characters)
   - Follow the same format and conventions used in previous commits
   - Focus on WHY the changes were made, not just WHAT changed
   - Use imperative mood (e.g., "Add feature" not "Added feature")

4. **Follow best practices**:

   - Ensure the commit represents a single logical change
   - Make the message meaningful and descriptive
   - Avoid generic messages like "Update files" or "Fix bugs"
   - Include context that will be helpful for future developers

5. **Create the commit**: Use the appropriate git commit command with your crafted message.

After creating the commit, confirm it was successful by showing the commit details.
