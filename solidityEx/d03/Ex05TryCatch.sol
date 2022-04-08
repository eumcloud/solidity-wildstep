// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Foo {
    address public owner;

    constructor(address _owner){
        require(_owner != address(0), "invalid address");
        assert(_owner != 0x0000000000000000000000000000000000000001);
        owner = _owner;
    }

    function exFunc(uint x) public pure returns(string memory){
        require(x != 0, "require failed : 0 ");

        return "exFunc was called";
    }
}

contract Bar {
    event Log(string message);
    event LogBytes(bytes data);
    
    Foo public foo; // call contract Foo

    constructor(){
        foo = new Foo(msg.sender);
    }

    function tryCatchExternalCall(uint _i) public {
        try foo.exFunc(_i) returns (string memory result){
            emit Log(result);
        } catch {
            emit Log("external call failed");
        }
    }

    function tryCatchNewContract(address _owner) public {
        try new Foo(_owner) returns (Foo foo) {
            emit Log("Foo Created");
        } catch Error(string memory reason) {
            emit Log(reason);
        } catch (bytes memory reason) {
            emit LogBytes(reason);
        }
    }
}