// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testCount() public {
        uint256 value = counter.getCount();
        assertEq(value, 10);
        emit log_named_uint("THe value is: ", value);
    }

    function testIncrementCounter() public {
        counter.incrementCounter();
        uint256 value = counter.getCount();
        assertEq(value, 11);
        emit log_named_uint("THe value is: ", value);
    }
}
