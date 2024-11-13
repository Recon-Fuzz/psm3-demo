// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";
import "src/Basic.sol";
import {MockRateProvider} from "spark-psm/test/mocks/MockRateProvider.sol";
import {MockERC20} from "spark-psm/lib/erc20-helpers/src/MockERC20.sol";

abstract contract Setup is BaseSetup {
    MockRateProvider mockRateProvider;
    MockERC20 mockERC20;
    Basic pSM3;

    function setup() internal virtual override {
        mockRateProvider = new MockRateProvider();
        mockRateProvider.__setConversionRate(1e18);

        pSM3 = new Basic(
            address(address(this)),
            address(new MockERC20("symbol", "name", 18)),
            address(new MockERC20("symbol", "name", 18)),
            address(new MockERC20("symbol", "name", 18)),
            address(mockRateProvider)
        );
    }
}
