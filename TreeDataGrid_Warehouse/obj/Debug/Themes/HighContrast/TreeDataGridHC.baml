   M S B A M L   `   `   `  ����Q  MTreeDataGrid_Warehouse, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:TreeDataGrid_Warehouse.Controls.TreeDataGrid,TreeDataGrid_Warehouse.Controls.TreeDataGrid  5   	   S.clr-namespace:TreeDataGrid_Warehouse.Utilities TreeDataGrid_Warehouse.Utilities  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExpandCollapseToggleStyle  �� 
TargetType �� Property �� Value �� 
TargetType �� Padding  TextBrushHC �� Angle �� CenterX �� CenterY �� Triggers	 P� Property
 P� Value �� 
TargetName  HyperlinkBrushHC ]� 
Conditions �� Property �� Value=    7TreeDataGrid_Warehouse.Utilities.LevelToIndentConverter  LevelToIndentConverter9   3TreeDataGrid_Warehouse.Utilities.CanExpandConverter  CanExpandConverter>   8TreeDataGrid_Warehouse.Controls.TreeDataGrid.RowExpander d�Name �� 	ClickMode �� 	Converter �� RelativeSource �� AncestorTypeB  <TreeDataGrid_Warehouse.Controls.TreeDataGrid.TreeDataGridRow d� 	IsChecked �� Mode  DefaultBGColorBrush)  #System.Windows.Controls.DataGridRow ��Name J� SnapsToDevicePixels  DataGridRowBackgroundBrush?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions � RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter   DetailsVisibility$   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation   Vertical �� ConverterParameter&	   System.Windows.Controls.DataGrid# 	  RowDetailsScrollingConverter:
  4System.Windows.Controls.Primitives.DataGridRowHeader7  1System.Windows.Controls.DataGridHeadersVisibility
    Row!! 	  HeadersVisibilityConverter * &DataGridHeaderMouseOverBackgroundBrush & "DataGridHeaderMouseOverBorderBrush )	 %DataGridSelectedColumnHeaderTextBrush?   9TreeDataGrid_Warehouse.Controls.TreeDataGrid.TreeDataGrid 
 DataGridRowBorderBrush" �� Color'  !System.Windows.VisualStateManager#   VisualStateGroups%  System.Windows.VisualStateGroup$   States   System.Windows.VisualState%   
Storyboard& g� Duration' �� 
TargetName( �� TargetProperty  DataGridDisabledColor	) �� To* ��Name  DataGridBackgroundBrush+ 	  SelectAllCommand, �� 
ResourceId- �� TypeInTargetAssembly
.   AllG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter/  Name0   Column1 ��Name2 �� CanContentScroll3 ��Name4 �� Orientation5 �� ViewportHeight6 �� ViewportSize7 �� ScrollableHeight8 � Maximum*9 �� #ComputedVerticalScrollBarVisibility: � Value; �� ViewportWidth< �� ScrollableWidth,= �� %ComputedHorizontalScrollBarVisibility> �� Triggers�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Ctree:clr-namespace:TreeDataGrid_Warehouse.Controls.TreeDataGrid  5   	   <	utilities.clr-namespace:TreeDataGrid_Warehouse.Utilities  5   	   %U  &	        &	 �    &	 �    '  �    7   7  7  '  >    '  P    �� 5      "  d�6.   .�5   
   ��  � |� .  6&   �� 5   
    � ��$ 19��6"   �� 5   
    � ��$ 13��6#   �� 5	   
    �@J�SnapsToDevicePixels . 60   �� 5
   
    � �� 5      �� 5      " d�6"   .R�5      �� $ 5,5,5,5q�6   ���	#00FFFFFF$��16��6F   $��16��6Q   ._�5      F� $��
ExpandPath��6Y   
������ #���  62   ��5      B� 5   "   $��M0,0L0,6L6,0zC�6/   z�5      �� 5   "   $	 135Q�62   $ 3Q�6>   $ 3Q�6J   5      5       5      P� 5      	 �@J�IsMouseOver
 . . �5      �� $ 
ExpandPath��6=   # �  5   %    � ���� 5      $ 
ExpandPath��6;    � ��
 ���� 6S   5      P� 5      	 �@d�	IsChecked$

 TrueY�6D   . �5      �� $ 
ExpandPath��6J    � z� 5   "   �� 5    &   $	 180Q�66   $ 3Q�6B   $ 3Q�6N   5"      �� 5#      $ 
ExpandPath��6;   # �  6S    � ���� 5$      $ 
ExpandPath��6=   # �  5%   %    � ��5&      ]� 5'       5(      �� 5)   "    �@d�	IsChecked$
 TrueY�6N   �� 5*   "    �@J�IsMouseOver . 6M   /�5,      �� 5-   #   $ 
ExpandPath��6O    � z� 5.   &   �� 5/   *   $	 180Q�6:   $ 3Q�6F   $ 3Q�6R   51   #   �� 52   "   $ 
ExpandPath��6?   # �  53   )    � ���� 54   "   $ 
ExpandPath��6A   # �  55   )    � ��57      59      5;      5<         5=      6'     5>      6#   �� 5?      "   6   .�5@   
   ��  � |� .  6&   �� 5A   
    � �� 5B      �� 5C      "  6"   .R�5D      d� $ Expander��6#   8��  $ Press=�5H      ��5E      �� *
Node.Level+8   �� "   5F      �� *Node.IsExpanded+$ TwoWay=� �� "  y�5G      �� *Node.IsExpandable+8   �� "  5H      5I      5K      5L      �� 5M      "   6   .�5N   
   ��  � ��$ Center=�6.   �� 5O   
    � ��$ Center=�65   �� 5P   
    � ��# �  6'   �� 5Q   
    � ��# �  6'   �� 5R   
    �@J�SnapsToDevicePixels . 60   �� 5S   
    �@=�ErrorTemplate 65   Z� �� 5T   
    �@ ValidationErrorTemplate 5U      �� 5V      .R�5W      �� ���ErrorForegroundBrush$��2,0,0,0q�6B   $��Error!��6S   $��Center=�5X      5Y      5[      �� 5\   
    � �� 5]      �� 5^      "  6"   .R�5_      �� $ 
DGR_Border��6   #��z��61   #��z��5`       . #���  5a      ._�5�         5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63    5�      �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�        $��1��65   #��z 6E   # z 5�   %     5�      $��1��67   $��1��6G   #y�z 5�   %    6V   �� *AreRowDetailsFrozen+# Z # Z  �� " 	 
  5�      $��2��60   $ Vertical=�5�   %   y�6e   �� *HeadersVisibility+# Z  # Z!  �� " 	 5�      5�       5�      P� 5�      	 �@J�IsMouseOver
 . . �5�      �� $ 
