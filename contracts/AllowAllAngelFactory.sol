pragma solidity ^0.5.7;

import "./AllowAllAngel.sol";


contract AllowAllAngelFactory {
    function createAllowAllAngel(
        address _dataSubject,
        address _dataController,
        bytes32 _hash
    ) public returns (AllowAllAngel)
    {
        return new AllowAllAngel(_dataSubject, _dataController, _hash, this);
    }
}
