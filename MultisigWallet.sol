pragma solidity ^0.4.0;

 
contract MultiSigWallet {
  //define the creator of the wallet

    address private _owner;

    mapping(address => uint8) private _owners; //how much they deposit
    modifier isOwner() { 

    require(msg.sender == _owner);
    _;
    }

    function MultiSigWallet() public {

        _owner = msg.sender;
    }

    function addOwner(address newOwner)
       isOwner
       public {
           _owners[newOwner] = 1;
       }
      
      function removeOwner(address existingOwner) {
          isOwner
          public {
              
          }
      }

}