// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Script} from "forge-std/Script.sol";
import {Books} from "../src/Books.sol";

contract DeployBooks is Script {
    Books public books;


    function run() public {
        books = new Books("Programming Foundry", "Sai Ganesh", 100);
    }
}
