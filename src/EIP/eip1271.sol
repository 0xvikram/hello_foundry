//SPDX:License Identifier MIT;
pragma solidity ^0.8.13;

contract eip1271Example {

  adress public owner;
  constructor(adress _owner){
    owner=_owner;
  }
    //the main logic of eip1271 here hash is the the data that has beend signed and signature contains informtion about the signer of the data
    function isValidSignature(
        bytes32 hash,
        bytes memory signature
    ) view extrenal returns (bytes4) 
    address signer = recover(hash, signature);

        if (signer == owner) {
            return 0x1626ba7e; // VALID
        } else {
            return 0xffffffff; // INVALID}
}
