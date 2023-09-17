import time

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
fib = do_fib(40)
end = time.time()
total = (end - start)
print(f"Fibonacci: {fib} in {total} secs")