# Release Notes

Status: Stable  
Last Reviewed: 2026-02-28

## v0.1.2 - 2026-02-28

### Added Files
- CODEOWNERS
- .github/workflows/release-tag.yml
- .github/workflows/ci-master-promotion.yml

### Updated Files
- repo-management.md

### Notes
- Added root ownership mapping with `* @tinmanworks`.
- Added draft GitHub release automation for semantic tags (`v*`) with generated release notes.
- Canonicalized branch promotion flow as `develop -> master` for releases and tagging on `master`.
- Added enforcement check requiring PRs to `master` to originate from `develop`.

## v0.1.1 - 2026-02-28

### Added Files
- cpp-template-family.md

### Updated Files
- README.md
- coding.md
- project-standards.md
- tools/doctrine-bootstrap.sh
- tools/doctrine-bootstrap.ps1

### Notes
- Added thin C/C++ template family doctrine with stable setup and dependency contracts.
- Added generalized setup-friction minimization principles to core standards.
- Updated doctrine bootstrap scripts and kept C/C++-specific doctrine out of generic snapshot copy lists.

## v0.1.0 - 2026-02-28

### Stable Files
- README.md
- AI_CONTEXT.md
- coding.md
- project-standards.md
- repo-management.md
- usernames.md
- templates/doctrine-change-record-template.md
- templates/repo-visibility-note-template.md

### Draft Files
- doctrine-governance.md
- identity.md
- naming.md

### Notes
- First formal doctrine baseline release.
- Repository governance policy, visibility policy, org placement policy, and commit signing policy are now stable.
- Added MIT license (`LICENSE`).
- Identity and naming doctrines remain draft for further iteration.
