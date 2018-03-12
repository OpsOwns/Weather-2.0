using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using System.Net.Http;
using System.Threading.Tasks;
using Weather_2._0.Model;

namespace Weather_2._0.Infrastructure
{
    public static class HttpGrabber
    {
        public static async Task<List<TypeOfData>> GetJsonListFromUrl(string value)
        {
            List<TypeOfData> jsonList = new List<TypeOfData>();
            string weather = $"http://api.openweathermap.org/data/2.5/weather?q={value}&units=metric&lang=pl&appid=fbd0521f0694578eccff3e961a227a61";
            string forecast = $"http://api.openweathermap.org/data/2.5/forecast?q={value}&units=metric&lang=pl&appid=fbd0521f0694578eccff3e961a227a61";
            string clientWeather = await new HttpClient().GetStringAsync(weather);
            string clientForecast = await new HttpClient().GetStringAsync(forecast);
            jsonList.Add(new TypeOfData { Weather = clientWeather });
            jsonList.Add(new TypeOfData { Forecast = clientForecast });
            return jsonList;
        }

        public static List<string> GetCityFromJson(string value)
        {
            string cityUrl = $"https://maps.googleapis.com/maps/api/place/autocomplete/json?input={value}&types=(cities)&language=pl_PL&key=AIzaSyDI6Eyd3MChb3KUO-IrQselcYzApCKM43M";
            string cityJson = new HttpClient().GetAsync(cityUrl).Result.Content.ReadAsStringAsync().Result;
            var cityDeserializeObject = JsonConvert.DeserializeObject<RootObject>(cityJson);
            List<string> discriptions = cityDeserializeObject.predictions.Select(z => z.description).ToList();
            return discriptions;
        }

        public static async Task<RootObject> Deserialize_Json(string value)
        {
            RootObject listRootObjects = new RootObject();
            await Task.Factory.StartNew(() =>
                {
                    try
                    {
                        listRootObjects = JsonConvert.DeserializeObject<RootObject>(value);
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                });
            return listRootObjects;
        }
    }
}
