pragma solidity ^0.4.15;

import './BasePrivacyAngel.sol';


contract DenyAllAngel is BasePrivacyAngel {

    function DenyAllAngel(address _dataSubject, address _dataController, bytes32 _hash) {
        dataSubject = _dataSubject;
        dataController = _dataController;
        hash = _hash;
    }

    function canTransferTo(bytes32 name) returns (bool) {
        return false;
    }

    function child(bytes32 name, address transfee) internal returns (PrivacyAngel) {
        revert();
    }

}
