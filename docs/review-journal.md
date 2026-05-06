# Review Journal

The review surface for `drift-sys-kernel-core` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 169, lane `ship`
- `stress`: `dirty state`, score 189, lane `ship`
- `edge`: `guard slack`, score 170, lane `ship`
- `recovery`: `layout drift`, score 219, lane `ship`
- `stale`: `allocation pressure`, score 121, lane `watch`

## Note

This file is intentionally plain so the fixture remains the source of truth.
