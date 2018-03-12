using Weather_2._0.ViewModel;

namespace Weather_2._0
{
   public partial class MainView
    {
        public MainView()
        {
            InitializeComponent();
            DataContext = new MainViewModel();
        }   
    }
}
