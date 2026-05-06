# Drift Sys Kernel Core Walkthrough

I use this file as a small checklist before changing the R implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 169 | ship |
| stress | dirty state | 189 | ship |
| edge | guard slack | 170 | ship |
| recovery | layout drift | 219 | ship |
| stale | allocation pressure | 121 | watch |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
