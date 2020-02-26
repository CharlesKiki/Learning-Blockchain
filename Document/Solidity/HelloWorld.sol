pragma solidity ^0.4.0;
contract SimpleStorage { 
    uint storedData; 
    function set(uint x) public { 
    storedData = x; 
    } 
    function get() public view returns (uint) { 
        return storedData; 
    }
} 

pragma solidity  >0.4.22 <0.6.0;

contract Coin{
    // address类型 public 公开访问修饰符
    // 变量 minter
    address public minter;
    // mapping映射函数 哈希表
    // address被转化被无符号整数unit
    mapping(address => unit)public balance;
    // 事件声明 所有的事件都包含了 from ， to 和 amount 三个参数
    // 函数声明
    // 事件触发
    event Sent(address from, address to,unit amount);

    // 构造器  
    constructor() public {
        minter = msg.sender;
    }

    // 函数定义 mint铸币厂 接收者 值数量
    function mint(address receiver,unit amount) public{
        // msg调用者
        require(msg.sender == minter);
        
        balance[receiver] += amount;
    }
    function send(address receiver,unit amount) public {
        require(amount <= balances[msg.sender]);
        balance[msg.sender] -= amount;
        balance[receiver] += amount;
        // 触发Sent函数
        emit Sent(msg.sender,receiver,amount);
    }
} 

// 事件监听
Coin.Sent().watch({}, '', function(error, result) { 
    if (!error) { 
    console.log("Coin transfer: " + result.args.amount + 
    "coins were sent from " + result.args.from + 
    " to " + result.args.to + "."); 

    console.log("Balances now:\n" + "Sender: " + 
    Coin.balances.call(result.args.from) + "Receiver: " + 
    Coin.balances.call(result.args.to)); 