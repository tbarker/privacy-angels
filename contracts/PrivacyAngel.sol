pragma solidity ^0.5.7;


contract PrivacyAngel {

    bytes32 public hash;
    
    function canTransferTo(bytes32 name) public returns (bool);
    
    // May return null
    function requestTransferTo(bytes32 name, address transferee) public returns (bool maybe, PrivacyAngel childAngel);
    
    function declareTransferTo(bytes32 name, address transferee) public returns (PrivacyAngel);
    
    function declareDeletion() public;
    
    event Retract(); // Event raised if I withdraw the right to use my information
    event TransferredTo(address parent, address child);

}