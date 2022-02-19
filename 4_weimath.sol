//位运算
pragma solidity ^0.4.0;

contract weimath{

    uint8 a = 3;
    uint8 b = 4;

    function weiyu() view public returns(uint)
    {
        return a & b ;
    }
    function weihuo() view public returns(uint)
    {
        return a | b ;
    }
    function qufan() view public returns(uint)
    {
        return ~ a ;
    }
    function yihuo() view public returns(uint)
    {
        return a ^ b ;
    }
    function zuoyi() view public returns(uint)
    {
        return a << 1 ;
    }
    function youyi() view public returns(uint)
    {
        return a >> 1 ;
    }
}