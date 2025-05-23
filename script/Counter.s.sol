// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {CounterFoundry} from "../src/CounterFoundry.sol";

contract CounterScript is Script {
    CounterFoundry public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new CounterFoundry();

        vm.stopBroadcast();
    }
}
