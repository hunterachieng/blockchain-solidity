//SPDX-License-Identifier:MIT

pragma solidity >=0.6.0 < 0.9.0;
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract FundMe{

//Funds sent to a smart contract become the contract's funds
mapping(address => uint256) public addressToAmountFunded;

//Payable functions are used to pay for things
    function fund() public payable{

addressToAmountFunded[msg.sender] += msg.value;
//Eth-> USD  conversion rate is

//Use a Chainlink to connect to the internet

    }

    function getVersion () public view returns(uint256){
        //Initializing the ABI and getting the price feed address of the  Rinskbey netwok
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return priceFeed.version();
    }
    function getPrice() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        priceFeed.latestRoundData()
    }
}
