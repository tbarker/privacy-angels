pragma solidity ^0.4.8;

import './AllowAllAngel.sol';


contract AllowAllAngelFactory {
    function createAllowAllAngel(
        address _dataSubject,
        address _dataController,
        bytes32 _sha256
    ) returns (AllowAllAngel)
    {
        return new AllowAllAngel(_dataSubject, _dataController, _sha256, this);
    }
}
