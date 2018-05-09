pragma solidity ^0.4.23;

import "./BasePrivacyAngel.sol";


contract DenyAllAngel is BasePrivacyAngel {

    constructor(address _dataSubject, address _dataController, bytes32 _hash) public {
        dataSubject = _dataSubject;
        dataController = _dataController;
        hash = _hash;
    }

    function canTransferTo(bytes32 name) public returns (bool) {
        return false;
    }

    function child(bytes32 name, address transfee) internal returns (PrivacyAngel) {
        revert();
    }

}
