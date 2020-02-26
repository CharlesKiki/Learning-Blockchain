- [ ] Web3的RPC调用是什么意思

- [x] 准备安装环境

- [x] 启动ganachecli

- [ ] 以手动的方式用拆分的工具编译合约

  ```
  In the node console> Web3 = require('web3')
  
  \> web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
  
  \> web3.eth.accounts
  
  ['0x5c252a0c0475f9711b56ab160a1999729eccce97'
  
  '0x353d310bed379b2d1df3b727645e200997016ba3']
  
  \> code = fs.readFileSync('Voting.sol').toString()
  
  \> solc = require('solc')
  
  \> compiledCode = solc.compile(code)
  ```

  

