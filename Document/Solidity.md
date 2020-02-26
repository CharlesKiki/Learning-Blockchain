#### Solidity 简介

##### Solidity是什么

• Solidity 是一门面向合约的、为实现智能合约而创建的高级编程语言。这门语言受到了 C++，Python 和 Javascript 语言的影响，设计的目的是能在以太坊虚拟机（EVM）上运行。

• Solidity 是静态类型语言，支持继承、库和复杂的用户定义类型等特性。

• 内含的类型除了常见编程语言中的标准类型，还包括 address 
等以太坊独有的类型，Solidity 源码文件通常以 .sol 作为扩展名

• 目前尝试 Solidity 编程的最好的方式是使用 Remix。Remix 
是一个基于 Web 浏览器的 IDE，它可以让你编写 Solidity 智能合约，然后部署并运行该智能合约。

##### Solidity语言特性

Solidity的语法接近于JavaScript，是一种面向对象的语言。但作为一种真正意义上运行在网络上的去中心合约，它又有很多的不同

• 以太坊底层基于帐户，而不是 UTXO，所以增加了一个特殊的address 的数据类型用于定位用户和合约账户。

• 语言内嵌框架支持支付。提供了 payable 等关键字，可以在语言层面直接支持支付。

• 使用区块链进行数据存储。数据的每一个状态都可以永久存储，所以在使用时需要确定变量使用内存，还是区块链存储。

• 运行环境是在去中心化的网络上，所以需要强调合约或函数执行的调用的方式。

• 不同的异常机制。一旦出现异常，所有的执行都将会被回撤，这主要是为了保证合约执行的原子性，以避免中间状态出现的数据不一致。

#### Solidity源码和智能

• Solidity 源代码要成为可以运行在以太坊上的智能合约需要经历如下的步骤：

1. 用 Solidity 编写的智能合约源代码需要先使用编译器编译为字节码（Bytecode），编译过程中会同时产生智能合约的二进制接口规范（Application Binary Interface，简称为ABI

2. 通过交易（Transaction）的方式将字节码部署到以太坊网络，每次成功部署都会产生一个新的智能合约账户

3. 使用 Javascript 编写的 DApp 通常通过 web3.js + ABI去调用智能合约中的函数来实现数据的读取和修改

#### Solidity编译器

Remix

• [Remix](http://remix.ethereum.org) 是一个基于 Web 浏览器的 Solidity IDE；可在线使用而无需安装任何东西

solcjs

• solc 是 Solidity 源码库的构建目标之一，它是 Solidity 的命令行编译器

• 使用 npm 可以便捷地安装 Solidity 编译器 solcjs

• npm install -g so

#### 智能合约

Solidity中

• 一组代码（合约的函数 )和数据（合约的状态 ），它们位于以太坊区块链的一个特定地址上

• 代码行 uint storedData; 声明一个类型为 uint (256位无符号整数）的状态变量，叫做 storedData

• 函数 set 和 get 可以用来变更或取出变量的值

#### 合约结构

• 状态变量（State Variables）作为合约状态的一部分，值会永久保存在存储空间内。

• 函数（Functions）合约中可执行的代码块。

• 函数修饰器（Function Modifiers）用在函数声明中，用来补充修饰函数的语义。

• 事件（Events）非常方便的 EVM 日志工具接口。

#### Solidity源文件布局

------

pragma （版本杂注）

• 源文件可以被版本 杂注pragma所注解，表明要求的编译器版本

```
例如：pragma solidity ^0.4.0;
```

源文件将既不允许低于 0.4.0 版本的编译器编译， 也不允许高于（包含） 0.5.0 版本的编译器编译（第二个条件因使用 ^ 被添加）

import（导入其它源文件）

• Solidity 所支持的导入语句import，语法同 JavaScript（从ES6 起）非常类似

```
import "filename";
```

• 从“filename”中导入所有的全局符号到当前全局作用域中

```
import * as symbolName from "filename";
```

• 创建一个新的全局符号 symbolName，其成员均来自 “filename”中全局符号

```
import {symbol1 as alias, symbol2} from "filename";
```

• 创建新的全局符号 alias 和 symbol2，分别从 "filename" 引用 symbol1 和 symbol2

```
import "filename" as symbolName;
```

• 这条语句等同于 

```
import * as symbolName from "filename
```

#### Solidity值类型

------

 • 布尔（bool）：可能的取值为字符常量值 true 或 false

• 整型（int/uint）：分别表示有符号和无符号的不同位数的整型变量； 

支持关键字 uint8 到 uint256（无符号，从 8 位到 256 位）以及 int8 到 int256，以 8 位为步长递增

• 定长浮点型（fixed / ufixed）： 表示各种大小的有符号和无符号的定长浮点型；

在关键字 ufixedMxN 和 fixedMxN 中，M 表示该类型占用的位数，N 表示可用的小数位数

• 地址（address）：存储一个 20 字节的值（以太坊地址大小）

• 定长字节数组：关键字有 bytes1， bytes2， bytes3， ...， bytes32

• 枚举（enum）：一种用户可以定义类型的方法，与C语言类似，默认从0开始递增，一般用来模拟合约的状态

• 函数（function）：一种表示函数的类型

#### Solidity引用类型数组（Array）

• 数组可以在声明时指定长度（定长数组），也可以动态调整大小（变长数组、动态数组）

• 对于存储型（storage） 的数组来说，元素类型可以是任意的（即元素也可以是数组类型，映射类型或者结构体）；

对于内存型（memory）的数组来说，元素类型不能是映射（mapping）类型结构（Struct）

• Solidity 支持通过构造结构体的形式定义新的类型映射（Mapping）

• 映射可以视作 哈希表 ，在实际的初始化过程中创建每个可能的 key，并将其映射到字节形式全是零的值（类型默认值）

#### Solidity地址类型

------

##### address

• 地址类型存储一个 20 字节的值（以太坊地址的大小）；

地址类型也有成员变量，并作为所有合约的基础

##### address payable（v0.5.0引入）

• 与地址类型基本相同，不过多出了 transfer 和 send 两个成员变量

##### 两者区别和转换

• Payable 地址是可以发送 ether 的地址，而普通 address 不能

• 允许从 payable address 到 address 的隐式转换，而反过来的直接转换是不可能的（唯一方法是通过uint160来进行中间转换）

• 从0.5.0版本起，合约不再是从地址类型派生而来，但如果它有payable的回退函数，那同样可以显式转换为 address 或者 address payable 类型

#### Solidity关键字和语法

------

类型

address 地址类型

unit 无符号整数

方法

• mappings 可以看作是一个哈希表，它会执行虚拟初始化，把所有可能存在的键都映射到一个字节表示为全零的值