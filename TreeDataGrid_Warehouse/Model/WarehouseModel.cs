using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TreeDataGrid_Warehouse.Model;

namespace TreeDataGrid_Warehouse.Model
{
	public class WarehouseModel
	{
		public WarehouseModel ()
		{

		}

		//Предоставление данных для одного узла после дабл клика
		public WarehouseItem GetChildTree (object parent)
		{
			return parent as WarehouseItem;
		}


		//Предоставление нодов для изначального дерева и узлов второго порядка для узлов
		public IEnumerable GetChildren (object parent)
		{
			var warehouseItemParent = parent as WarehouseItem;

			if (warehouseItemParent == null) {
				foreach (var item in WarehouseService.GetWarehouseData ()) {
					yield return item;
				}
			} else {
				foreach (var item in warehouseItemParent.Items) {
					yield return item;
				}
			}
		}

		public bool HasChildren (object parent)
		{
			return parent is WarehouseItem;
		}
	}
}
