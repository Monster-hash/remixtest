//固定长度字节数组转换动态长度字节数组
/*
动态长度字节数组
1.bytes初始化————new bytes 获取bytes长度、内容，并修改长度内容
2.string————不能够直接获取长度和内容，需要转换为bytes、特殊字符1字节，中文3字节
3.固定长度字节数组之间的相互转换
4.固定长度字节数组转换可变长度字节数组
5.将bytes转化为string

*/
pragma solidity ^0.4.0;

contract fixDynamic{
    bytes7 name = 0x6d6f6e73746572;

    function fixToDynamicBytes() view returns(bytes)
    {
        //return bytes(name);error
        bytes memory newName = new bytes(name.length);
        //函数体内部声明用memory

        for (uint i = 0;i< name.length;i++)//必须用uint
        {
            newName[i] = name[i];//
        }
        return newName;
    }
}


