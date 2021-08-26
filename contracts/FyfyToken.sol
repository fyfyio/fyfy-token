// contracts/FyfyToken.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title FyfyToken
 * @dev ERC20 FyfyToken, where all tokens are pre-assigned to the creator.
 * Note tokens can be later distributed using `transfer` and other `ERC20` functions.
 */
contract FyfyToken is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() ERC20("Fyfy Token", "FYFY") {
        _mint(msg.sender, 100000000 * 10 ** uint256(decimals()));
    }
}
