// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
/**+-VER LOS COMÁNDOS BÁSICOS DE TRUFFLE EN:_
https://www.trufflesuite.com/docs/truffle/reference/truffle-commands .*/
contract Migrations {
  address public owner = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
