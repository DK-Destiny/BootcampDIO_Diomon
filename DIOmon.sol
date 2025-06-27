// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DIOmon is ERC721 {

    struct Diomon{
        string name;
        string img;
        uint level;
    }

    Diomon[] public diomons;
    address public gameOwner;

    constructor () ERC721("Diomons", "DMON"){
        
        gameOwner = msg.sender;
    }

    modifier onlyOwner(uint _monsterId){
        require(ownerOf(_monsterId) == msg.sender, "Voce nao e o proprietario"); 
        _;
    }

    function createNewDiomon(string memory _name, address _to, string memory _img) public {
        require(msg.sender == gameOwner, "Apenas o gameOwner pode ciar novos Diomons");
        uint id = diomons.length;
        diomons.push(Diomon(_name, _img, 0));
        _safeMint(_to, id);
    }

    function battle(uint _attakingDiomon, uint _defendingDiomon) public onlyOwner(_attakingDiomon){
        Diomon storage attacker = diomons[_attakingDiomon];
        Diomon storage defender = diomons[_defendingDiomon];

        if (attacker.level >= defender.level){
            attacker.level += 2;
            defender.level += 1;
        }
        else{
            attacker.level += 1;
            defender.level += 2;
        }
    }

}