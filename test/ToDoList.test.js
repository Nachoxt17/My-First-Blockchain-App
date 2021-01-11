const { assert } = require("chai");

const ToDoList = artifacts.require("./ToDoList.sol");

contract("ToDoList", (accounts) => {
  before(async () => {
    this.toDoList = await ToDoList.deployed();
  });

  it("deploys successfully", async () => {
    const address = await this.toDoList.address;
    assert.notEqual(address, 0x0);
    assert.notEqual(address, "");
    assert.notEqual(address, null);
    assert.notEqual(address, undefined);
  });
});

it("lists tasks", async () => {
  const taskCount = await this.toDoList.taskCount();
  const task = await this.toDoList.tasks(taskCount);
  assert.equal(task.id.toNumber(), taskCount.toNumber());
});
