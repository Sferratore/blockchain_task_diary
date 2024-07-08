var TaskDiary = artifacts.require("./TaskDiary.sol");

module.exports = function(deployer) {
  deployer.deploy(TaskDiary);
};