DGR_Border��6%   # �  5�   %    � ���� 5�      $ 
DGR_Border��6%   # �  5�   %    � ���� 5�      # � 	 5�   %    � ��5�      P� 5�      	 �@ 
IsSelected
 . . �5�      �� $ 
DGR_Border��6%   # �  5�   %    � ���� 5�      $ 
DGR_Border��6%   # �  5�   %    � ���� 5�      # � 	 5�   %    � ��5�      5�      5�      5�      �� 5�      "   6   .�5�   
   ��  � ��# � 
 6(   �� 5�   
    � ��$ 1q�6,   �� 5�   
     �@	 HorizontalGridLinesBrush# � 
 65   �� 5�   
    �@	 VerticalGridLinesBrush# � 
 63   �� 5�   
     �@	 RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5�   
    � �� . 6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
   # �@	 VerticalScrollBarVisibility$ Visible=�68   �� 5�   
   " �@	 EnableColumnVirtualization . 67   �� 5�   
    �@	 EnableRowVirtualization . 64   �� 5�   
    �@%�VirtualizationMode$ 	Recycling=�6F   �� 5�   
    �@%�IsVirtualizing . 6B   �� 5�   
    �@	 AutoGenerateColumns .  60   �� 5�   
    �@	 HeadersVisibility$ Column=�6.   �� 5�   
    �@��AlternationCount$ 2��6-   �� 5�   
    �@	 
IsReadOnly . 6'   �� 5�   
    � ��$ Lucida Console)�6'   �� 5�   
    � �� 5�      �� 5�      " 	 6"   .R�5�      �� $ border��6    . #��z��6H   #��z��5�      # z��6Q   ��5�      �� 5�      BackgroundColor��#" � ��5�   %   # 5�        5�      CommonStates��.$ 5�   "     Disabled��.% 5�   &   �� .��5�   *   �� $& 0D�69   $' BackgroundColor��6F   $( Color�5�   1   #) �  5�   1   5�   '   5�   #     5�   "   
Normal��6.   5�      ._�5�      �� $* DG_ScrollViewer��6'   |�.  #���  5�   !   ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?    5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� |�.  #��Z+ 6C   ��6r   C� *�� $", DataGridSelectAllButtonStyle��"- 	 +y�5�   [   �� *HeadersVisibility+# Z. # Z!  �� " 	 ��5�   r   �� *CellsPanelHorizontalOffset+ �� " 	   5   *   $!/ PART_ColumnHeadersPresenter��6I   $��1��5  1   y�6A   �� *HeadersVisibility+# Z0 # Z!  �� " 	 �� 5  *   $!1 PART_ScrollContentPresenter��6A   $��2��6f   $��1��5  1   #2 z��6>   �� 5  *   $3 PART_VerticalScrollBar��64   $��2��6T   $��1��6d   $4 Vertical=�5  1   #6 z5 6H   #8 z7 5	  1   #y�z9 5
  1   : 6t   �� *VerticalOffset+$ OneWay=� �� *TemplatedParent+� 5  *   $��1��6/   $��2��6?    5  .   �� 5  2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� " 	 �� 5  2   $��* �6C   .+�5  .   �� $3 PART_HorizontalScrollBar��68   $��1��6Z   $4 
Horizontal=�5  5   #6 z; 5  5   #8 z< 5  5   #y�z= 5  5   : 6z   �� *HorizontalOffset+$ OneWay=� �� *TemplatedParent+5  +   5  '   5  #   .��5     �� # z 6-   5     5     5     5!     > 5"  
   P� 5#     	 �@��
IsGrouping
 . . �5$     ��  � �� .  6B   5%     5'     5(     