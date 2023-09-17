from sys import arg

fn main():
    let cmd_args = arg.argv()
    if cmd_args.__len__() < 2:
        print("Must have at least 1 argument")
    else:
        for arg in range(1, cmd_args.__len__(), 1):
            print(cmd_args.__getitem__(arg))