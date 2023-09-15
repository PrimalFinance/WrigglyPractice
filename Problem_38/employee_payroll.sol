// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Payroll {
    address public employer;
    mapping(address => uint) public employeeSalaries;
    uint public totalFunds;

    constructor() {
        // TODO
        // Assign the employer address to the contract creator.
        employer = msg.sender;
    }

    function addFunds() public payable {
        // TODO
        require(msg.sender == employer, "Only the employer can add funds.");
        // Update the total funds with value sent in the message value.
        totalFunds += msg.value;
    }

    function getTotalFunds() public view returns (uint) {
        // TODO
        return totalFunds;
    }

    function payEmployee(address employee) public {
        // TODO
        // Ensure that only the employer can pay employees.
        require(
            msg.sender == employer,
            "Only the employer can pay the employees"
        );
        // Variable to hold the employees salary.
        uint salary = employeeSalaries[employee];
        // Ensure the contract balance is greater than the amount being paid to the employee.
        require(
            address(this).balance > salary,
            "Not enough funds to pay employee."
        );
        // Ensure the employee has a non-zero salary to be paid.
        require(salary > 0, "Employee has no salary to be paid");
        // Pay the employee address with the salary amount.
        payable(employee).transfer(salary);
        // Set the employee's salary to zero after payement.
        employeeSalaries[employee] = 0;
        // Reduce the total funds by the salary paid.
        totalFunds -= salary;
    }

    function setEmployeeSalary(address employee, uint salary) public {
        // TODO
        require(
            msg.sender == employer,
            "Only the employer can set the salaries"
        );
        employeeSalaries[employee] = salary;
    }
}
