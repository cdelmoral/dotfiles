# Usage Notes

## Manage Sessions

- Create new session: `tmux new -s {session-name}`
- Attach existing session: `tmux a -t {session-name}`
- Detach current session: `C-b d`
- Select session interactively: `C-b s`

## Manage Windows

- Create new window in current session: `C-b c`
- Rename current window: `C-b ,`
- Switch to last viewed window: `C-b l`
- Select window interactively: `C-b w`
- Bring a separate window as pane to current window: `C-b :join-pane {session-name}:{window-name}`
- Separate panes in current window into separate windows: `C-b :break-panes`
