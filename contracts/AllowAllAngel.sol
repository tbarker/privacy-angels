pragma solidity ^0.4.23;

import "./BasePrivacyAngel.sol";
import "./AllowAllAngelFactory.sol";


contract AllowAllAngel is BasePrivacyAngel {

    AllowAllAngelFactory factory;

    constructor(
        address _dataSubject,
        address dataController,
        bytes32 _hash,
        AllowAllAngelFactory _factory
    ) public {
        dataSubject = _dataSubject;
        dataController = dataController;
        hash = _hash;
        factory = _factory;
    }

    function canTransferTo(bytes32 name) public returns (bool) {
        return true;
    }

    function child(bytes32 name, address transferee) internal returns (PrivacyAngel) {
        return factory.createAllowAllAngel(dataSubject, transferee, hash);
    }

}
