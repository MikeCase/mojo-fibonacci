import time
from sys import arg

fn do_fib(n: Int) -> Int:
    if n < 0:
        print("Incorrect Input")

    elif n == 0:
        return 0

    elif n == 1 or n == 2:
        return 1

    else:
        let fib = do_fib(n-1) + do_fib(n-2)
        return fib
    
    return 0

fn main():
    # This won't work properly until traits are available. 
    # for the fibonacci sequence. 
    # let cmd_args = arg.argv()
    # let cmd_args_length = cmd_args.__len__()
    # if cmd_args_length < 2:
    #     print("Must provide an integer")
    # elif cmd_args_length > 2:
    #     print("Must provide only 1 integer")
    # else:
        # let num: Int = rebind[Int, StringRef](cmd_args.__getitem__(1))
    let start = time.time.now()
    let fib_num = do_fib(40)
    let end = time.time.now()
    let total = (end - start) / 1_000_000_000
    print("Fibonacci: ",fib_num, total, "Secs")
    