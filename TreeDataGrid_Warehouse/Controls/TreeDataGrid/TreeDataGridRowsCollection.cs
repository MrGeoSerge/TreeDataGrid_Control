using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid
{
    public class TreeDataGridRowsCollection<T> : ObservableCollection<T>
    {

        public void RemoveRange (int index, int count)
        {
            CheckReentrancy ();
            var items = Items as List<T>;
            items.RemoveRange (index, count);
            OnReset ();
        }

        public void InsertRange (int index, IEnumerable<T> collection)
        {
            CheckReentrancy ();
            var items = Items as List<T>;
            items.InsertRange (index, collection);
            OnReset ();
        }

        void OnReset ()
        {
            OnPropertyChanged ("Count");
            OnPropertyChanged ("Item[]");
            OnCollectionChanged (new NotifyCollectionChangedEventArgs (
                NotifyCollectionChangedAction.Reset));
        }

        void OnPropertyChanged (string propertyName)
        {
            OnPropertyChanged (new PropertyChangedEventArgs (propertyName));
        }
    }
}
