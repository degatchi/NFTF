// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

error NoAccess(address given, address desired);
contract Fund {

    struct User {
        uint256 deposited;
        // Timestamp of last deposit.
        uint256 lastDeposit;
    }

    mapping(address => User) public user;

    address payable public manager;

    modifier onlyManager() {
        if (msg.sender != manager) revert NoAccess(msg.sender, manager);
        _;
    }

    /// @notice Allows investors to fund the manager.
    function deposit() external payable {

    }

    /// @notice Fund manager proposes to buy `nft` from the desired marketplace.
    function propose_purchase(address nft) external onlyManager {

    }

    function sell(address target, bytes calldata data) external onlyManager {

    }

    receive() external payable {}
}
