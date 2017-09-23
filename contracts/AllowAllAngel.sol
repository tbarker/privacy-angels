pragma solidity ^0.4.8;

import './BasePrivacyAngel.sol';
import './AllowAllAngelFactory.sol';


contract AllowAllAngel is BasePrivacyAngel {

    AllowAllAngelFactory factory;

    function AllowAllAngel(
        address _dataSubject,
        address dataController,
        bytes32 _sha256,
        AllowAllAngelFactory _factory
    ) {
        dataSubject = _dataSubject;
        dataController = dataController;
        sha256 = _sha256;
        factory = _factory;
    }

    function canTransferTo(bytes32 name) returns (bool) {
        return true;
    }

    function child(bytes32 name, address transferee) internal returns (PrivacyAngel) {
        return factory.createAllowAllAngel(dataSubject, transferee, sha256);
    }

}
