//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//the main logic of the eip165 is here

interface ERC165 {
    function supportsInterface(uint4 InterfaceId) view ectrernal returns (bool);
}

//Implemematatio  of the ERC165
contract MyNft is ERC165, ERC721 {
    function supportsInterface(
        uint4 interfaceId
    ) public view virtual override extrenal returns (bool) {
        return
            interfaceId = type(ERC721).interfaceId || interfaceId =
                type(ERC165).interfaaceId ||
                super.supportsInterface(InterfaceId);
    }
}
