# Field Notes

`drift-sys-kernel-core` is easiest to review by starting with the fixture, not the prose.

The domain cases cover `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The model rewards signal and confidence, then pulls back for drag. In this fixture, `stale` shows where that pullback matters most.

The point is not to make the repository bigger. The point is to make the important judgment testable.
