# drift-sys-kernel-core

`drift-sys-kernel-core` keeps a focused R implementation around systems programming. The project goal is to build an R toolkit that studies kernel behavior through bounded scenario files, with conflict explanations and no credentials or hosted services.

## Why I Keep It Small

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Drift Sys Kernel Core Review Notes

Start with `layout drift` and `allocation pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/drift-sys-kernel-walkthrough.md` walks through the case spread.
- The R code includes a review path for `layout drift` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The R implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The check exercises the source code and the review fixture. `recovery` is the high score at 219; `stale` is the low score at 121.

## Scope

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
