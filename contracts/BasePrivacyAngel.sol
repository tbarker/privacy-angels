pragma solidity ^0.4.1;

import './PrivacyAngel.sol';
import './ProtectedDataControl.sol';

contract BasePrivacyAngel is PrivacyAngel, ProtectedDataControl
{

    function requestTransferTo(bytes32 name, address transferee)
        returns (bool _maybe, PrivacyAngel _childAngel) // May return null
    {
        _maybe = canTransferTo(name);

        if(_maybe)
        {
            // Spawn an Angel with the same rules
            _childAngel = child(name, transferee);
        } else {
            _childAngel = this;
        }
    }

    function child(bytes32 name, address transferee) internal returns (PrivacyAngel);

    function declareTransferTo(bytes32 name, address transferee)
        returns (PrivacyAngel)
    {
        return child(name, transferee);
    }

    function declareDeletion()
    {
        Retract();
        selfdestruct(dataSubject);
    }
    
}