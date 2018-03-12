using System.Collections.Generic;
namespace Weather_2._0.Model
{
    public class RootObject
    {
        //  public Coord coord { get; set; }
        //  public List<Weather> weather { get; set; }
        public List<Prediction> predictions { get; set; }
        //public Coord Coord { get; set; }
        public Weather[] Weather { get; set; }
        public string _base { get; set; }
        public Main main { get; set; }
        public Wind wind { get; set; }
        //public int visibility { get; set; }
        //public Clouds clouds { get; set; }
        //public int dt { get; set; }
        //public Sys sys { get; set; }
        //public int id { get; set; }
        //public string name { get; set; }
        public int cod { get; set; }
        //public float message { get; set; }
        //public int cnt { get; set; }
        public List[] list { get; set; }
        // public City city { get; set; }
    }
}
