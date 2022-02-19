//整数溢出及异常处理
pragma solidity ^0.4.0;

contract math3{
    
    function flow() view public returns(uint)
    {
        uint8 mm = 255;
        mm ++;
        return mm;

    }
    function flow2() view public returns(uint)
    {
        uint8 mm = 0;
        mm --;
        return mm;
    }
    function errorTest() returns(int)
    {
        int a = 3;
        int b = 0;//不能执行除0
        return a/b;
    }
    
    function errorTest2() returns(int)
    {
        int a = 3;
        int b = -1;
        a<<b;//位移不能为负
    }
}