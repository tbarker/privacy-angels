pragma solidity ^0.4.8;

import './BasePrivacyAngel.sol';


contract DenyAllAngel is BasePrivacyAngel {

    function DenyAllAngel(address _dataSubject, address _dataController, bytes32 _sha256) {
        dataSubject = _dataSubject;
        dataController = _dataController;
        sha256 = _sha256;
    }

    function canTransferTo(bytes32 name) returns (bool) {
        return false;
    }

    function child(bytes32 name, address transfee) internal returns (PrivacyAngel) {
        revert();
    }

}
