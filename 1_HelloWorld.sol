pragma solidity ^0.4.0; //solidity版本号,只能被0.4.0到0.5.0兼容到

contract helloword{
    string myname = "monster";

    function getName() public view returns(string) //view能读取，不能修改
    {
        return myname;
    }
    function changeName(string _newName) public
    {
        myname = _newName;
    }
    function pureTest(string _name) pure public returns(string)
    {
        return _name;

    }

}