/*
bytes32————>string
*/
pragma solidity ^0.4.4;

contract Bytes32ToString{

    bytes2 name = 0x7a68;

    function changeIt() returns(string){

    }

    function byts32ToString(bytes32 _newName) view returns(string)
    {
        bytes memory newName = new bytes(_newName.length);
        for(uint i = 0;i < _newName.length;i++)
        {
            newName[i] = _newName[i];
        }
        return string(newName);
    }
    
    // function byts32ToString(bytes32 inputName) view returns(string)
    // {
    //     bytes memory newName = new bytes(inputName.length); //new bytes初始化要加memory

    //     for(uint i = 0;i < newName.length;i++)
    //     {
    //         newName[i] = inputName[i];
    //     }
    //     return string(newName);
    // }
 
}