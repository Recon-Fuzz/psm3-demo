// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {PSM3} from "spark-psm/src/PSM3.sol";

contract Basic is PSM3 {

    constructor(
        address owner_,
        address usdc_,
        address usds_,
        address susds_,
        address rateProvider_
    ) PSM3(
        owner_,
        usdc_,
        usds_,
        susds_,
        rateProvider_
    ) {
    }
}
