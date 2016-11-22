using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(jobtrack.Startup))]
namespace jobtrack
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
