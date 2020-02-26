// Version of Solidity compiler this program was written for
// 注释并不会被带进EVM环境中
pragma solidity ^0.4.19;

// Our first contract is a faucet!
contract Faucet {
// Give out ether to anyone who asks
// public方法意味着可以被其他合约调用
function withdraw(uint withdraw_amount) public {
 // Limit withdrawal amount
 // bool比较，若失败，则合约异常失败
 require(withdraw_amount <= 100000000000000000);
 // Send the amount to the address that requested it
 // msg 对象，这是所有合约都可以访问的输入之一。
 // 它表示触发此合约执行的交易。
 // 属性 sender 是交易的发件人地址。
 // 函数传递是一个内置函数，它将以太从合约传递到调用它的地址。
 // 向后读，这意味着转移到触发此合约执行的 msg 的发送者。
 // 传递函数将金额作为其唯一参数。
 // 将 withdraw_amount 值作为参数传递给上面几行声明的 withdraw 函数
 msg.sender.transfer(withdraw_amount);
 }
// Accept any incoming amount
// “回退”或默认函数，如果触发合约的交易未命名合约中的任何已声明函数或任何函数或未包含数据，则调用此函数。
// 合约可以有一个这样的默认函数（没有名称），它通常是接收以太的函数。这就是为什么它被定义为公共和默认函数，这意味着它可以接受以太合约。
// 除了接受以太之外，它没有做任何事情，如花括号{}中的空定义所示。如果我们创建一个将 ether 发送到合约地址的交易，就好像它是钱包一样，这个函数将处理
function () public payable {}
}
