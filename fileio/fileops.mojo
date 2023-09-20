from python import Python
from python import PythonObject

struct FileOps:
    var filename: StringLiteral
    var mode: StringLiteral
    var bi: PythonObject
    var file: PythonObject


    fn __init__(inout self, filename: StringLiteral, mode: StringLiteral) raises:
        self.bi = Python.import_module("builtins")
        self.filename = filename
        self.mode = mode
        self.file = self.open()
        

    fn open(inout self) raises -> PythonObject:
        let openedFile = self.bi.open(self.filename, self.mode)
        return openedFile

    fn write(inout self, content: StringLiteral) raises:
        _ = self.file.write(content)

    fn read(inout self) raises:
        print(self.file.readline())

    fn __del__(owned self) raises:
        _ = self.file.close()

