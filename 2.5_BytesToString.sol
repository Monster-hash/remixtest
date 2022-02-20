//bytes与string相互转化
/*
动态长度字节数组
1.bytes初始化————new bytes 获取bytes长度、内容，并修改长度内容
2.string————不能够直接获取长度和内容，需要转换为bytes、特殊字符1字节，中文3字节
3.固定长度字节数组之间的相互转换
4.固定长度字节数组转换可变长度字节数组
5.将bytes转化为string
*/

pragma solidity ^0.4.16;

contract BytesToString{

    bytes public name = new bytes(2);//public

    function  InitName()
    {
        //0x6d6f6e73746572
        name[0] = 0x6d;
        name[1] = 0x6f;

    }
    
    function bytesToString() view  returns(string)
    {
        return string(name);
    }

}