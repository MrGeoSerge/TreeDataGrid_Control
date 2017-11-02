using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid
{
	class RowsCollectionMemento
	{
		public TreeDataGridRowsCollection<TreeNode> RowsMemento { get; private set; }

		public RowsCollectionMemento (TreeDataGridRowsCollection<TreeNode> rowsMemento)
		{
			this.RowsMemento = rowsMemento;
		}
	}
}
