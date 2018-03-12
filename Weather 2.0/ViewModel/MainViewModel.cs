using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using Prism.Commands;
using Prism.Mvvm;
using Weather_2._0.Infrastructure;
using Weather_2._0.Model;

namespace Weather_2._0.ViewModel
{
    public class MainViewModel : BindableBase
    {
        private readonly CultureInfo _culture = new CultureInfo("pl-PL");
        private readonly Dictionary<string, string> _dictionaryPaths;
        private string _city;
        private ObservableCollection<string> _cityCollection;
        private ObservableCollection<GridView> _forecastColletion;
        private RootObject _forecastRootObject = new RootObject();
        private string _humidity;
        private string _image;
        private string _presure;
        private string _search = string.Empty;
        private string _sight;
        private string _temp;
        private string _updatedValue = "";
        private string _wind;

        public MainViewModel()
        {
            Sight = Visibility.Collapsed.ToString();
            _cityCollection = new ObservableCollection<string>();
            ForecastColletion = new ObservableCollection<GridView>();
            SearchBtnCommand = new DelegateCommand(GetInformationAboutCity);
            KeyUpEventCommand = new DelegateCommand<KeyEventArgs>(KeyEnterCommand);
            KeyUpEventCommandEnter = new DelegateCommand<KeyEventArgs>(KeyEnterCommandEnter);
            _dictionaryPaths = new Dictionary<string, string>(DictionaryOfPaths());
        }

        public DelegateCommand SearchBtnCommand { get; }
        public DelegateCommand<KeyEventArgs> KeyUpEventCommand { get; }
        public DelegateCommand<KeyEventArgs> KeyUpEventCommandEnter { get; }

        public string Temperature
        {
            get => _temp;
            set => SetProperty(ref _temp, value);
        }

        public string Sight
        {
            get => _sight;
            set => SetProperty(ref _sight, value);
        }

        public string ImageSource
        {
            get => _image;
            set => SetProperty(ref _image, value);
        }

        public string City
        {
            get => _city;
            set => SetProperty(ref _city, value);
        }

        public string Presure
        {
            get => _presure;
            set => SetProperty(ref _presure, value);
        }

        public string Wind
        {
            get => _wind;
            set => SetProperty(ref _wind, value);
        }

        public string Humidity
        {
            get => _humidity;
            set => SetProperty(ref _humidity, value);
        }

        public ObservableCollection<GridView> ForecastColletion
        {
            get => _forecastColletion;
            set
            {
                _forecastColletion = value;
                SetProperty(ref _forecastColletion, value);
            }
        }

        public ObservableCollection<string> CityCollection
        {
            get => _cityCollection;
            set
            {
                _cityCollection = value;
                SetProperty(ref _cityCollection, value);
            }
        }

        public string Search
        {
            get => _search;
            set => SetProperty(ref _search, value);
        }

        public void KeyEnterCommand(KeyEventArgs args)
        {
            if (BeforeInsertValue())
            {
                var lista = HttpGrabber.GetCityFromJson(Search);
                _cityCollection.AddRange(lista);
                CityCollection = _cityCollection;
            }
            else if (Search.Length < 2)
            {
                CityCollection.Clear();
            }
        }

        private bool BeforeInsertValue()
        {
            if (Search.Length <= 2)
                return false;
            string searchedValue = new string(Search.Take(3).ToArray()).ToLower();
            if (searchedValue == _updatedValue) return false;
            _updatedValue = searchedValue;
            return true;
        }

        public void KeyEnterCommandEnter(KeyEventArgs args)
        {
            GetInformationAboutCity();
        }

        public async void GetInformationAboutCity()
        {
            try
            {
                if (string.IsNullOrEmpty(Search)) return;
                var jsonValueData = await HttpGrabber.GetJsonListFromUrl(Search);
                string cityData = jsonValueData[0].Weather;
                string forecastData = jsonValueData[1].Forecast;
                RootObject weatheRootObject = await HttpGrabber.Deserialize_Json(cityData);
                _forecastRootObject = await HttpGrabber.Deserialize_Json(forecastData);
                if (weatheRootObject.cod != 404)
                {
                    Temperature = $"Temperatura {Math.Round(weatheRootObject.main.temp, 1)} °C";
                    City = $"Miasto {_search}";
                    Presure = $"Ciśnienie {weatheRootObject.main.pressure} hPa";
                    Wind = $"Wiatr {weatheRootObject.wind.speed} m/s";
                    Humidity = $"Wilgotność {weatheRootObject.main.humidity} %";
                    ImageSource = SetImageToSource(weatheRootObject.Weather[0].description);

                    var forecastList = _forecastRootObject.list.Select(xz => new GridView
                    {
                        Day =
                            _culture.DateTimeFormat.GetDayName(Convert.ToDateTime(xz.dt_txt).Date.ToLocalTime()
                                .DayOfWeek) +
                            " " + Convert.ToDateTime(xz.dt_txt).ToString("HH:mm") + " " +
                            Convert.ToDateTime(xz.dt_txt).Date.ToString("dd/MM"),
                        Temperature = Math.Round(xz.main.temp, 1).ToString(CultureInfo.InvariantCulture) + " °C",
                        WeatherType = xz.weather[0].description
                    }).ToList();

                    ForecastColletion.Clear();
                    _forecastColletion.AddRange(forecastList);
                    ForecastColletion = _forecastColletion;
                    Sight = Visibility.Visible.ToString();
                }
                else
                {
                    MessageBox.Show("Brak danych o danej miejscowości", "Informajca", MessageBoxButton.OK,
                        MessageBoxImage.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ups coś poszło nie tak, {ex.Message}", "Błąd", MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }
        }

        public Dictionary<string, string> DictionaryOfPaths()
        {
            var imagesDictionary = new Dictionary<string, string>();
            string sunny = @"\Content\sunny.png";
            string lightRain = @"\Content\light_rain.png";
            string scatteredClouds = @"\Content\scattered_clouds.png";
            string littleClouds = @"\Content\little_clouds.png";
            string thunderStorm = @"\Content\thunderstorm.png";
            string snow = @"\Content\snow.png";
            string littleSnow = @"\Content\little_snow.png";
            string rain = @"\Content\rain.png";
            string mist = @"\Content\mist.png";

            imagesDictionary.Add("bezchmurnie", sunny);
            imagesDictionary.Add("słabe opady deszczu", lightRain);
            imagesDictionary.Add("rozproszone chmury", scatteredClouds);
            imagesDictionary.Add("całkowite zachmurzenie", scatteredClouds);
            imagesDictionary.Add("lekkie zachmurzenie", littleClouds);
            imagesDictionary.Add("pochmurno z przejaśnieniami", littleClouds);
            imagesDictionary.Add("burza", thunderStorm);
            imagesDictionary.Add("śnieg", snow);
            imagesDictionary.Add("słabe opady śniegu", littleSnow);
            imagesDictionary.Add("deszcz", rain);
            imagesDictionary.Add("mgła", mist);

            return imagesDictionary;
        }
        public string SetImageToSource(string weather)
        {
            return _dictionaryPaths[weather];
        }
    }
}