// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/// @title BasicEthBank - Decentralized Bank Management System
/// @author Lokesh Chawan (Roll No: 6706)
/// @notice A simple decentralized bank built on Ethereum using smart contracts
/// @dev Deployed via Remix IDE | M.Sc. IT Semester IV, Pillai College, New Panvel (2025-26)
/// @custom:guide Prof. Abhijeet Salvi

contract BasicEthBank {

    // -------------------------------------------------------
    // [1] Mapping to store each user's bank balance
    // -------------------------------------------------------
    mapping(address => uint) public bankBalances;

    // -------------------------------------------------------
    // Events for transparency and off-chain tracking
    // -------------------------------------------------------
    event Deposited(address indexed user, uint amount);
    event Withdrawn(address indexed user, uint amount);

    // -------------------------------------------------------
    // [2] Deposit ETH into the bank
    // -------------------------------------------------------
    /// @notice Allows a user to deposit Ether into their bank account
    /// @dev msg.value is added to the caller's balance mapping
    function depositETH() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        bankBalances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    // -------------------------------------------------------
    // [3] Withdraw ETH from the bank
    // -------------------------------------------------------
    /// @notice Allows a user to withdraw Ether from their bank account
    /// @param _amount The amount of Wei to withdraw
    function withdrawETH(uint _amount) public {
        uint userBalance = bankBalances[msg.sender];
        require(userBalance >= _amount, "Error1 - Withdraw canceled: Insufficient balance");
        require(_amount > 0, "Withdraw amount must be greater than 0");

        bankBalances[msg.sender] = userBalance - _amount;

        (bool success, ) = msg.sender.call{value: _amount}("");
        require(success, "Error2 - Withdraw canceled: Transfer failed");

        emit Withdrawn(msg.sender, _amount);
    }

    // -------------------------------------------------------
    // [4] Check balance of any address
    // -------------------------------------------------------
    /// @notice Returns the bank balance of a given address
    /// @param _user The wallet address to query
    /// @return The balance in Wei
    function getBalance(address _user) public view returns (uint) {
        return bankBalances[_user];
    }

    // -------------------------------------------------------
    // [5] Get caller's own balance (convenience function)
    // -------------------------------------------------------
    /// @notice Returns the caller's own bank balance
    function myBalance() public view returns (uint) {
        return bankBalances[msg.sender];
    }

    // -------------------------------------------------------
    // [6] Get total ETH held by the contract
    // -------------------------------------------------------
    /// @notice Returns the total ETH stored in the contract
    function contractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
