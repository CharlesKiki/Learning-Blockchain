// 声明语言版本
pragma solidity ^0.4.18;

// 定义合约 类似Java中的Class
contract Voting {
    // 候选人名单
    bytes32[] public candidateList;

    // 得票数 unit8无符号数 public公共可见
    mapping (bytes32 => uint8) public votesReceived;
    
    // 构造器
    constructor(bytes32[] candidateNames) public {
        candidateList = candidateNames;
    }

    // 投票
    function voteForCandidate(bytes32 candidate) public {
        // 
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }

    // 
    function totalVotesFor(bytes32 candidate) view public returns (uint8) {
        // 异常处理 参数返回bool 一定为真
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }

    // 是否为有效的
    function validCandidate(bytes32 candidate) view public returns (bool) {
        for(uint8 i = 0; i < candidateList.length; i++) {
            if(candidateList[i] == candidate)
                return true;
        }
        return false;
    }
}