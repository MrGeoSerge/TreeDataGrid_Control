   M S B A M L   `   `   `  ����Q  MTreeDataGrid_Warehouse, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:TreeDataGrid_Warehouse.ViewTreeDataGrid_Warehouse.View  5   	   '    !TreeDataGrid_Warehouse.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:TreeDataGrid_Warehouse.View     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5        $��Expand All Nodes��5      $��3q�60   6;   �� 5      -   5        $��Collapse All Nodes��5      $��3q�62   6=   5      �� 5   
   -   5        $��StackPanelWithTreeViews��5      $ 
Horizontal=�64   $��1��6M   .+�5      �� -   5        $��	FirstView��5      $��3q�6)   
 � Tag$ 0��6J   5      /   )TreeDataGrid_Warehouse.View.WarehouseView  5   
   -   5          Name$ WarehouseViewUserControl��5      $��2��6@   5      5      