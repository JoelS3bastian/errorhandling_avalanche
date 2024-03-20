# MetaBuilding Contract
This Solidity contract contains functions to check whether a given number is an Armstrong number, Fibonacci number, or palindrome. It also initializes an array with the first 100 Fibonacci numbers.
## Description

* isArmstrong(uint256 number)
Checks if the given number is an Armstrong number. An Armstrong number is a number that is equal to the sum of its own digits raised to the power of the number of digits.

* isFibonacci(uint num)
Checks if the given number is a Fibonacci number by iterating through a pre-generated array of the first 100 Fibonacci numbers.

* isPalindrome(uint num)
Checks if the given number is a palindrome, meaning it reads the same forwards and backwards.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., joelerrorhandling.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile joelerrorhandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "joelerrorhandling" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors
 JOEL.SEBASTIAN  
email: j0els3bstian@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
