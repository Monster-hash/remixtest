//固定长度字节数组转换
/*
动态长度字节数组
1.bytes初始化————new bytes 获取bytes长度、内容，并修改长度内容
2.string————不能够直接获取长度和内容，需要转换为bytes、特殊字符1字节，中文3字节
3.固定长度字节数组之间的相互转换
4.固定长度字节数组转换可变长度字节数组
5.将bytes转化为string

*/

pragma solidity ^0.4.0;

contract changeFixByte{
    bytes7 name = 0x6d6f6e73746572;

    function changeBytes1() view returns(bytes1)
    {
        return bytes1(name);//0:bytes1: 0x6d
    }
    function changeBytes2() view returns(bytes2)
    {
        return bytes2(name);//0:bytes2: 0x6d6f
    }
    function changeBytes12() view returns(bytes12)
    {
        return bytes12(name);//0:bytes12: 0x6d6f6e737465720000000000
    }
    
}