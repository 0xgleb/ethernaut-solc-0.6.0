// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Force {
    /*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/
}

contract ForceSend {
    address payable forceContract =
        payable(address(0x5c10310e0494369F51f28798F4BA5dDDdf08dDcf));
    address owner;

    constructor() public payable {
        owner = msg.sender;
    }

    function destroyForce() public {
        require(msg.sender == owner);
        selfdestruct(forceContract);
        forceContract.transfer(address(this).balance);
    }
}
