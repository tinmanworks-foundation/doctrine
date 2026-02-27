# Repo Management (Doctrine only)

Status: Draft  
Last Reviewed: 2026-02-27

## Scope

Applies only to this repository.

## Branch Model

- master → stable snapshots (may include Draft files)
- develop → working branch
- feature/* → short-lived heavy refactor branches

## Release Process

1. Create release/vX.Y from develop.
2. On release branch:
   - Promote ready files Draft → Stable.
   - Leave others Draft.
   - Update RELEASE_NOTES.md.
3. Merge release → master.
4. Tag master as vX.Y.

## Document Status

Each file must contain:

- Status: Draft | Stable | Deprecated
- Last Reviewed date

Draft:
May change.

Stable:
Safe for AI copy/paste.

## Tag Meaning

Tags mark stable repository snapshots.
They do not imply all files are Stable.