using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace rad_1
{
    class company
    {
        string company_name;
        public company(string company_name)
        {
            this.company_name = company_name;
        }
        public string GetCompanyName()
        {
            return company_name;
        }
    }
}
