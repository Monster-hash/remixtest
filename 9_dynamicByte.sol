pragma solidity ^0.4.0;

contract DynamicByte{
    bytes public name = new bytes(2);//初始化动态数组，给两个空间

    function InitName()
    {
        name[0] = 0x7a;
        name[1] = 0x68;//初始化完成
    }
    function getLength() view returns(uint)//查看当前动态数组长度
    {
            return name.length;
    }
}