using System.Collections.Generic;
using System.Threading.Tasks;
using Weather_2._0.Infrastructure;
using Weather_2._0.Model;
using Xunit;

namespace Weather_2._0Tests.Infrastructure
{
    public class HttpGrabberTestGrabber
    {
        [Fact]
        public void GetJsonListFromUrlTest()
        {
            var data = execute().Result;

          Assert.NotNull(data);
        }
        async Task<List<TypeOfData>> execute()
        {
            string word = "Rzeszow";
            var data = await HttpGrabber.GetJsonListFromUrl(word);

            return data;
        }

        [Fact]
        public void GetCityFromJsonTest()
        {
            var data = HttpGrabber.GetCityFromJson("Opatów");
            var data2 = HttpGrabber.GetCityFromJson("Opatów");
            Assert.Equal(data,data2);
        }

        [Fact]
        public void Deserialize_JsonWeather()
        {
            var city = execute().Result;
            var weather = city[0].Weather;
            var result = HttpGrabber.Deserialize_Json(weather).Result;
            string cityName = result.name;
            Assert.NotNull(result);
            Assert.Equal("Rzeszow", cityName);
        }
        [Fact]
        public void Deserialize_JsonWeatherThrow()
        {
            var city = execute().Result;
            var weather = city[0].Weather;
            var exception = Record.Exception(() => HttpGrabber.Deserialize_Json(weather).Result);   
            Assert.Null(exception);
        }
        [Fact]
        public void Deserialize_JsonForecast()
        {
            var city = execute().Result;
            var forecast = city[0].Forecast;
            var result = HttpGrabber.Deserialize_Json(forecast);
            Assert.NotNull(result);
        }   
        [Fact]
        public void Deserialize_JsonForecastThrow()
        {
            var city = execute().Result;
            var forecast = city[0].Forecast;
            var exception = Record.Exception(() => HttpGrabber.Deserialize_Json(forecast).Result);
            Assert.Null(exception);
        }
    }
}