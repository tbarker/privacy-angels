pragma solidity ^0.4.8;


contract ProtectedDataControl {
    
    address public dataSubject;
    address public dataController;

    function ProtectedDataControl() {
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