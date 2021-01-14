pragma solidity ^0.5.0;
/**+-VER LOS COMÁNDOS BÁSICOS DE TRUFFLE EN:_
https://www.trufflesuite.com/docs/truffle/reference/truffle-commands .*/
contract ToDoList {
  uint taskCount = 0;

  /**+-Las "Struct" de Solidity son como los "Models"(La Estructura Modelo de Datos) en los que se basan los "Documents" de las Bases de Datos.*/
  struct Task {
    uint id;
    string content;
    bool completed;
  }
/**+-Mapping in Solidity:_ https://www.geeksforgeeks.org/solidity-mappings/ */
  mapping(uint => Task) public tasks;

event TaskCreated(
  uint id,
  string content,
  bool completed
);

event TaskCompleted(
  uint id,
  bool completed
);

constructor() public {
  createTask('Drink 2 litters of water every day.');
}

  function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);
/**+-I will explain this function:_

1-First, we create the function with the function keyword, and give it a name createTask()
2-We allow the function to accept one argument called "_content", which will be the text for the task. 
We specify that this argument will be of "string" data type, and that it will persist in "memory".
3-We set the function visibility to "public" so that it can be called outside of the smart contract, like in the console,
 or from the client side for example.
4-Inside the function, we create an "id" for the new task. We simply take the existing taskCount and increment it by 1.
5-Now we create a new task "Document" based on the "struct" by calling Task(taskCount, _content, false); and passing in the values for the new task.
6-Next, we store the new task on the Blockchain by adding it to the tasks mapping like this: task[taskCount] = ..... .*/
    emit TaskCreated(taskCount, _content, false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
  }

}