// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Payroll {
    address public employer;
    mapping(address => uint) public employeeSalaries;
    uint public totalFunds;

    constructor() {
        // TODO
    }

    function addFunds() public payable {
        // TODO
    }

    function getTotalFunds() public view returns (uint) {
        // TODO
    }

    function payEmployee(address employee) public {
        // TODO
    }

    function setEmployeeSalary(address employee, uint salary) public {
        // TODO
    }
}
