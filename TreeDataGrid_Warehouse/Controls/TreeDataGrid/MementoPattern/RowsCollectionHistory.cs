using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid
{
	class RowsCollectionHistory
	{
		public List<TreeDataGridRowsCollection<TreeNode>> RowsHistory { get; private set; }

		public int StatesCounter { get; set; }

		public RowsCollectionHistory ()
		{
			RowsHistory = new List<TreeDataGridRowsCollection<TreeNode>> ();

			StatesCounter = 0;
		}
	}
}
