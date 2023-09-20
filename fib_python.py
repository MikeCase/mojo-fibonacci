from functools import lru_cache
import time

# Python is MUCH slower, do_fib(40) takes 27 seconds vs. Mojo at .3 seconds. 
# However, in this case anyways, you can cheat and use caching via the lru_cache module
# which makes python the undisputed champion :P 

### For cheating uncomment the following line
@lru_cache
def do_fib(n):
    if n < 0:
        print("Incorrect Input")

    elif n == 0:
        return 0

    elif n == 1 or n == 2:
        return 1

    else:
        fib = do_fib(n-1) + do_fib(n-2)
        return fib
    
start = time.time()
fib = do_fib(40) # DO NOT run this with a higher value if you're not using @lru_cache, or do, it's your system. 
end = time.time()
total = (end - start)
print(f"Fibonacci: {fib} in {total} secs")