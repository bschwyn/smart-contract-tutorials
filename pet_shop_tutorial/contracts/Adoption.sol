pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters;


    //function parameters and output must be specified
    function adopt(uint petId) public returns (uint) {
        //make sure id in range of adopters array
        require(petId >= 0 && petId <= 15);
        //if in array range, then add address that made call to array
        //adopters looks like: [0,0,0,0, address of adopter, 0,0,]
        adopters[petId] = msg.sender;

        //return id that was given to adopt function
        return petId;
    }

    //Retrieving the adopters
    //public view means disallows modification of state
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}