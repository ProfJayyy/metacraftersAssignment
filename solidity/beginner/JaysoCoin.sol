// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract JaysoCoin {

string public tokenName = "JaysoCoin";

string public tokenAbbrv = "JSC";

uint public totalsupply = 0;

mapping ( address => uint) public balances;

function mint(address user, uint amount ) public {
     totalsupply += amount; 
    balances[user] += amount;
}

function burn(address user, uint amount) public {
    if(amount > balances[user]) {revert("Insuffient number of JaysoCoins to destroy");}

     totalsupply -= amount;
    balances[user] -= amount;

}

}
