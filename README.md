# 🏦 Decentralized Bank Management System

> A blockchain-based banking system built with Solidity smart contracts on the Ethereum network — deployed via Remix IDE and integrated with MetaMask.

---

## 👤 Author

**Lokesh Chawan** — Roll No: 6706
**GitHub:** [@lokeshchawan](https://github.com/lokeshchawan)
**Guide:** Prof. Abhijeet Salvi
**Institution:** Mahatma Education Society's Pillai College of Arts, Commerce & Science (Autonomous), New Panvel
**Program:** Master of Science in Information Technology (M.Sc. IT) — Semester IV (2025–26)
**Subject:** Blockchain (CA-II Project)

---

## 📌 Project Overview

Traditional banking systems rely on centralized databases controlled by a single authority, making them vulnerable to cyberattacks, data manipulation, and single-point failures.

This project builds a **Decentralized Bank Management System** using **Ethereum blockchain** and **Solidity smart contracts** to manage core banking operations — securely, transparently, and without any central authority.

---

## ⚙️ Technology Stack

| Technology | Purpose |
|---|---|
| Solidity (`^0.8.9`) | Smart contract programming language |
| Ethereum Blockchain | Decentralized platform for deploying contracts |
| Remix IDE | Online IDE for writing, compiling & deploying contracts |
| Ethereum Virtual Machine (EVM) | Executes smart contract logic |
| MetaMask | Browser wallet for interacting with the contract |

---

## 📂 Project Structure

```
decentralized-bank/
│
├── BasicEthBank.sol        # Main Solidity smart contract
├── README.md               # Project documentation
└── deploy_notes.md         # Step-by-step deployment guide
```

---

## 🔧 Smart Contract Functions

| Function | Type | Description |
|---|---|---|
| `depositETH()` | `external payable` | Deposit Ether into your bank account |
| `withdrawETH(uint _amount)` | `public` | Withdraw Ether from your account |
| `bankBalances(address)` | `public mapping` | Check balance of any address |
| `getBalance(address _user)` | `public view` | Query balance of a specific user |
| `myBalance()` | `public view` | Get your own bank balance |
| `contractBalance()` | `public view` | Total ETH held by the contract |

---

## 🗂️ Functional Modules

1. **User Registration Module** — Users interact via their MetaMask wallet address
2. **Deposit Module** — Deposit Ether using `depositETH()`
3. **Withdrawal Module** — Securely withdraw using `withdrawETH()`
4. **Balance Inquiry Module** — Check balance via `myBalance()` or `bankBalances`
5. **Transaction Recording Module** — All transactions permanently recorded on-chain
6. **Payment Management Module** — Smart contract handles all fund transfers

---

## 🔐 Security Features

- **Blockchain Immutability** — Records cannot be altered once stored on-chain
- **Smart Contract Validation** — `require()` statements prevent invalid transactions
- **Decentralization** — No single authority controls the system
- **Transparency** — All transactions are publicly verifiable on the blockchain
- **Event Logging** — `Deposited` and `Withdrawn` events emitted for off-chain tracking

---

## 🚀 How to Deploy & Run

### Step 1 — Open Remix IDE
Go to [https://remix.ethereum.org](https://remix.ethereum.org)

### Step 2 — Create the Contract File
- Create a new file: `BasicEthBank.sol`
- Paste the code from [`BasicEthBank.sol`](BasicEthBank.sol)

### Step 3 — Compile
- Go to the **Solidity Compiler** tab
- Select compiler version `0.8.9` or higher
- Click **Compile BasicEthBank.sol**

### Step 4 — Deploy
- Go to the **Deploy & Run Transactions** tab
- Select Environment: **Remix VM (Osaka)** (for testing) or **Injected Provider - MetaMask** (for testnet)
- Click **Deploy**

### Step 5 — Interact
- Use `depositETH` with a value in Wei to deposit funds
- Use `withdrawETH` with an amount to withdraw
- Use `myBalance` or `bankBalances` to check balances

---

## 📊 Sample Output

```
[vm] depositETH() → value: 1000 Wei ✅
[vm] bankBalances(address) → 1000 ✅
[vm] withdrawETH(500) → success ✅
[vm] withdrawETH(2000) → Error1 - Withdraw canceled: Insufficient balance ❌
```

---

## ✅ Advantages

- Secure and tamper-proof transaction records
- Transparent and publicly verifiable operations
- Automated smart contract execution (no middlemen)
- Reduced manual errors
- Improved trust between users

## ⚠️ Limitations

- Requires basic blockchain knowledge to operate
- Ethereum transactions incur gas fees on mainnet
- Currently supports ETH only (no ERC-20 tokens)
- Requires internet and MetaMask access

---

## 🔮 Future Enhancements

- Build a React.js / Web3.js frontend interface
- Full MetaMask wallet integration on the UI
- Add interest calculation for deposits
- Support ERC-20 token transfers
- Deploy on Ethereum testnets (Sepolia, Goerli)
- Develop a mobile application

---

## 🌐 Applications

- Digital decentralized banking platforms
- Cryptocurrency banking services
- Financial Technology (FinTech) systems
- Secure online payment platforms
- Decentralized Finance (DeFi) protocols

---

## 📜 References

1. [Ethereum Smart Contract Docs](https://ethereum.org/en/developers/docs/smart-contracts)
2. [Remix IDE](https://remix.ethereum.org)
3. Satoshi Nakamoto — *Bitcoin: A Peer-to-Peer Electronic Cash System*

---

## 📄 License

This project is submitted for academic purposes under **M.Sc. IT Semester IV**, Pillai College, New Panvel (2025–26).
