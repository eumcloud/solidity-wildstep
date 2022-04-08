// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 < 0.9.0;

contract Datalocations {
    uint[] public nArr;

    mapping(uint => address) map;
    struct FooStruct {
        uint foo;
    }

    mapping(uint => FooStruct) fooStruct;

    function f() public {
        _f(nArr, map, fooStructs[1]);

        FooStruct storage fooStruct = fooStructs[1];

        FooStruct memory memoFooStruct = FooStruct(0);
    }

    function _f(
        uint[] storage arr,
        mapping(uint => address) storage _map,
        FooStruct storage _fooStruct
    ) internal {
        //do something with storage variables
    }

    function g(uint[] memory _arr) public returns (uint[] memory){
        // do something with memory array
    }
    // calldata : 주로 external function의 파라미터로 사용 된다.
    function h(uint[] calldata _arr) external {
        // do something with 
    }

}