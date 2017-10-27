using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeDataGrid_Warehouse.Model
{
	public class WarehouseService
	{
		public static ObservableCollection<WarehouseItem> GetWarehouseData ()
		{
			ObservableCollection<WarehouseItem> data = new ObservableCollection<WarehouseItem>();

				//drinks
				WarehouseItem drinks = new WarehouseItem ("Drinks", 35 );

					WarehouseItem water = new WarehouseItem ("Water", 10);

						WarehouseItem sugarWater = new WarehouseItem ("Sugar Water", 6);
						WarehouseItem mineralWater = new WarehouseItem ("Mineral Water", 4);

					water.Items.Add (sugarWater);
					water.Items.Add (mineralWater);

				drinks.Items.Add (water);

					WarehouseItem tea = new WarehouseItem ("Tea", 20 );

						WarehouseItem blackTea = new WarehouseItem ("Black Tea", 12);
						WarehouseItem greenTea = new WarehouseItem ("Green Tea", 8);

					tea.Items.Add (blackTea);
					tea.Items.Add (greenTea);

				drinks.Items.Add (tea);

					WarehouseItem coffee = new WarehouseItem ("Coffee", 5);

						WarehouseItem brazilianCoffee = new WarehouseItem ("Brazilian Coffee", 3);
						WarehouseItem kenianCoffee = new WarehouseItem ("Kenian Coffee", 2);

						coffee.Items.Add (brazilianCoffee);
						coffee.Items.Add (kenianCoffee);

					drinks.Items.Add (coffee);

			data.Add (drinks);

			WarehouseItem vegetables = new WarehouseItem ("Vegetables", 75);
				vegetables.Items.Add (new WarehouseItem ("Tomato", 40));
				vegetables.Items.Add (new WarehouseItem ("Carrot", 25));
				vegetables.Items.Add (new WarehouseItem ("Onion", 10));

			data.Add (vegetables);

			WarehouseItem fruits = new WarehouseItem ("Fruits", 55 );
				fruits.Items.Add (new WarehouseItem ("Cherry", 30));
				fruits.Items.Add (new WarehouseItem ("Apple", 20));
				fruits.Items.Add (new WarehouseItem ("Melon", 5));

			data.Add (fruits);

			return data;
		}
	}
}
