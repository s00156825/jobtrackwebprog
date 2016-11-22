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
    public partial class ManageEmployees : System.Web.UI.Page
    {
<<<<<<< HEAD


        protected void Page_Load(object sender, EventArgs e)
        {



        }


        protected void lbtnAddNewEmployee_Click(object sender, EventArgs e)
        {
            string url = "AddEmployee.aspx";
            string s = "window.open('" + url + "', 'popup_window', 'width=800,height=600,left=200,top=200,resizable=yes');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }

        protected void gw_ShowEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {
            string emplID = gw_ShowEmployees.SelectedRow.Cells[1].Text;
            string emplName = gw_ShowEmployees.SelectedRow.Cells[2].Text;
            string emplPhone = gw_ShowEmployees.SelectedRow.Cells[3].Text;

            lblSelectedEmpl.Text = "ID: " + emplID + "<br/>" + "NAME: " + emplName + "<br/>" + "PHONE: " + emplPhone;
        }

        protected void lbtnRemoveEmployee_Click(object sender, EventArgs e)
        {
            //            //DeleteCommand="DELETE From [stores] WHERE [stor_id] = @stor_id"

            string connectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\marta\Desktop\JOB_TRACK_21.11_marta\jobtrack\jobtrack\App_Data\aspnet-jobtrack-20161110033346.mdf;Initial Catalog=aspnet-jobtrack-20161110033346;Integrated Security=True";

            // set up connection
            using (SqlConnection connection = new SqlConnection(connectionString))

                //using try/catch to handle any boo-boos
                try
                {
                    //tell the system we want to run a SQL command
                    using (SqlCommand removeEmployee = new SqlCommand("RemoveEmployee", connection))
                    {
                        //and that it will be to run a sproc
                        removeEmployee.CommandType = CommandType.StoredProcedure;

                        // get the ID of selected employee
                        string selectedEmplID = gw_ShowEmployees.SelectedRow.Cells[1].Text;
                        //add variables(parameters) that the sproc will accept

                        SqlParameter employeeID = removeEmployee.Parameters.AddWithValue("@EmployeeID", gw_ShowEmployees.SelectedRow.Cells[1].Text);
                        //SqlParameter employeePhone = addEmployee.Parameters.AddWithValue("@PhoneNumber", tbxNewEmployeePhoneNo.Text);

                        //open the connection, run the sproc and close the connection again
                        connection.Open();
                        removeEmployee.ExecuteNonQuery();
                        connection.Close();

                        lblSelectedEmpl.Text = "Employee removed successfully";


                    }
                }
                catch (Exception ex)
                {
                    lblSelectedEmpl.Text = "Something went wrong: " + ex.Message;
                }









        }


    }
}
=======
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
