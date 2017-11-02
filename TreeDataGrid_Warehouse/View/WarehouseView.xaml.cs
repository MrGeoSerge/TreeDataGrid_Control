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
using TreeDataGrid_Warehouse.Controls.TreeDataGrid;
using TreeDataGrid_Warehouse.Model;

namespace TreeDataGrid_Warehouse.View
{
	/// <summary>
	/// Interaction logic for WarehouseView.xaml
	/// </summary>
	public partial class WarehouseView : UserControl
	{
		public WarehouseView ()
		{
			InitializeComponent ();
			//Warehouse_TreeDataGrid.Model = new WarehouseModel ();
		}

		private void Warehouse_TreeDataGrid_MouseDoubleClick (object sender, MouseButtonEventArgs e)
		{
			//обновляем ТриДатаГрид
			var warehouseItem = (sender as TreeDataGrid)?.SelectedItem as TreeNode;

			//возвращает счетчик состояний
			var index = Warehouse_TreeDataGrid.UpdateTreeDataGrid (warehouseItem);

			//создаем кнопку
			var gridParent = (this.Parent as Grid).Parent as MainWindow;
			gridParent.AddDrillDownButton (index);
		}
	}
}
