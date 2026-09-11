# Application Answer - Data Quality Issue

**Question:** Describe a time you found a data quality issue that no one else had noticed. How did you discover it, what was the root cause, and what did you do to fix it?

---

While working on our alpha computation pipeline, I noticed that the output of a strategy had changed between two runs. That should have been impossible: the alpha algorithm is fully deterministic, so the same input must always produce the same output. When I raised it, the data team told me with full confidence that the input data was identical across both runs.

I trusted the invariant over the assurance. If the algorithm is deterministic and the output changed, then the input had to have changed somewhere, even if it did not look that way. I started on my own side first, re-checking the algorithm and the logs. Because the datasets are large, we only log the last few rows, and those rows matched, so on the surface everything looked the same. That was not enough to explain it, so I crossed the boundary into the data service itself, read through its logs, and traced the code path that produced the data we consumed.

The root cause was a silent bad deployment. A developer on the data team had pushed a bug fix on Friday afternoon, but at that exact time we were running scheduled server maintenance. The deploy job never finished: the code was pushed, but the build failed, so the service was quietly still running the old, buggy code and serving subtly wrong data. Three things had to line up at once for this to slip through: the fix landing on a Friday afternoon, the maintenance window overlapping it, and a push that succeeded while its build silently failed. No alert fired, which is why no one had noticed.

Once I identified it, I flagged it to the data team with the trace, got the correct build deployed, and confirmed the alpha output became consistent again.
