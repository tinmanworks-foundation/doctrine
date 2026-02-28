# Doctrine Bootstrap Tools

Bootstrap scripts copy doctrine baseline files into another repository so AI agents and contributors follow the same engineering rules.

## Scripts

- `doctrine-bootstrap.sh` for macOS/Linux (Bash)
- `doctrine-bootstrap.ps1` for Windows PowerShell (also works with PowerShell Core on macOS/Linux)
- `doctrine-bootstrap.cmd` wrapper for Windows Command Prompt

## Usage

### Bash

```bash
./tools/doctrine-bootstrap.sh /path/to/target-repo
./tools/doctrine-bootstrap.sh --force /path/to/target-repo
```

### PowerShell

```powershell
.\tools\doctrine-bootstrap.ps1 -TargetRepo C:\path\to\target-repo
.\tools\doctrine-bootstrap.ps1 -TargetRepo C:\path\to\target-repo -Force
```

### CMD

```cmd
tools\doctrine-bootstrap.cmd C:\path\to\target-repo
tools\doctrine-bootstrap.cmd -Force C:\path\to\target-repo
```

## Files Copied

- `AGENTS.md`
- `AI_CONTEXT.md`
- `docs/doctrine/*.md` doctrine snapshot files
- `docs/doctrine/templates/*.md` helper templates
