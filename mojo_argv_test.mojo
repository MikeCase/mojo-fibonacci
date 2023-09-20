from sys import arg

struct MyArgs:
    var myList: []
    fn __init__(inout self):
    


fn main():
    let cmd_args = arg.argv()
    if cmd_args.__len__() < 2:
        print("Must have at least 1 argument")
    else:
        for arg in range(1, cmd_args.__len__(), 1):
            print(cmd_args.__getitem__(arg))

fn create_arg_list(cmd_args: VariadicList[StringRef]):
    if cmd_args.__len__() < 2:
        print("No arguments to list")

    else:

        for i in range(1, cmd_args.__len__()):

