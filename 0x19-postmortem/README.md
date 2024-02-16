# Issue Summary

From 5:00 am to 9:00 pm PT, while we check our code in 'simple shell' project since the ALX checker will open, we discovered all checkers is fail though the code is work. After investigation we discovers there are memory leaks and that's highly consider in the checker. This issue affected 80% on our score. you have to fix the leaks to the code is pass.

# time line

5:00 am the code doesn't pass
5:10 am check the source code
5:15 am found the leaks in code is some cases.
6:00 am found unfreable allocate memory
7:00 am each fix check the leaks
9:00 all leaks fix the code is pass

# Root Cause

our focus during the project how it work. and it's not enough because the excusions consume alot of stack memory so must be use the heap by allocate the memory for variable and memory. if you do that you have to get focuse when and where free the heap. and that's we have done when review our code.

# Resolution and recovery

each condition that handle edge case or normal case, don't forget free the heap before exiting.

track the variable untile do it job then free it gentlly.

each scale in you code you should test your leaks on the memory in different cass.

# Corrective and Preventative Measures

use valgrind to check the leaks.
