//migrations help to change the state of blockchain. Think of it as database being updated.
//the no before the file names of migrations is the order in which they are run in the blockchain by truffle.
//use truffle.migrate to run the migrations.

const TodoList = artifacts.require("TodoList");

module.exports = function(deployer) {
  deployer.deploy(TodoList);
};