using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace jobtrack
{
    public class Employee
    {
        public int EmployeeID { get; set; }

        public string EmployeeName { get; set; }

        public string EmployeeContactNo { get; set; }

        public Employee()
        {

        }
        public Employee(string employeeName)
        {
            EmployeeName = employeeName;
        }
        public Employee(string employeeName, string employeeContactNo)
        {
            EmployeeName = employeeName;
            EmployeeContactNo = employeeContactNo;
        }
        public override string ToString()
        {
            return string.Format("{0}, {1}", EmployeeName, EmployeeContactNo);
        }
    }
}