using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace GourmetPizza.Managers
{
    public partial class PlotCharts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetChartTypes();
            if (!IsPostBack)
            {
                DropDownList1.SelectedIndex = 10;
                DropDownList2.SelectedItem.Text = "2D";
                DropDownList3.SelectedIndex = 10;
                DropDownList4.SelectedItem.Text = "2D";

            }

        }
        private void GetChartTypes()
        {
            //Populate dropdownlist 1 and 3 using Enum SeriesChartType
            foreach (int charType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), charType), charType.ToString());
                DropDownList1.Items.Add(li);
                DropDownList3.Items.Add(li);

            }
        }

        protected void DropDownLists_Chart1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // change plotting style to chart 1 according to dropdownlist selection
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);

            // get chartArea1 for Dimensional styling
            ChartArea chartArea1 = Chart1.ChartAreas["ChartArea1"];

            // set 2d or 3d based on dropdownlist selection
            if (DropDownList2.SelectedItem.Text == "3D")
            {
                chartArea1.Area3DStyle.Enable3D = true;

            }
            else
            {
                chartArea1.Area3DStyle.Enable3D = false;

            }
        }


        protected void DropDownLists_Chart2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // change plotting style to chart 2 according to dropdownlist selection

            Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList3.SelectedValue);

            // get chartArea2 for Dimensional styling

            ChartArea chartArea2 = Chart2.ChartAreas["ChartArea1"];

            // set 2d or 3d based on dropdownlist selection

            if (DropDownList4.SelectedItem.Text == "3D")
            {
                chartArea2.Area3DStyle.Enable3D = true;
            }
            else
            { chartArea2.Area3DStyle.Enable3D = false; }
        }
        
    }
}