pragma solidity ^0.4.15;

import './PrivacyAngel.sol';
import './ProtectedDataControl.sol';


contract BasePrivacyAngel is PrivacyAngel, ProtectedDataControl {

    function requestTransferTo(bytes32 name, address transferee)
        returns (bool maybe, PrivacyAngel childAngel) // May return null
    {
        maybe = canTransferTo(name);

        if (maybe) {
            // Spawn an Angel with the same rules
            childAngel = child(name, transferee);
        } else {
            childAngel = this;
        }
    }

    function child(bytes32 name, address transferee) internal returns (PrivacyAngel);

    function declareTransferTo(bytes32 name, address transferee)
        returns (PrivacyAngel)
    {
        return child(name, transferee);
    }

    function declareDeletion() {
        Retract();
        selfdestruct(dataSubject);
    }
    
}