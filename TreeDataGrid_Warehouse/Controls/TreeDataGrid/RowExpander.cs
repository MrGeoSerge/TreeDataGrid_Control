using System.Windows.Controls;
using System.Windows;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid
{
    public class RowExpander : Control
    {
		static RowExpander ()
		{
			DefaultStyleKeyProperty.OverrideMetadata (typeof (RowExpander), new FrameworkPropertyMetadata (typeof (RowExpander)));
		}
	}
}
