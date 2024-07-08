/**
 * Questo script di migrazione è utilizzato da Truffle per distribuire il contratto TaskDiary.
 */

var TaskDiary = artifacts.require("./TaskDiary.sol");

module.exports = function(deployer) {
  // Deploy del contratto TaskDiary
  deployer.deploy(TaskDiary);
};
