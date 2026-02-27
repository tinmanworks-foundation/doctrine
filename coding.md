# Coding Preferences

Status: Draft
Last Reviewed: 2026-02-27

## Scope

Defines engineering preferences for projects authored under TinMan.

## Core Philosophy

- Prefer modular architecture.
- Separate core logic from UI.
- Minimize tight coupling.
- Design for long-term scalability.
- Avoid premature optimization.

---

## C++ Guidelines

- Use CMake.
- Prefer modern C++.
- Avoid raw pointers where possible.
- Keep headers minimal.
- Minimize global state.

---

## Project Structure

Prefer clear separation between:

- Core engine
- Interface layer
- Plugins/modules

Avoid monolithic structures.
Prefer layered systems.

---

## AI Usage Rule

When generating code using AI:

- Provide relevant doctrine context.
- Enforce naming conventions.
- Enforce architecture preferences.
- Review before permanent adoption.