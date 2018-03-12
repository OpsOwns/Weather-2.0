using Weather_2._0.ViewModel;
using  Xunit;
namespace Weather_2._0Tests.ViewModel
{
  public  class MainViewModelTests
    {
        private static MainViewModel Execute()
        {
            return new MainViewModel();
        }

        [Fact]
        public void BeforeInsertValueTest()
        {
            Execute().Search = "Rzeszów";
            var result = Execute().BeforeInsertValue();
            Assert.True(result);
        }

        [Fact]
        public void BeforeInsertValueTest2()
        {
            Execute().Search = "Rz";
            var result = Execute().BeforeInsertValue();
            Assert.False(result);
        }

    }
}
