using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid.MementoPattern
{
	class RowsCollectionOriginator
	{
		public TreeDataGridRowsCollection<TreeNode> RowsMemento { get; set; }

		public RowsCollectionMemento  SaveState ()
		{
			return new RowsCollectionMemento (RowsMemento);
		}

		public void RestoreState (TreeDataGridRowsCollection<TreeNode> memento)
		{
			this.RowsMemento = memento;
		}
	}
}
