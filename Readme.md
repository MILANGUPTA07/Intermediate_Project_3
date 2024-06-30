Here's the updated README file with the author's name included:

---

# LuciferToken

LuciferToken is an ERC20 token implemented using the Solidity programming language. This smart contract includes functionalities for minting, burning, and transferring tokens, along with event logging for each action.

## Features

- **Minting Tokens**: Allows the owner to mint new tokens to a specified address.
- **Burning Tokens**: Allows any token holder to burn their tokens.
- **Transferring Tokens**: Allows token holders to transfer tokens to another address.
- **Event Logging**: Emits events for minting, burning, and transferring tokens for transparency and tracking.

## Contract Details

- **Token Name**: Lucifer
- **Token Symbol**: LUC

## Functions

### `mintTokens`

```solidity
function mintTokens(address recipient, uint256 amount) public onlyOwner
```

Mints new tokens to the specified `recipient` address. Only the owner can call this function.

### `burnTokens`

```solidity
function burnTokens(uint256 amount) public
```

Burns the specified `amount` of tokens from the caller's account.

### `transferTokens`

```solidity
function transferTokens(address recipient, uint256 amount) public returns (bool)
```

Transfers the specified `amount` of tokens to the `recipient` address.

## Events

- **TokensMinted**: Emitted when tokens are minted.
- **TokensBurned**: Emitted when tokens are burned.
- **TokensTransferred**: Emitted when tokens are transferred.

## Usage

Deploy the contract by specifying the initial owner's address. Once deployed, the owner can mint new tokens, and any token holder can burn or transfer tokens.

## Author

Milan Gupta

---

This README provides an overview of the `LuciferToken` contract, its main features, and usage instructions. Adjust or expand the content as necessary to fit your project's requirements.
