pragma solidity ^0.4.1;

contract ProtectedDataControl {

  address public dataSubject;
  address public dataController;

  function ProtectedDataControl() {
    dataSubject = msg.sender;
  }

  modifier onlyDataSubject() {
    if (msg.sender != dataSubject) {
      throw;
    }
    _;
  }

  modifier onlyDataController() {
    if (msg.sender != dataSubject) {
      throw;
    }
    _;
  }
    
}