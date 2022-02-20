pragma solidity ^0.4.4;

contract ByteArray2 {

    bytes1 public num1 = 0x7a; //加入public默认生成get方法
    bytes2 public num2 = 0x7a68;
    bytes12 public num3 = 0x5B38Da6a701c568545dCfcB0;

    bytes1 public a = 0x7a;
    bytes1 public b = 0x68;

    //比较大小
    function bijiao1() returns(bool)
    {
        return a > b;
    }
    function bijiao2() returns(bool)
    {
        return a >= b;
    }
    function bijiao3() returns(bool)
    {
        return a < b;
    }
    function bijiao4() returns(bool)
    {
        return a <= b;
    }
    function bijiao5() returns(bool)
    {
        return a == b;
    }
    function bijiao6() returns(bool)
    {
        return a != b;
    }
    //byte字节位运算
    function weiyu() view public returns(bytes1)
    {
        return a & b ;
    }
    function weihuo() view public returns(bytes1)
    {
        return a | b ;
    }
    function qufan() view public returns(bytes1)
    {
        return ~ a ;
    }
    function yihuo() view public returns(bytes1)
    {
        return a ^ b ;
    }
    function zuoyi() view public returns(bytes1)
    {
        return a << 1 ;
    }
    function youyi() view public returns(byte)
    {
        return a >> 1 ;
    }
    //一旦初始化便不能修改
    function changeContent()
    {
        num1[0] = 2;//修改第0位为2，error
        num3 = 2;//可以修改
    }
}