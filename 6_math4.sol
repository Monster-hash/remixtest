//整形字面量
//全部计算再赋值以保证精度
pragma solidity ^0.4.0;

contract math4{

    function intergerTest() returns(uint)
    {
        uint num = (2**800+1) - 2**800;
        return num;
    }
    function intergerTest2() returns(uint)
    {
        uint num = 2/4*1000;
        return num;
    }
    function intergerTest3() returns(uint)
    {
        uint num = 1111111111111111111111111111112-1111111111111111111111111111111;
        return num;
    }
}