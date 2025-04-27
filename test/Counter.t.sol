// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {CounterFoundry} from "../src/CounterFoundry.sol";

contract CounterTest is Test {
    CounterFoundry public counter;

    function setUp() public {
        counter = new CounterFoundry();
        counter.setCount(0);
    }

    function test_InitialCountIsZero() public view {
        assertEq(counter.getCount(), 0);
    }

    function test_Increment() public {
        counter.incrementCount();
        assertEq(counter.getCount(), 1);
    }

    function test_DecrementCount() public {
        counter.incrementCount();
        counter.decrementCount();
        assertEq(counter.getCount(), 0);
    }

    function test_Reset() public {
        counter.incrementCount();
        counter.incrementCount();
        counter.incrementCount();

        counter.reset();
        assertEq(counter.getCount(), 0);
    }

}
