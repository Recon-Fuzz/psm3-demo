
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is BaseTargetFunctions, Properties, BeforeAfter {

    function pSM3_deposit(address asset, address receiver, uint256 assetsToDeposit) public {
        pSM3.deposit(asset, receiver, assetsToDeposit);
    }

    function pSM3_renounceOwnership() public {
        pSM3.renounceOwnership();
    }

    function pSM3_setPocket(address newPocket) public {
        pSM3.setPocket(newPocket);
    }

    function pSM3_swapExactIn(address assetIn, address assetOut, uint256 amountIn, uint256 minAmountOut, address receiver, uint256 referralCode) public {
        pSM3.swapExactIn(assetIn, assetOut, amountIn, minAmountOut, receiver, referralCode);
    }

    function pSM3_swapExactOut(address assetIn, address assetOut, uint256 amountOut, uint256 maxAmountIn, address receiver, uint256 referralCode) public {
        pSM3.swapExactOut(assetIn, assetOut, amountOut, maxAmountIn, receiver, referralCode);
    }

    function pSM3_transferOwnership(address newOwner) public {
        pSM3.transferOwnership(newOwner);
        t(false, "false");
    }

    function pSM3_withdraw(address asset, address receiver, uint256 maxAssetsToWithdraw) public {
        pSM3.withdraw(asset, receiver, maxAssetsToWithdraw);
    }
}