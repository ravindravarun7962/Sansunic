using System;
using System.Data;
using System.Text;
using System.Web.UI;

namespace SANSUNIC
{
    public partial class Site : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateNavigation();
            }
        }

        private void GenerateNavigation()
        {
            try
            {
                DataTable dt = Utility._GetDataTable24("Select * from SiteNavigation where Site = 'Aptum' order by Orderby");

                if (dt == null || dt.Rows.Count == 0)
                {
                    _LiteralNavDesktop.Text = "";
                    _LiteralNavMobile.Text = "";
                    return;
                }

                StringBuilder desktopNav = new StringBuilder();
                StringBuilder mobileNav = new StringBuilder();

                DataRow[] parents = dt.Select("ParentID IS NULL OR ParentID = 0");

                foreach (DataRow row in parents)
                {
                    string id = row["ID"].ToString();
                    string title = row["Title"].ToString();
                    //string navUrl = row["Navurl"].ToString();
                    string navUrl = row["Navurl"].ToString().Replace(" ", "-");
                    DataRow[] children = dt.Select("ParentID = " + id);

                    // ✅ SIMPLE MENU
                    if (children.Length == 0)
                    {
                        // DESKTOP

                        desktopNav.Append($@"
                          <li>
                          <a href='/{navUrl}' 
                          class='px-4 py-2 text-[15px] font-semibold whitespace-nowrap text-black hover:text-blue-500 transition flex items-center'>
                            {title}
                                </a>
                                 </li>"
                        );

                        // MOBILE
                        mobileNav.Append($@"
                        <li>
                            <a href='/{navUrl}' 
                            class='block py-2 text-gray-800 hover:text-orange-500'>
                                {title}
                            </a>
                        </li>");
                    }
                    else
                    {
                        // 🔥 DESKTOP MEGA MENU
                        desktopNav.Append($@"
                        <li class='group'>
                            <button type='button' class='flex items-center gap-1 px-4 py-2 text-[15px] font-semibold text-black hover:text-orange-500'>
                                {title} <i class='fas fa-chevron-down text-xs'></i>
                            </button>

                            <div class='absolute left-1/2 -translate-x-1/2 top-full w-screen hidden group-hover:block bg-white shadow-xl z-50'>
                                <div class='max-w-7xl mx-auto grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-10 gap-y-4 px-10 py-6'>");

                        foreach (DataRow child in children)
                        {
                            string childTitle = child["Title"].ToString();
                            //string childUrl = child["Navurl"].ToString();
                            string childUrl = child["Navurl"].ToString().Replace(" ", "-");
                            string childImage = child["ImageUrl"].ToString();

                            desktopNav.Append($@"
                              <div>
                                <a href='/{childUrl}' 
                                class='flex items-center gap-3 p-3 rounded hover:bg-blue-50 hover:text-orange-500 transition'>
       
                                  <img src='/{childImage}' class='w-8 h-8 object-contain' />

                                 <span class='text-sm font-medium text-gray-800'>
                                   {childTitle}
                                    </span>

                                          </a>
                               </div>"
                            );
                        }

                        desktopNav.Append(@"
                                </div>
                            </div>
                        </li>");

                        // 🔥 MOBILE ACCORDION
                        mobileNav.Append($@"
                        <li>
                            <button type='button' class='w-full flex justify-between items-center py-2 text-gray-900 font-semibold mobile-dropdown-toggle'>
                                {title}
                                <i class='fas fa-chevron-down text-xs transition-transform duration-300'></i>
                            </button>

                            <ul class='hidden pl-4 space-y-1 mobile-dropdown'>");

                        foreach (DataRow child in children)
                        {
                            string childTitle = child["Title"].ToString();
                            //string childUrl = child["Navurl"].ToString();
                            string childUrl = child["Navurl"].ToString().Replace(" ", "-");
                            string childImage = child["ImageUrl"].ToString();

                            mobileNav.Append($@"
                                  <li>
                              <a href='/{childUrl}' 
                                       class='flex items-center gap-2 py-1 text-sm text-gray-700 hover:text-orange-500'>
                                   <img src='{childImage}' class='w-4 h-4' />
                               {childTitle}
                                    </a>
                               </li>"
                            );
                        }

                        mobileNav.Append("</ul></li>");
                    }
                }

                // ✅ FINAL BIND
                _LiteralNavDesktop.Text = desktopNav.ToString();
                _LiteralNavMobile.Text = mobileNav.ToString();
            }
            catch (Exception)
            {
                _LiteralNavDesktop.Text = "<li>Error loading menu</li>";
                _LiteralNavMobile.Text = "<li>Error loading menu</li>";
            }
        }
    }
}