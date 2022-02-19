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

    function changeName()
    {
        name[0] = 0x88;

    }
    function changeLength()
    {
        name.length = 5;//扩充数组后也会全部初始化为0，0:bytes: 0x0000000000
    }
    function pushTest()        //push内置方法
    {
        name.push(0x99);//在原数组后添加新元素
    }
}