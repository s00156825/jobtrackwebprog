using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
<<<<<<< HEAD
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

=======
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f

namespace jobtrack
{
    public partial class AddEmployee : System.Web.UI.Page
    {
<<<<<<< HEAD

=======
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
        protected void Page_Load(object sender, EventArgs e)
        {

        }
<<<<<<< HEAD

        protected void lbtnCancel_Click(object sender, EventArgs e)
        {
            //close the window
        }

        protected void lbtnAddNewEmployee_Click(object sender, EventArgs e)
        {
            
            string connectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\marta\Desktop\JOB_TRACK_21.11_marta\jobtrack\jobtrack\App_Data\aspnet-jobtrack-20161110033346.mdf;Initial Catalog=aspnet-jobtrack-20161110033346;Integrated Security=True";

            string newEmpName = tbxNewEmployeeName.Text;    // Scrub user data
            string newEmpContactNo = tbxNewEmployeePhoneNo.Text;

            // set up connection
            using (SqlConnection connection = new SqlConnection(connectionString))

                //using try/catch to handle any boo-boos
                try
                {
                    //tell the system we want to run a SQL command
                    using (SqlCommand addEmployee = new SqlCommand("AddEmployee", connection))
                    {
                        //and that it will be to run a sproc
                        addEmployee.CommandType = CommandType.StoredProcedure;

                        //add variables(parameters) that the sproc will accept
                        SqlParameter employeeName = addEmployee.Parameters.AddWithValue("@EmployeeName", tbxNewEmployeeName.Text);
                        SqlParameter employeePhone = addEmployee.Parameters.AddWithValue("@PhoneNumber", tbxNewEmployeePhoneNo.Text);

                        //open the connection, run the sproc and close the connection again
                        connection.Open();
                        addEmployee.ExecuteNonQuery();
                        connection.Close();

                        lblInsertionStatus.Text = "Employee added successfully";
                        tbxNewEmployeeName.Text = "";
                        tbxNewEmployeePhoneNo.Text = "";

                    }
                }
                catch (Exception ex)
                {
                    lblInsertionStatus.Text = "Something went wrong: " + ex.Message;
                }
        }



    }
}
=======
    }
}
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
