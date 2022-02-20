//string内存原理————特殊动态数组
pragma solidity ^0.4.0;

contract DynamicString{

    //字符串标识单引号双引号都可
    string name = "monster"; //0x6d6f6e73746572


    function getLength() view returns(uint)
    {   
        //不能直接获取string长度
        //string无length属性
        // return name.length;
        
        return bytes(name).length;//通过bytes强制转换name获取长度
    }

    function changeName1() view returns(bytes1)
    {
        //return name[0];不能直接通过下标方式获取string内容
        return bytes(name)[1];
    }
    function getName() view returns(bytes)
    {
        return bytes(name);//通过bytes强制转换获取内容
    }
    function changeName2() //只修改所以不用返回
    {
        bytes(name)[0] = 'L';//修改第一个元素，把m换成L
    }

}