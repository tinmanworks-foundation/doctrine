# Repo Management (Doctrine only - this repo)

Status: Draft
Last Reviewed: 2026-02-27

## Scope
These rules apply only to this repository.

## Branch Model
- master: stable snapshots of the repository (may include Draft documents)
- develop: working branch (Drafts expected)
- feature branches: short-lived, used only for heavy refactors (feat/*)

## Release Process
1. Create a release branch from develop: release/vX.Y
2. On the release branch:
   - Promote only ready documents from Draft -> Stable
   - Leave other documents as Draft
   - Add/Update RELEASE_NOTES.md with a manifest of Stable vs Draft files
3. Merge release branch into master
4. Tag on master: vX.Y

## Document Status Rules
- Each doctrine file must include:
  - Status: Draft | Stable | Deprecated
  - Last Reviewed: YYYY-MM-DD
- Draft files may be included in releases but are not considered authoritative for copy/paste usage.
- Stable files are considered safe to copy/paste into AI contexts.

## Tag Meaning
- vX.Y tags mark a stable repository snapshot.
- Tags do not imply every file is Stable.