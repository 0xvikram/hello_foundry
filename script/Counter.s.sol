//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
import {Script} from "../lib/forge-std/src/Script.sol";
import {Counter} from "../src/Counter.sol";

contract deployCounter is Script {
    function run() external returns (Counter) {
        vm.startBroadcast();
        Counter counter = new Counter();
        vm.stopBroadcast();
        return counter;
    }
}
