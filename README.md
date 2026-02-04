# claude-profiles

Manage multiple Claude configuration profiles. Different repos can use different Claude configurations via the `CLAUDE_CONFIG_DIR` environment variable.

## Installation

```bash
brew tap jonathanellis/tap
brew install claude-profiles
```

Then restart your shell (or `source ~/.zshrc`).

## Usage

```bash
# Create profiles
claude-profiles create work
claude-profiles create personal

# In a repo, set which profile to use
cd ~/work/project
claude-profiles use work

# Now 'claude' automatically uses the work profile in this repo
claude
```

## Commands

| Command | Description |
|---------|-------------|
| `install` | Install shell integration |
| `uninstall` | Remove shell integration |
| `list` | List all available profiles |
| `create <name>` | Create a new profile |
| `delete <name>` | Delete a profile |
| `use <name>` | Set profile for current repo |
| `current` | Show current repo's profile |

## How it works

- Profiles are stored in `~/.claude-profiles/<name>/`
- Each repo can have a `.claude/profile` file containing the profile name
- The shell integration wraps `claude` to automatically set `CLAUDE_CONFIG_DIR`
- If no profile is set, the default `~/.claude` config is used
