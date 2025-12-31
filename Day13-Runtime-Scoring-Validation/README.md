# Day 13: Runtime Scoring & Validation

## Objective
Validate runtime syscall anomaly detection by scoring normal and abnormal traces.

## Work Done
- Generated syscall score distributions
- Saved results as:
  - `scores_normal.npy`
  - `scores_abnormal.npy`
- Visualized score separation
- Verified statistical properties of anomaly scores

## Key Insight
Runtime anomaly detection depends more on **distribution separation** than absolute scores.

## Status
Completed
