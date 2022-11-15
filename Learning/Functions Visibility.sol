// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract A {
        function public_func() public pure returns(uint){               //Accessible outside smart contract
            return 1;
        }
        function private_func() private pure returns(uint){
            return 2;
        }
        function internal_func() internal pure returns(uint){
            return 3;
        }
        function external_func() external pure returns(uint){           //Accessible outside smart contract
            return 4;
        }

        function test_func() public pure{       //Accessible within smart contract
            uint a = public_func();
            uint b = private_func();
            uint c = internal_func();
        }
}

contract B is A{                                //Accessible in the derived smart contract
    uint x = public_func();
    uint y = internal_func();
}

contract C{                                     //Accessible in another smart contract
    A x = new A();
    uint public p = x.public_func();
    uint public q = x.external_func();
}