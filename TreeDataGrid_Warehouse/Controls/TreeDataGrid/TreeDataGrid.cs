using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using TreeDataGrid_Warehouse.Model;

namespace TreeDataGrid_Warehouse.Controls.TreeDataGrid
{
    public class TreeDataGrid : DataGrid
    {
		//объект для хранения состояния строк
		RowsCollectionHistory rowsCollectionHistory;

		#region Properties

		//внутренняя коллекция строк, представляющая собой видимые узлы
		//актуально размещенные в ДатаГриде
		public TreeDataGridRowsCollection<TreeNode> Rows {
            get;
            private set;
        }

		//WarehouseModel model;

		public WarehouseModel Model { get; set; } 

        private TreeNode root;

        internal TreeNode Root {
            get { return root; }
        }

        public ReadOnlyCollection<TreeNode> Nodes {
            get { return Root.Nodes; }
        }

        internal TreeNode PendingFocusNode {
            get;
            set;
        }

        public ICollection<TreeNode> SelectedNodes {
            get {
                return SelectedItems.Cast<TreeNode> ().ToArray ();
            }
        }

        public TreeNode SelectedNode {
            get {
                if (SelectedItems.Count > 0)
                    return SelectedItems[0] as TreeNode;
                else
                    return null;
            }
        }
        #endregion

        public TreeDataGrid ()
        {
	        Rows = new TreeDataGridRowsCollection<TreeNode> (); //создаем пустую коллекцию строк
            root = new TreeNode (this, null); //создаем новый узел
            root.IsExpanded = true;//показываем новый узел
            ItemsSource = Rows;//задаем источник данных для ДатаГрида
            ItemContainerGenerator.StatusChanged += ItemContainerGeneratorStatusChanged;
			Model = new WarehouseModel (); //создаем модель, которая будет предоставлять данные
			CreateChildrenNodes (root);//создаем узлы-наследники

			//сохранение состояния
			rowsCollectionHistory = new RowsCollectionHistory ();
		}


		//обновляем дерево после даблКлика
		public int UpdateTreeDataGrid (TreeNode treeNode)
		{
			rowsCollectionHistory.RowsHistory.Add (Rows);
			rowsCollectionHistory.StatesCounter++;

			Rows = new TreeDataGridRowsCollection<TreeNode> ();
			Rows.Add (treeNode);

			ItemsSource = Rows;

			return rowsCollectionHistory.StatesCounter;
		}

		//возвращаем один из предыдущих видов дерева
		public void ReturnToPreviousTreeDataGrid (int index)
		{
			//берем источник строк
			Rows = rowsCollectionHistory.RowsHistory[index];

			//обновляем источник данных
			ItemsSource = Rows;

			///стереть дальнейшую историю еще

			//удаляем стейты
			//rowsCollectionHistory.RowsHistory.Count;
			rowsCollectionHistory.RowsHistory.RemoveRange (index + 1, rowsCollectionHistory.RowsHistory.Count - (index + 1));

		}

		void ItemContainerGeneratorStatusChanged (object sender, EventArgs e)
        {
            if (ItemContainerGenerator.Status == System.Windows.Controls.Primitives.GeneratorStatus.ContainersGenerated && PendingFocusNode != null) {
                var item = ItemContainerGenerator.ContainerFromItem (PendingFocusNode) as TreeDataGridRow;
                if (item != null)
                    item.Focus ();
                PendingFocusNode = null;
            }
        }

		//перезаписанный метод от ДатаГрида, который инстанциирует новый ДатаГридРоу
        protected override DependencyObject GetContainerForItemOverride ()
        {
            return new TreeDataGridRow ();
        }

		//перезаписанный метод от ДатаГрида, определяет, является ли Итем ДатаГридРоу
        protected override bool IsItemItsOwnContainerOverride (object item)
        {
            return item is TreeDataGridRow;
        }


		//подготавливает новую строку для вставки указанного Итема
        protected override void PrepareContainerForItemOverride (DependencyObject element, object item)
        {
            var ti = element as TreeDataGridRow; //передаем новую пустую строку
            var node = item as TreeNode; //передаем Итем, который будет содержаться в строке
            if (ti != null && node != null) { //
                ti.Node = item as TreeNode; 
                base.PrepareContainerForItemOverride (element, node.Tag);
            }
        }

        internal void SetIsExpanded (TreeNode node, bool value)//клик на треугольнике
        {
            if (value) {
                if (!node.IsExpandedOnce) {
                    node.IsExpandedOnce = true;
                    node.AssignIsExpanded (value);
                    CreateChildrenNodes (node);
                } else {
                    node.AssignIsExpanded (value);
                    CreateChildrenRows (node);
                }
            } else {
                DropChildrenRows (node, false);
                node.AssignIsExpanded (value);
            }
        }


		//создание узлов-наследников
        internal void CreateChildrenNodes (TreeNode node)
        {
            var children = GetChildren (node);
            if (children != null) {
                int rowIndex = Rows.IndexOf (node);
                node.ChildrenSource = children as INotifyCollectionChanged;
                foreach (object obj in children) {
                    TreeNode child = new TreeNode (this, obj);
                    child.HasChildren = HasChildren (child);
                    node.Children.Add (child);
                }
                Rows.InsertRange (rowIndex + 1, node.Children.ToArray ());
            }
        }

        private void CreateChildrenRows (TreeNode node)
        {
            int index = Rows.IndexOf(node);

            // ignore invisible nodes
            if (index >= 0 || node == root) {
                var nodes = node.AllVisibleChildren.ToArray ();
                Rows.InsertRange (index + 1, nodes);
            }
        }

        internal void DropChildrenRows (TreeNode node, bool removeParent)
        {
            int start = Rows.IndexOf (node);
            // ignore invisible nodes
            if (start >= 0 || node == root) {
                int count = node.VisibleChildrenCount;
                if (removeParent)
                    count++;
                else
                    start++;
                Rows.RemoveRange (start, count);
            }
        }


		//получение узлов-наследников из модели
        IEnumerable GetChildren (TreeNode parent)
        {
            if (Model != null)
                return Model.GetChildren (parent.Tag);
            else
                return null;
        }

        bool HasChildren (TreeNode parent)
        {
            if (parent == Root)
                return true;
            else if (Model != null)
                return Model.HasChildren (parent.Tag);
            else
                return false;
        }

        internal void InsertNewNode (TreeNode parent, object tag, int rowIndex, int index)
        {
            TreeNode node = new TreeNode (this, tag);
            if (index >= 0 && index < parent.Children.Count)
                parent.Children.Insert (index, node);
            else {
                index = parent.Children.Count;
                parent.Children.Add (node);
            }
            Rows.Insert (rowIndex + index + 1, node);
        }

    }
}
