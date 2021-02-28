using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapp
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (province.SelectedIndex == 0)
            {
                city.Items.Clear();
                city.Items.Add(" ");

            }
            else if (province.SelectedIndex == 1)
            {
                city.Items.Clear();
                city.Items.Add(" ");
                city.Items.Add("武汉");
                city.Items.Add("荆州");
                city.Items.Add("黄石");
                city.Items.Add("荆门");
            }

            else if (province.SelectedIndex == 2)
            {
                city.Items.Clear();
                city.Items.Add(" ");
                city.Items.Add("长沙");
                city.Items.Add("湘潭");
                city.Items.Add("邵阳");
                city.Items.Add("衡阳");
            }
        }
    }
}