from python import Python

fn main():
    try:
        let builtins = Python.import_module("builtins")
        let save = builtins.str(builtins.input("Save a file?"))
        if save.lower() == "yes" or save.lower() == "y":
            let saveFile = builtins.open("test.txt", "w")
            saveFile.write("Test")
            saveFile.close()

    except:
        print("failure")
