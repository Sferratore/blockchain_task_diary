# TaskDiary Smart Contract
This project implements an essential task diary on Ethereum, allowing users to create and manage tasks (marking them as completed or not).

## Requirements
- Truffle

## Project Installation

### Clone the Repository
```
git clone <REPOSITORY_URL>
cd task-diary
```

### Install Truffle

If you don't have Truffle installed yet, install it globally:

```
npm install -g truffle
```

### Configure truffle-config.js

Set up the `truffle-config.js` file to use the local development network provided by Truffle:

```
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 9545,
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.8.6",
    },
  },
};
```

### Start Truffle Development Network

Truffle provides an integrated development network, which you can start with the following command:

```
truffle develop
```

### Compile Contracts

Make sure your Solidity contracts are compiled:

```
truffle compile
```

### Run Migration

Deploy your contracts to the local development network:

```
truffle migrate --network development
```

## Interacting with the Blockchain

You can use the Truffle Console to interact with the deployed contract. Here are some example commands:

### Open Truffle Console

If you're already using `truffle develop`, the console will open automatically. Otherwise, you can open a new console with:

```
truffle console --network development
```

### Get Contract Instance

```
let instance = await TaskDiary.deployed();
```

### Create a New Task

```
await instance.createTask("Complete blockchain project");
```

### Retrieve a Task

```
let task = await instance.tasks(1);
console.log(task);
```

### Toggle a Task

```
await instance.toggleTask(1);
```

### Verify Task State Change

```
task = await instance.tasks(1);
console.log(task);
```
