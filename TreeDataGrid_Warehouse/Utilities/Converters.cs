using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace TreeDataGrid_Warehouse.Utilities
{
    public class LevelToIndentConverter : IValueConverter
    {
        const double IndentSize = 19.0;

        public object Convert (object o, Type type, object parameter, CultureInfo culture)
        {
            return new Thickness ((int)o * IndentSize, 0, 0, 0);
        }

        public object ConvertBack (object o, Type type, object parameter, CultureInfo culture)
        {
            return null;
        }
    }

    public class CanExpandConverter : IValueConverter
    {
        public object Convert (object o, Type type, object parameter, CultureInfo culture)
        {
            if ((bool)o)
                return Visibility.Visible;
            else
                return Visibility.Hidden;
        }

        public object ConvertBack (object o, Type type, object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
