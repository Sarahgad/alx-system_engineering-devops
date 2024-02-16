# Mastering Memory Management: A Journey Through Debugging Memory Leaks

## Issue Summary

Between 5:00 am and 9:00 pm PT, during our code review for the 'simple shell' project, we encountered persistent failures in the ALX checker despite the code functioning correctly. Upon investigation, we identified memory leaks, which significantly impacted our score, resulting in an 80% reduction. Addressing these leaks was crucial for the code to pass.

## Timeline

5:00 am: Code fails checker.
5:10 am: Review source code.
5:15 am: Identify memory leaks in some cases.
6:00 am: Discover unfreeable allocated memory.
7:00 am: Address leaks with each fix.
9:00 am: All leaks fixed; code passes.

## Root Cause

Our focus during the project was primarily on functionality, neglecting memory management considerations. Excessive stack memory consumption due to uncontrolled allocations became evident. Transitioning to heap memory allocation was necessary to manage memory more efficiently. Thus, we conducted a thorough review of our code to ensure proper memory deallocation.

## Resolution and Recovery

- Ensure heap memory is freed before exiting functions, especially in edge cases.
- Track variables until their completion and free memory accordingly.
- Conduct comprehensive memory leak tests across various scenarios.

## Corrective and Preventative Measures

Utilize tools like Valgrind to detect memory leaks during development.

Implementing these measures will not only address current issues but also prevent similar problems in future projects. Remember, effective memory management is essential for robust software performance and reliability.
