// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./IGameItemCommon.sol";

interface IMETRToken is IGameItemCommon{

    ////////////
    // EVENTS
    ////////////

    /// @notice Emits event that an amount of METR token has been minted
    /// @dev Emits event that an amount of METR token has been minted
    /// @param account The address that received the METR
    /// @param amount The amount of METR that was minted
    event METRMinted(address indexed account, uint256 indexed amount);

    /// @notice Emits event that an amount of METR token has been burned
    /// @dev Emits event that an amount of METR token has been burned
    /// @param account The address that was deprived the METR
    /// @param amount The amount of METR that was burned
    event METRBurned(address indexed account, uint256 indexed amount);

    ////////////
    // FUNCTIONS
    ////////////

    /// @notice Creates METR Tokens
    /// @dev Mints METR tokens for a specific address
    function mintToken(address account, uint256 amount) external;

    /// @notice Destroys METR Tokens
    /// @dev Burns METR tokens for a specific address
    function burnToken(address account, uint256 amount) external;

    /// @notice Allows a GameItem contract to mint/burn tokens on this contract
    /// @dev Grants an inputted GameItem contract the minter and burner role
    function grantRolesToGameItem(address account, string memory digitalKey) external;

    ////////////
    // ERRORS
    ////////////

    /// @notice Amount supplied isn't a positive number
    error NotPositiveValue();

}