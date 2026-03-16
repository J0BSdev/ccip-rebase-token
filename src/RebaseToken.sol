//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";



/*
*title: RebaseToken
*author; Lovro Posel
* @notice 
* @notice 
*/



contract RebaseToken is ERC20 {


error RebaseToken__InterestRateCanOnlydecrease(uint256 oldInterestRate, uint256 newInterestRate);

uint256 private s_interestRate = 5e10;

event InterestRateSet(uint256 newInterestRate);


    constructor() ERC20("RebaseToken", "RBK") {


        

    }

function setInterestRate(uint256 _newInterestRate) external {
    //set the new interest rate
    if (_newInterestRate > s_interestRate) {
        revert RebaseToken__InterestRateCanOnlydecrease(s_interestRate, _newInterestRate);
    }
    s_interestRate = _newInterestRate;
    emit InterestRateSet(_newInterestRate);

}
}