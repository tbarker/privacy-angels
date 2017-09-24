pragma solidity ^0.4.15;

import './BasePrivacyAngel.sol';
import './AllowAllAngelFactory.sol';


contract AllowAllAngel is BasePrivacyAngel {

    AllowAllAngelFactory factory;

    function AllowAllAngel(
        address _dataSubject,
        address dataController,
        bytes32 _hash,
        AllowAllAngelFactory _factory
    ) {
        dataSubject = _dataSubject;
        dataController = dataController;
        hash = _hash;
        factory = _factory;
    }

    function canTransferTo(bytes32 name) returns (bool) {
        return true;
    }

    function child(bytes32 name, address transferee) internal returns (PrivacyAngel) {
        return factory.createAllowAllAngel(dataSubject, transferee, hash);
    }

}
