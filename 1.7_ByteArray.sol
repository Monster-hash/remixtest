//固定长度字节数组
pragma solidity ^0.4.4;

contract ByteArray {
    bytes1 public num1 = 0x7a; //加入public默认生成get方法
    bytes2 public num2 = 0x7a68;
    bytes12 public num3 = 0x5B38Da6a701c568545dCfcB0;

    function getLength1() returns(uint)
    {
        return num1.length;
    }
    function getLength2() returns(uint)
    {
        return num2.length;
    }
    function getLength3() returns(uint)
    {
        return num3.length;
    }
    //byte长度固定后不能修改

}