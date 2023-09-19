// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "forge-std/Test.sol";

import "../contracts/Example.sol";

contract ExampleTest is Test {
    Example example;

    function setUp() public {
        // fork testing
        vm.createSelectFork(
            string.concat("https://mainnet.infura.io/v3/", vm.envString("INFURA_API_KEY"))
        );
        example = new Example();
    }

    function testSetValue() public {
        example.setValue(42);
        assertEq(example.value(), 42);
    }
}
