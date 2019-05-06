pragma solidity ^0.5.7;


contract ProtectedDataControl {
    
    address public dataSubject;
    address public dataController;

    constructor() public {
        dataSubject = msg.sender;
    }

    modifier onlyDataSubject() {
        if (msg.sender != dataSubject) {
            revert();
        }
        _;
    }

    modifier onlyDataController() {
        if (msg.sender != dataSubject) {
            revert();
        }

        _;
    }

}