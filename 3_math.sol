//整型运算
pragma solidity ^0.4.0;

contract math{
    //定义整型 int uint
    uint numa = 4; //int可正可负，int256 = int，256为位数
    uint numb = 2; //uint非负，uint256 = int

    function add(uint a,uint b) pure public returns(uint)
    {
        return a+b; //加
    }
    function jian(uint a,uint b) pure public returns(uint)
    {
        return a-b; //减
    }
    function cheng(uint a,uint b) pure public returns(uint)
    {
        return a*b; //乘
    }
    function chu(uint a,uint b) pure public returns(uint)
    {
        return a/b; //除
    }
    function quyu(uint a,uint b) pure public returns(uint)
    {
        return a%b; //取余
    }
    function mi(uint a,uint b) pure public returns(uint)
    {
        return a**b; //a的b次幂，幂运算
    }

}