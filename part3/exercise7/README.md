# Exercise 7
- Original Dockerfile is from exercise 1.7
- Upgraded to use Alpine linux with non-root user. Script stripped from unnecessary bash-stuff.

| Name | Size (unoptimized) | Size (optimized) | Size change % | Runtime (unoptimized) | Runtime (optimized) |
| :--- | :---: | :---: | :---: | :---: | :---: |
| curler | 124MB | 5.6MB | -94,48% | 16s | 2s |