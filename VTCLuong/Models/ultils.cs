using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

public class ultils
{
    public static DataTable CreateDataTable<T>(IEnumerable<T> entities)
    {
        var dt = new DataTable();

        //creating columns
        foreach (var prop in typeof(T).GetProperties())
        {
            dt.Columns.Add(prop.Name, prop.PropertyType);
        }

        //creating rows
        foreach (var entity in entities)
        {
            var values = GetObjectValues(entity);
            dt.Rows.Add(values);
        }


        return dt;
    }

    public static DataTable CreateDataTableStr<T>(IEnumerable<T> entities)
    {
        var dt = new DataTable();

        //creating columns
        foreach (var prop in typeof(T).GetProperties())
        {
            dt.Columns.Add(prop.Name, typeof(string));
        }

        //creating rows
        foreach (var entity in entities)
        {
            var values = GetObjectValues(entity);
            dt.Rows.Add(values);
        }


        return dt;
    }

    public static object[] GetObjectValues<T>(T entity)
    {
        var values = new List<object>();
        foreach (var prop in typeof(T).GetProperties())
        {
            values.Add(prop.GetValue(entity));
        }

        return values.ToArray();
    }
}