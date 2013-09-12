using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Movie
/// </summary>
public class Movie
{
  public string Title { get; set; }
  public string Director { get; set; }
  public int Year { get; set; }
  public static List<Movie> Get3Movies()
  {
    var muuvit = new List<Movie>();
    muuvit.Add(new Movie() { Title = "Pahat kissat", Director = "Aleksi Mäkelä", Year = 2003 });
    muuvit.Add(new Movie() { Title = "Napapiirin sankarikissat", Director = "Dome Karukoski", Year = 2010 });
    muuvit.Add(new Movie() { Title = "Uuno Turhapuro kissan leivissä", Director = "Ere Kokkonen", Year = 1984 });
    return muuvit;
  }
}