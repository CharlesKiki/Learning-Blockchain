以太坊的以太并不便宜，同时它需要支出手续费。



以太单位最小的不是以太，以太构成了多种价格单位



单位的口语名称都是人名 Wei 戴伟 华裔密码学 B money

比特币的单位是Cong



以太坊钱包是进入以太坊的入口

MetaMask钱包 浏览器扩展



账户都是非对称加密算法出来的 



私钥 账户资金所有权 这个也是分布式的 丢了就完蛋

公钥 

地址 由公钥生成 

Help Us Improve MetaMask

MetaMask would like to gather usage data to better understand how our users interact with the extension. This data will be used to continually improve the usability and user experience of our product and the Ethereum ecosystem.

MetaMask will..



Always allow you to opt-out via Settings



Send anonymized click & pageview events



Maintain a public aggregate dashboard to educate the community



**Never** collect keys, addresses, transactions, balances, hashes, or any personal information



**Never** collect your full IP address



**Never** sell data for profit. Ever!







安全保存小技巧

• 在多处保存备份数据。

• 绝不向任何分享该密语。

• 谨防网络钓鱼！MetaMask 绝不会主动要求您提供个人种子密语。

• 如果您需要再次备份个人种子密语，请通过设置 -> 安全选项完成该操作。

• 如果您仍存有疑问或发现任何可疑的地方，请发送电子邮件至 support@metamask.io 进行咨询。

*MetaMask 无法恢复您的种子密语。了解更多。 





切换网络 

• Main Network（Network ID： 1）• 主要的、公共的，以太坊区块链。真正的ETH，真正的价值，真正的结果。

真金白银要买ETH



• Ropsten Test Network（Network ID： 3）• 以太坊公共测试区块链和网络，使用工作量证明共识（挖矿）。该网络上的 ETH 没有任何价值。这是分叉的测试。

• Kovan Test Network（Network ID： 42）• 以太坊公共测试区块链和网络，使用「“Aura”协议」进行「权威证明 POA 共识（联合签名）」。该网络上的 ETH 没有任何价值。此测试网络仅由 Parity 支持。非矿工的过程，这就是集中化的。

针对特殊的客户端。

• Rinkeby Test Network（Network ID： 4）• 以太坊公共测试区块链和网络，使用「“Clique”协议」进行「权威证明 POA 共识（联合签名）」。该网络上的 ETH 没有任何价值。

针对特殊的客户端。





• Localhost 8545• 连接到与浏览器在同一台计算机上运行的节点。该节点可以是任何公共区块链（main 
或 testnet）的一部分，也可以是私有 testnet。



• Custom RPC

ID用以区分加入的网络，主机加入的网络

测试网络可以用来加入测试





From 水龙头地址 to 自己的地址



只要自己生成密钥 就算是可以使用以太坊了 它不存储你的密码



似乎测试网络也需要Geth的，单纯的Ganache并不可行

Ganache和Geth一样监听一个端口

Ganache带有账户地址 和 私钥 这意味着可以互相使用这些账户做操作



- [ ] RPC添加到应用层HTTP协议的Git学习
- [ ] 

Geth启动之后 外部连接 方式 

客户端接收固定格式消息 编码成JSON的命令 即RPC

本质仍然是一个接口 HTTP也可以手动编写 

RPCAPI是HTTP服务 监听8545

RPC最明显的一个特征就是在HTTP头部内添加方法名可以调用远程的进程的方法

这是非常神奇的

curl发送简单网络命令  host  指定头部 网络请求可以通过数个键值对来实现



以太坊账户 

比特币内部没有账户 每个人有地址 但是没有余额的概念

UTXO存储数据结构 是比特币的余额存储结构

UTXO效率不太好  遍历其所有UTXO得到余额

UTXO的优点 很高的隐私性  账户的概念被模糊了 一个私钥 生成多个公钥 多个接收地址 这就是完全的 隐私性 几乎不可见其账户

有多少钱就是多少UTXO 这个状态下UTXO可以失去 可以缺失

算力攻击 一个UTXO花两次

 这是数字世界的特有现象 

在数字世界中，一个交易加上签名 多次在网络中发送 似乎可以双花 不太好校验



但是以太坊怎么实现的账户？

但是开发智能合约，就要考虑用户数据了，这些和用户息息相关，这就是数据集中化

但是在这种状态下，账户信息不可缺失，否则连交易也无法进行。

以太坊的状态就是所有账户的列表 这就构成了一个特殊的账户数据结构，而

而不是分散的存储结构

它具备了代码的可能，它改变内部账户的改变，并且可以改变其他账户的状态，这就导致了借贷等等的操作



账户 = 程序 + 数据  = 程序 和 程序 交互 = 金融系统



Chrome甚至可以直接在命令行查看Web3对象