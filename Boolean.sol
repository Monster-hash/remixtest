//bool型
pragma solidity ^0.4.0;

contract BooleanTest{
    bool _a;
    int num1 = 100;
    int num2 = 200;

    function getBool() returns(bool)
    {
        return _a;
    }
    function getBool2() returns(bool)
    {
        return !_a;
    }
    function panduan() returns(bool)
    {
        return num1 == num2;
    }
    function panduan2() returns(bool)
    {
        return num1 != num2;
    }
    //与或非
    function yu() returns(bool)
    {
        return (num1==num2) && true;
    }
    function yu2() returns(bool)
    {
        return (num1 != num2) && true;
    }
    function huo1() returns(bool) 
    {
        return (num1 == num2) && true; //F
    }
    function huo2() returns(bool)
    {
        return (num1 != num2) && true; //T
    }
    function huo3() returns(bool)
    {
        return (num1 == num2) && false; //F
    }
}