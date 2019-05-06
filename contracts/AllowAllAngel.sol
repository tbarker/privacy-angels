pragma solidity ^0.5.7;

import "./BasePrivacyAngel.sol";
import "./AllowAllAngelFactory.sol";


contract AllowAllAngel is BasePrivacyAngel {

    AllowAllAngelFactory private factory;

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

    // solhint-disable-next-line no-unused-vars
    function canTransferTo(bytes32 name) public returns (bool) {
        return true;
    }

    // solhint-disable-next-line no-unused-vars
    function child(bytes32 name, address transferee) internal returns (PrivacyAngel) {
        return factory.createAllowAllAngel(dataSubject, transferee, hash);
    }

}
