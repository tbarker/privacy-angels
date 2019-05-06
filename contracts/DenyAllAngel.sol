pragma solidity ^0.5.7;

import "./BasePrivacyAngel.sol";


contract DenyAllAngel is BasePrivacyAngel {

    constructor(address _dataSubject, address _dataController, bytes32 _hash) public {
        dataSubject = _dataSubject;
        dataController = _dataController;
        hash = _hash;
    }

    // solhint-disable-next-line no-unused-vars
    function canTransferTo(bytes32 name) public returns (bool) {
        return false;
    }

    // solhint-disable-next-line no-unused-vars
    function child(bytes32 name, address transfee) internal returns (PrivacyAngel) {
        revert();
    }

}
