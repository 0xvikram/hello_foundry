// SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;
// EIP712 is a standard for hashing and signing structured data in a human-redable and secure way.
contrcat EIP712Example{
struct TYPEHASH_Message=
keccak256(
  "Message(adress sender,adress receaver, uint256 amount)"
)

function structHash={
keccak256(
  TYPEHASH_Message,
  receiver,
  amount,
  nonce
)
}
bytes32 DOMAIN_SEPERATOR=keccak256(
  abi.encode(
    keccak256(
      "EIP712DOMain(string name,string version,uint256 chainID,adress verifyingContrcat)"
    ),
    keccak256(bytes("MyApp")),

    keccak256(bytes("1")),
    block.chianId,
    adress(this)
  )
)


}