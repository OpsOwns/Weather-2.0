using System.Windows;
using Microsoft.Practices.Unity;
using Prism.Unity;

namespace Weather_2._0.Infrastructure
{
    public class Bootstrapper : UnityBootstrapper
    {
        protected override DependencyObject CreateShell()
        {
            return Container.Resolve<MainView>();
        }

        protected override void InitializeShell()
        {
            Application.Current.MainWindow?.Show();
        }
    }
}
