# Hardhat Foundry Template

A template for projects that want to use Hardhat for contract deployment/interactions but write tests in Solidity using Foundry.

- [Hardhat](https://github.com/NomicFoundation/hardhat): compile, run and test smart contracts
- [Foundry](https://github.com/foundry-rs/foundry): Contract tests written in Solidity and linting
- [Typechain](https://github.com/dethcrypto/TypeChain): generate types for compiled contracts
- [Ethers](https://github.com/ethers-io/ethers.js/): EVM chain interactions
- [Prettier Plugin Solidity](https://github.com/prettier-solidity/prettier-plugin-solidity): code formatter

---

# Get Started

Click the [`Use this template`](https://github.com/bridgerz/hardhat-foundry-template/generate) button at the top of the page to use this repository as a template for your own project.

---

# 🏄‍♂️ Quick Start

This project uses [Foundry](https://github.com/foundry-rs/foundry) for the development framework and [Hardhat](https://github.com/NomicFoundation/hardhat) for the deployment framework.

> **Note**
> This project enables upgradeability via the **OpenZeppelin Hardhat Upgrades** method. More info on upgradable contracts can be found [here](https://docs.openzeppelin.com/upgrades-plugins/1.x/proxies). For details on ownership and upgrading, follow [this](https://forum.openzeppelin.com/t/openzeppelin-upgrades-step-by-step-tutorial-for-hardhat) tutorial.

#### Dependencies

1. Install **node** dependencies

```bash
yarn install
```

2. Next, duplicate the `.env.example` file and rename it to `.env`. Register for an **Infura** account and add your api key to the `.env` file along with the other example values:

```bash
INFURA_API_KEY=<YOUR_API_KEY>
```

#### Compilation

To compile your contracts, run:

```bash
yarn compile
```

> **Note**
> After compilation, the hardhat _**TypeChain**_ extension automatically generates TypeScript bindings for each contract. These bindings can be found in the `/types` directory.

#### Testing

```bash
yarn test
```

#### Coverage

```bash
forge coverage
```
