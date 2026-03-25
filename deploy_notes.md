# 🚀 Deployment Notes — BasicEthBank Smart Contract

**Author:** Lokesh Chawan | Roll No: 6706
**Guide:** Prof. Abhijeet Salvi
**Subject:** Blockchain — M.Sc. IT Sem IV, Pillai College (2025-26)

---

## ✅ Deployment Steps (Remix IDE)

### 1. Open Remix IDE
- Visit: https://remix.ethereum.org

### 2. Create Contract File
- In the File Explorer, create: `BasicEthBank.sol`
- Paste the full contract code

### 3. Compile the Contract
- Go to: **Solidity Compiler** (left sidebar)
- Compiler Version: `0.8.9` or above
- Click: **Compile BasicEthBank.sol**
- Confirm: No errors in the output panel

### 4. Deploy the Contract
- Go to: **Deploy & Run Transactions** (left sidebar)
- Environment Options:
  - `Remix VM (Osaka)` → for local testing (recommended for beginners)
  - `Injected Provider - MetaMask` → for real testnet deployment
- Click: **Deploy**
- Contract appears under **Deployed Contracts**

---

## 🧪 Testing the Contract

### Deposit ETH
1. In the VALUE field, enter an amount (e.g., `1000` Wei)
2. Click `depositETH`
3. Check transaction in the console — should show ✅ success

### Check Balance
1. Click `myBalance` — returns your current balance in Wei
2. Or use `bankBalances` with your wallet address

### Withdraw ETH
1. Enter amount in the `withdrawETH` field (e.g., `500`)
2. Click the function button
3. Success → funds returned to your wallet
4. If amount > balance → `Error1 - Withdraw canceled` is thrown

### Check Contract Total
1. Click `contractBalance` — shows total ETH held by the contract

---

## ⚠️ Common Errors

| Error Message | Cause | Fix |
|---|---|---|
| `Error1 - Withdraw canceled` | Withdrawal amount exceeds balance | Enter a smaller amount |
| `Error2 - Withdraw canceled` | ETH transfer to wallet failed | Check wallet address / gas |
| `Deposit amount must be > 0` | Zero value deposit attempted | Enter a non-zero Wei value |

---

## 🔗 Useful Links

- Remix IDE: https://remix.ethereum.org
- Solidity Docs: https://docs.soliditylang.org
- Ethereum Docs: https://ethereum.org/en/developers/docs
- MetaMask: https://metamask.io
- Sepolia Testnet Faucet: https://sepoliafaucet.com

---

## 📋 Contract Info

| Property | Value |
|---|---|
| Solidity Version | `^0.8.9` |
| License | MIT |
| Network (testing) | Remix VM (Osaka) |
| Gas Limit Used | ~3,000,000 |
| Contract Name | `BasicEthBank` |
