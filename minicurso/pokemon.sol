// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.18;

contract Pokemon{
    string nome;
    string pokebola;
    string tipo;
    string nature;
    string ability;
    address private _owner;

    constructor(string memory nomeParam, string memory tipoParam, string memory pokebolaParam, string memory natureParam, string memory abilityParam){
        nome = nomeParam;
        pokebola = pokebolaParam;
        tipo = tipoParam;   
        nature = natureParam;
        ability = abilityParam;
        _owner = msg.sender;
    }

    function getPokemon() view public returns(string memory){
        return nome;
    }
    function setPokemon(string memory nomePokemon) public onlyOwner {
        nome = nomePokemon;
    }

    function getPokebola() view public returns(string memory){
        return pokebola;
    }

    function getTipo() view public returns(string memory){
        return tipo;
    }

    function getNature() view public  returns(string memory){
        return nature;
    }
    function setNature(string memory novaNature) public onlyOwner  {
        nature = novaNature;
    }

    function getAbility() view public returns (string memory){
        return ability;
    }

    function getOwner() view public returns ( address) {
        return _owner;
    }

     modifier onlyOwner() {
        require(_owner == msg.sender, "You do not have permission");
        _;
    }
}