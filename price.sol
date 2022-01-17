// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract helloWorld {
    
    function seePrice(address _address) public view returns (uint256) {
       (    uint80 roundID, 
            int256 price,
            uint256 startedAt,
            uint256 timeStamp,
            uint80 answeredInRound) = AggregatorV3Interface(_address).latestRoundData();
       uint8 decimals = AggregatorV3Interface(_address).decimals();
       return uint256(price)/10**uint256(decimals);
    }
}
