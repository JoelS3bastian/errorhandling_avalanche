//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract metabuilding{
    uint[] public fibSeries;
     constructor() {
        uint a = 0;
        uint b = 1;
        fibSeries.push(a);
        fibSeries.push(b);
        
        for (uint i = 2; i < 100; i++) {
            uint result = a + b;
            fibSeries.push(result);
            a = b;
            b = result;
        }
    }
    function isArmstrong(uint256 number) public pure returns (string memory) {
        uint256 tempNumber = number;
        uint256 sum = 0;
        uint256 numberOfDigits = 0;

        
        while (tempNumber != 0) {
            tempNumber /= 10;
            numberOfDigits++;
        }

        
        tempNumber = number;

        
        while (tempNumber != 0) {
            uint256 digit = tempNumber % 10;
            sum += power(digit, numberOfDigits);
            tempNumber /= 10;
        }

        require(sum==number,"It is not an armstrong number");
        return "It is an armstrong number";
    }

    function power(uint256 base, uint256 exponent) internal pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }
    function isFibonacci(uint num) public view returns (string memory) {
    for (uint i = 0; i < 100; i++) {
        if (fibSeries[i] == num) {
            return "You have entered a valid Fibonacci number";
        }
    }

    assert(false);
    return "Will never execute this line"; 
}
function isPalindrome(uint num) public pure {
        uint reversed = 0;
        uint original = num;
        
        while (num != 0) {
            uint digit = num % 10;
            reversed = reversed * 10 + digit;
            num /= 10;
        }
        
        if (original != reversed) {
            revert("The number is not a palindrome");
        }
    }



}
