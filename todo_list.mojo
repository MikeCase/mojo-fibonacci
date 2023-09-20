from utils.vector import InlinedFixedVector

struct TodoList[size: Int]:
    var tasks: InlinedFixedVector[size, StringLiteral]

    fn __init__(inout self, capacity: Int):
        self.tasks.__init__(capacity)
    
    fn addTask(inout self, desc: StringLiteral, isComplete: Bool = False):
        if isComplete:
            print("Task: ", desc, " Is Complete")
        else:
            self.tasks.append(desc)
            print("Added Task: ", desc)
        
    fn completeTask(inout self, desc: StringLiteral):
        let tasksLength: Int = self.tasks.__len__()
        var tempPT: InlinedFixedVector[size, StringLiteral] = InlinedFixedVector[size, StringLiteral](tasksLength)

        for x in range(0, tasksLength):
            let task = self.tasks.__getitem__(x)
            if task != desc:
                tempPT.append(task)
            else:
                print("Completed Task: ", task)

        self.tasks.clear()
        self.tasks = tempPT

    fn displayTasks(inout self):
        let tasksLength = self.tasks.__len__()

        if tasksLength > 0:
            print("\nDisplaying Tasks")

            for x in range(0, tasksLength):
                let task = self.tasks.__getitem__(x)
                print(x+1, "-", "Task: ", task)




fn main():
    var todo = TodoList[10](20)
    todo.addTask("Task 1")
    todo.addTask("Task 2")
    todo.addTask("Task 3")

    todo.displayTasks()
    todo.completeTask("Task 1")
    todo.displayTasks()
    todo.addTask("Task 4")
    todo.displayTasks()
    for x in range(0, 19):
        let num: StringLiteral = rebind[StringLiteral, Int](x)
        todo.addTask("Task "+ num)

    todo.displayTasks()