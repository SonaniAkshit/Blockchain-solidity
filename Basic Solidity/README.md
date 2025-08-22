# SimpleStorage Smart Contract

This repository contains a **basic Solidity smart contract** that demonstrates the core concepts of the language.  
It was built as part of the "Basic Solidity" learning tasks.

---

## 📖 Topics Covered

- **SPDX License** → Declares open-source license  
- **Versioning** → Define compiler version using `pragma`  
- **Compiling** → Use [Remix IDE](https://remix.ethereum.org/) to compile the contract  
- **Contract Declaration** → `contract SimpleStorage { ... }`  
- **Types & Declaring Variables**  
  - `uint256`, `int256`, `bool`, `string`, `address`, `bytes32`  
- **Default Initializations**  
  - `uint256` = 0, `int256` = 0, `bool` = false, `string` = "", `address` = 0x000...0, `bytes32` = 0x000...0  
- **Comments** → `// single-line` and `/* multi-line */`  
- **Functions** → `store`, `retrieve`, `addPerson`  
- **Deploying a Contract** → Deploy via Remix “Deploy & Run Transactions” tab  
- **Calling a Public State-Changing Function** → `store()` and `addPerson()`  
- **Visibility** → `public` vs `private` variables and functions  
- **Scope** → State variables vs local function variables  
- **View & Pure Functions** → `retrieve()` is `view`  
- **Structs** → Custom datatype (`Person`)  
- **Intro to Storage** → State variables are stored permanently on-chain  
- **Arrays** → `Person[] public people` (dynamic array)  
- **Mappings** → `mapping(string => uint256) nameToFavoriteNumber`  
- **Compiler Errors and Warnings** → Missing SPDX license, wrong types, etc.  
- **Memory** → Keyword used for temporary variables in functions  
- **Recap** → All basics covered in one simple project  

---

## 🚀 How to Use

1. Open [Remix IDE](https://remix.ethereum.org/)  
2. Create a new file `SimpleStorage.sol`  
3. Paste the code from `contracts/SimpleStorage.sol`  
4. Compile using Solidity compiler `0.8.18`  
5. Deploy using the **JavaScript VM** or MetaMask-connected network  
6. Interact:  
   - `store(42)` → sets favorite number  
   - `retrieve()` → returns stored number  
   - `addPerson("Alice", 10)` → adds a person  
   - `people(0)` → fetches the first struct  
   - `nameToFavoriteNumber("Alice")` → returns 10  

---

## 📂 Project Structure

```
.
├── contracts/
│ └── SimpleStorage.sol
├── README.md

```