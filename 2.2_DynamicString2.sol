//string处理中文与特殊字符
//string通过UTF-8存储
/*
动态长度字节数组
1.bytes初始化————new bytes 获取bytes长度、内容，并修改长度内容
2.string————不能够直接获取长度和内容，需要转换为bytes、特殊字符1字节，中文3字节
3.固定长度字节数组之间的相互转换
4.固定长度字节数组转换可变长度字节数组
5.将bytes转化为string

*/

pragma solidity ^0.4.0;

contract DynamicString{

    //字符串标识单引号双引号都可
    string name = "!@#$#&^*"; //特殊字符占1个字节
    //0x6d6f6e73746572
    string name2 = "处理中文与特殊字符";//一个中文占3个字节，3x9=27
    //0:bytes: 0xe5a484e79086e4b8ade69687e4b88ee789b9e6ae8ae5ad97e7aca6

    

    function getLength() view returns(uint)
    {   
        return bytes(name).length;//通过bytes强制转换name获取长度
    }

    function getLength2() view returns(uint)
    {   
        return bytes(name2).length;//通过bytes强制转换name获取长度
    }
    function getChineseName() view returns(bytes)
    {
        return bytes(name2);//通过bytes强制转换获取内容
    }//0:bytes: 0xe5a484e79086e4b8ade69687e4b88ee789b9e6ae8ae5ad97e7aca6

}