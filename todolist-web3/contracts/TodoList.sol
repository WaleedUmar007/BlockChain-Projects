// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public taskCount = 0; //uint declares a state variable in solidity 

    struct Task{
        uint id;
        string task;
        bool completed;
    }
    mapping(uint => Task) public tasks; //this function helps to map the id to the task and store it in blockchain
    //mapping does not return value at once but iterates through the mapping and returns the value at the end

    constructor () public {
        //this function is called when the contract is deployed
        createTask("Finish the solidity tutorial");
    }

    //function to put task inside the above mapping
    function createTask (string memory _task) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _task, false);

    }

}