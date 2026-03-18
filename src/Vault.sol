// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract Vault{
//we need to pass token address to the constructor
//create deposit fucntion thaht mints tokens to the user equal to the amount of ETH the user is depositing
//create a redeem function that burns tokens from the user
//creat a way to add rewards to the vault
address private immutable i_rebaseToken;

event Deposit(address indexed user, uint256 amount);


constructor(address _rebaseToken){
    i_rebaseToken = _rebaseToken;

}


receive() external payable {}



function deposit() external payable {
    //1. we need to use the amount of ETH the user has sent to mint tokens to the user
    i_rebaseToken.mint(msg.sender, msg.value);
    emit Deposit(msg.sender, msg.value);

}

function getRebaseTokenAddress() external view returns (address){
    return i_rebaseToken;
}
}