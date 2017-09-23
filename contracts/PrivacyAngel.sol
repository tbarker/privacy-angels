pragma solidity ^0.4.8;


contract PrivacyAngel {

    bytes32 public sha256;
    
    function canTransferTo(bytes32 name) returns (bool);
    function requestTransferTo(bytes32 name, address transferee) returns (bool maybe, PrivacyAngel childAngel); // May return null
    function declareTransferTo(bytes32 name, address transferee) returns (PrivacyAngel);
    
    function declareDeletion();
    
    event Retract(); // Event raised if I withdraw the right to use my information
    event TransferredTo(address parent, address child);

}