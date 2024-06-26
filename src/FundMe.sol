//SPDX-Licence-Identifier: MIT


pragma solidity ^0.8.20;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract FundMe{


    error FundMe_NotOwner();

  address  private immutable  i_owner;
AggregatorV3Interface private s_priceFeed;
address private imutable i_owner;
    modifier onlyOwner(){

        if(msg.sender!==i_owner) revert FundMe_NotOwner();
        _;

    }
    constructor(address priceFeed){
s_priceFeed= AggregatorV3Interface(priceFeed);
i_owner=msg.sender;
    }

}
