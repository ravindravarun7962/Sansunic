using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace SANSUNIC
{
    public class Utility
    {
        static public void ExecuteQuery(String _Query, Boolean _Procedure, params SqlParameter[] _Parameters)
        {
            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["Interview"].ConnectionString);

            try
            {
                SqlCommand cmd = Con.CreateCommand();
                cmd.CommandText = _Query;
                cmd.CommandType = _Procedure ? CommandType.StoredProcedure : CommandType.Text;
                foreach (SqlParameter _Parameter in _Parameters)
                    cmd.Parameters.Add(_Parameter);
                Con.Open();
                cmd.ExecuteNonQuery();

            }
            catch { }
            finally { Con.Close(); }
        }

        static public void ExecuteQuery(String _Query)
        {
            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["Interview"].ConnectionString);
            try
            {
                SqlCommand cmd = Con.CreateCommand();
                cmd.CommandText = _Query;
                Con.Open();
                cmd.ExecuteNonQuery();
            }
            catch { }
            finally { Con.Close(); }
        }
        static public void _BindGridView(GridView gv, String Query)
        {
            DataTable _dt = Utility._GetTable(Query);
            gv.DataSource = _dt;
            gv.DataBind();
        }

        // ✅ DB METHOD
        public static DataTable _GetDataTable24(string query)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(query,ConfigurationManager.ConnectionStrings["S24"].ConnectionString);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
                
            
        }
        public static DataTable _GetTable(string query)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(query, ConfigurationManager.ConnectionStrings["Interview"].ConnectionString);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;


        }
        static public void _BindDropdown(DropDownList ddl, String Query, String ValueField, String TestField, String selectedValue)
        {
            DataTable _dt = Utility._GetTable(Query);
            ddl.DataSource = _dt;
            ddl.DataTextField = TestField;
            ddl.DataValueField = ValueField;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("None", "0"));
            if (!String.IsNullOrEmpty(selectedValue))
                ddl.SelectedValue = selectedValue;

        }

        static public void _BindDropdown(DropDownList ddl, String Query, String ValueField, String TestField)
        {
            DataTable _dt = Utility._GetTable(Query);
            ddl.DataSource = _dt;
            ddl.DataTextField = TestField;
            ddl.DataValueField = ValueField;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("None", "0"));

        }
        static public void _BindChechboxList(CheckBoxList chklist, String Query, String ValueField, String TestField)
        {
            DataTable _dt = Utility._GetTable(Query);
            chklist.DataSource = _dt;
            chklist.DataTextField = TestField;
            chklist.DataValueField = ValueField;
            chklist.DataBind();

        }

        // ✅ SIMPLE URL FORMAT
        public static string _GetFormatedURL(string val)
        {
            return val.Replace(" ", "-");
        }

        // ✅ SLUG GENERATOR
        public static string GenerateSlug(string phrase)
        {
            if (string.IsNullOrEmpty(phrase)) return "";

            string str = phrase.ToLower();
            str = Regex.Replace(str, @"[^a-z0-9\s-]", "");
            str = Regex.Replace(str, @"\s+", " ").Trim();
            str = str.Replace(" ", "-");
            str = Regex.Replace(str, @"-+", "-");

            return str;
        }

        // ✅ SEO PAGE CHECK
        public static bool _SeoPageExists(string pageKey)
        {
            DataTable dt = _GetDataTable24(
                "SELECT 1 FROM SeoPages WHERE PageKey = '" + pageKey.Replace("'", "''") + "'"
            );

            return dt != null && dt.Rows.Count > 0;
        }

        // 🔥 MAIN CONTENT (UPDATED - NO CITY)
        public static string _SetPageContents(Literal _PageContent,Literal _PageHeader,DataList _DataList)
        {
            try
            {
                Page page = HttpContext.Current.Handler as Page;

                string slug = Convert.ToString(page.RouteData.Values["slug"]);

                if (!string.IsNullOrEmpty(slug))
                {
                    string title = slug.Replace("-", " ");

                    DataTable dt = _GetDataTable24(
                        $"SELECT * FROM SiteContent WHERE LOWER(REPLACE(Title,' ','-')) = '{slug.ToLower()}'"
                    );

                    if (dt != null && dt.Rows.Count > 0)
                    {
                        // ✅ Title
                        page.Title = Convert.ToString(dt.Rows[0]["PageTitle"]);

                        // ✅ Meta Keywords
                        HtmlMeta keywords = new HtmlMeta();
                        keywords.Name = "keywords";
                        keywords.Content = Convert.ToString(dt.Rows[0]["MetaKey"]);
                        page.Header.Controls.Add(keywords);

                        // ✅ Meta Description
                        HtmlMeta description = new HtmlMeta();
                        description.Name = "description";
                        description.Content = Convert.ToString(dt.Rows[0]["Description"]);
                        page.Header.Controls.Add(description);

                        // ✅ Header
                        if (_PageHeader != null)
                            _PageHeader.Text = Convert.ToString(dt.Rows[0]["PageHeader"]);

                        // ✅ Content
                        string content = HttpUtility.HtmlDecode(Convert.ToString(dt.Rows[0]["PageContent"]));

                        // 🔥 Replace Host URL
                        content = content.Replace("_#SiteURL#_", Convert.ToString(ConfigurationManager.AppSettings["HostURL"]));

                        _PageContent.Text = content;
                    }
                }
            }
            catch (Exception)
            {
                // optional logging
            }

            return "";
        }

        // 🔥 MAIN CONTENT BY ID (UPDATED - NO CITY)
        public static string _GetMainContentText(string pageId,Literal literal,Literal literalHeader,DataList dataList)
        {
            StringBuilder contentBuilder = new StringBuilder();

            DataTable dt = _GetDataTable24("SELECT * FROM SiteContent WHERE ID=" + pageId);

            if (dt != null && dt.Rows.Count > 0)
            {
                Page page = HttpContext.Current.Handler as Page;

                // ✅ Title
                page.Title = Convert.ToString(dt.Rows[0]["PageTitle"]);

                // ✅ Meta Keywords
                HtmlMeta keywords = new HtmlMeta();
                keywords.Name = "keywords";
                keywords.Content = Convert.ToString(dt.Rows[0]["MetaKey"]);
                page.Header.Controls.Add(keywords);

                // ✅ Meta Description
                HtmlMeta description = new HtmlMeta();
                description.Name = "description";
                description.Content = Convert.ToString(dt.Rows[0]["Description"]);
                page.Header.Controls.Add(description);

                // ✅ Header
                if (literalHeader != null)
                    literalHeader.Text = Convert.ToString(dt.Rows[0]["PageHeader"]);

                // ✅ Content
                string content = HttpUtility.HtmlDecode(Convert.ToString(dt.Rows[0]["PageContent"]));

                content = content.Replace("_#SiteURL#_", Convert.ToString(ConfigurationManager.AppSettings["HostURL"]));

                literal.Text = content;
            }

            return contentBuilder.ToString();
        }
    }
}