using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TreeDataGrid_Warehouse
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow ()
		{
			InitializeComponent ();
		}

		public void AddDrillDownButton (int index)
		{
			var button = new Button ();
			button.Name = "Button_" + index;
			button.Content = "Button #" + index;
			button.Tag = index;
			button.Click += ReturnToState;


			StackPanelWithTreeViews.Children.Add (button);
		}

		void ReturnToState (object sender, RoutedEventArgs e)
		{
			var index = 0;
			Int32.TryParse ((sender as Button).Tag.ToString (), out index);

			WarehouseViewUserControl.Warehouse_TreeDataGrid.ReturnToPreviousTreeDataGrid (index);

			// удаляем кнопки
			StackPanelWithTreeViews.Children.RemoveRange (index + 1, StackPanelWithTreeViews.Children.Count - (index + 1));


			//
		}

		void ExpandAllNodes_Click (object sender, RoutedEventArgs e)
		{
			var rows = WarehouseViewUserControl.Warehouse_TreeDataGrid.Rows;

			WarehouseViewUserControl.Warehouse_TreeDataGrid.SetIsExpanded (rows[0], true);
		}

		void CollapseAllNodes_Click (object sender, RoutedEventArgs e)
		{

		}

	}
}
