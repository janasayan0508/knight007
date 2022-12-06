using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(eLogSheet.Startup))]
namespace eLogSheet
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
