﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Xml.Serialization;
using System.IO;
using System.Text.RegularExpressions;


public class BLAutot
{
    public BLAutot()
    {

    }

    public static List<Auto> HaeAutot()
    {
        AutoLista autot = new AutoLista();
        List<Auto> autoLista = new List<Auto>();

        Serialisointi.DeSerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), ref autot);

        for (int i = 0; i < autot.Autot.Count; i++)
        {
            autoLista.Add(autot.Autot[i]);
        }

        return autoLista;
    }

    public static void VieAutot(AutoLista autot)
    {
        Serialisointi.SerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), autot);
    }

    public static List<Auto> SortList(List<Auto> autoLista, string GridViewSortExpression, string SortDirection)
    {
        if (autoLista != null)
        {
            if (GridViewSortExpression != string.Empty)
            {
                if (SortDirection == "ASC")
                {
                    autoLista = autoLista.OrderBy
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
                else
                {
                    autoLista = autoLista.OrderByDescending
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
            }
            return autoLista;
        }
        else
        {
            return autoLista;
        }
    }

    public static string regexString(string tarkistettava, string kohde)
    {
        Regex regMerkki = new Regex(@"^[a-zA-Z]{1,15}$");
        Regex regAid = new Regex(@"^[0-9]{1,9}$");
        Regex regRekisteri = new Regex(@"^([a-zA-Z]{1,3})-([0-9]{1,3})$");
        Regex regMalli = new Regex(@"^[\S*\s*]{1,20}$");
        Regex regVm = new Regex(@"^[0-9]{4}$");
        Regex regMyyntiHinta = new Regex(@"^[0-9]{1,9}$");
        Regex regOstoHinta = new Regex(@"^[0-9]{1,9}$");

        switch (kohde)
        {
            case "Merkki":
                return regMalli.Match(tarkistettava).ToString();
            case "Aid":
                return regAid.Match(tarkistettava).ToString();
            case "Rekisteri":
                return regRekisteri.Match(tarkistettava).ToString();
            case "Malli":
                return regMalli.Match(tarkistettava).ToString();
            case "Vm":
                return regVm.Match(tarkistettava).ToString();
            case "MyyntiHinta":
                return regMyyntiHinta.Match(tarkistettava).ToString();
            case "OstoHinta":
                return regOstoHinta.Match(tarkistettava).ToString();
            default:
                return "Tapahtui virhe";
        }
    }
}

public class Serialisointi
{
    public static void SerialisoiXml(string tiedosto, AutoLista autot)
    {
        XmlSerializer xs = new XmlSerializer(autot.GetType());
        TextWriter tw = new StreamWriter(tiedosto);
        try
        {
            xs.Serialize(tw, autot);
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            tw.Close();
        }
    }

    public static void DeSerialisoiXml(string filePath, ref AutoLista autot)
    {
        XmlSerializer deserializer = new XmlSerializer(typeof(AutoLista));
        try
        {
            FileStream xmlFile = new FileStream(filePath, FileMode.Open);
            autot = (AutoLista)deserializer.Deserialize(xmlFile);
            xmlFile.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {

        }
    }
}


[Serializable()]
public class Auto
{
    [XmlElement("merkki")]
    public string Merkki { get; set; }
    [XmlElement("aid")]
    public string Aid { get; set; }
    [XmlElement("rekkari")]
    public string Rekkari { get; set; }
    [XmlElement("malli")]
    public string Malli { get; set; }
    [XmlElement("vm")]
    public int Vm { get; set; }
    [XmlElement("myyntiHinta")]
    public int MyyntiHinta { get; set; }
    [XmlElement("sisaanOstoHinta")]
    public int OstoHinta { get; set; }

    public Auto()
    {
    }
}

[Serializable()]
[XmlRoot("Wanhatautot")]
public class AutoLista
{
    [XmlElement("Auto")]
    public List<Auto> Autot { get; set; }

    public AutoLista()
    {
        Autot = new List<Auto>();
    }
}


