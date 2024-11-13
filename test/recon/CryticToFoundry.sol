// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {TargetFunctions} from "./TargetFunctions.sol";
import {FoundryAsserts} from "@chimera/FoundryAsserts.sol";
import "forge-std/console2.sol";

contract CryticToFoundry is Test, TargetFunctions, FoundryAsserts {
    function setUp() public {
        setup();

    }

    function test_crytic() public {
        // TODO: add failing property tests here for debugging
        pSM3_transferOwnership(address(0x123));
    }

    // forge test --match-test test_pSM3_transferOwnership_0 -vv 
 
function test_pSM3_transferOwnership_0() public {
  
   vm.roll(23854);
   vm.warp(227396);
   vm.prank(0x0000000000000000000000000000000000010000);
   pSM3_transferOwnership(0x0000000000000000000000000000000001ffc9a7);
}
		
}
