   M S B A M L   `   `   `  ����Q  MTreeDataGrid_Warehouse, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:TreeDataGrid_Warehouse.Controls.TreeDataGrid,TreeDataGrid_Warehouse.Controls.TreeDataGrid  5   	   S.clr-namespace:TreeDataGrid_Warehouse.Utilities TreeDataGrid_Warehouse.Utilities  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExpandCollapseToggleStyle  �� 
TargetType �� Property �� Value �� 
TargetType �� Padding  	TextBrush �� Angle �� CenterX �� CenterY �� Triggers	 P� Property
 P� Value �� 
TargetName  HyperlinkBrush ]� 
Conditions �� Property �� Value=    7TreeDataGrid_Warehouse.Utilities.LevelToIndentConverter  LevelToIndentConverter9   3TreeDataGrid_Warehouse.Utilities.CanExpandConverter  CanExpandConverter>   8TreeDataGrid_Warehouse.Controls.TreeDataGrid.RowExpander d�Name �� 	Converter �� RelativeSource �� AncestorTypeB  <TreeDataGrid_Warehouse.Controls.TreeDataGrid.TreeDataGridRow d� 	IsChecked �� Mode  DataGridRowBackgroundColor �� Color  DefaultFGColor)  #System.Windows.Controls.DataGridRow ��Name J� SnapsToDevicePixels'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� 
TargetName �� TargetProperty ! DataGridAltRowBackgroundColor	 �� To % !DataGridRowPressedBackgroundColor '	 #DataGridRowMouseOverBackgroundColor?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions  � RowDefinitions?	  9System.Windows.Controls.Primitives.DataGridCellsPresenter!   
ItemsPanelA
  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter"   DetailsVisibility$#   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation$   Vertical% �� ConverterParameter&   System.Windows.Controls.DataGrid#&   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader7  1System.Windows.Controls.DataGridHeadersVisibility
'   Row!(   HeadersVisibilityConverter?   9TreeDataGrid_Warehouse.Controls.TreeDataGrid.TreeDataGrid 
 DefaultFGColorBrush  DataGridRowBorderBrush  DataGridBackgroundColor  DataGridDisabledColor) ��Name  DataGridBackgroundBrush*   SelectAllCommand+ �� 
ResourceId, �� TypeInTargetAssembly
-   AllG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter.  Name/   Column0 ��Name1 �� CanContentScroll2 ��Name3 �� Orientation4 �� ViewportHeight5 �� ViewportSize6 �� ScrollableHeight7 � Maximum*8 �� #ComputedVerticalScrollBarVisibility9 � Value: �� ViewportWidth; �� ScrollableWidth,< �� %ComputedHorizontalScrollBarVisibility= �� Triggers�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Ctree:clr-namespace:TreeDataGrid_Warehouse.Controls.TreeDataGrid  5   	   <	utilities.clr-namespace:TreeDataGrid_Warehouse.Utilities  5   	   %�  &	        &	 �    &	 �    '  �    7   7  7  '      '  �    �� 5      "  d�6.   .�5   
   ��  � |� .  6&   �� 5   
    � ��$ 19��6"   �� 5   
    � ��$ 13��6#   �� 5	   
    �@J�SnapsToDevicePixels . 60   �� 5
   
    � �� 5      �� 5      " d�6"   .R�5      �� $ 5,5,5,5q�6   ���	#00FFFFFF$��16��6F   $��16��6Q   ._�5      F� $��
ExpandPath��6W   
������ #���  62   ��5      B� 5   "   $��M0,0L0,6L6,0zC�6/   z�5      �� 5   "   $	 135Q�62   $ 3Q�6>   $ 3Q�6J   5      5       5      P� 5      	 �@J�IsMouseOver
 . . �5      �� $ 
ExpandPath��6=   # �  5   %    � ���� 5      $ 
ExpandPath��6;    � ��
 ���� 6S   5      P� 5      	 �@d�	IsChecked$

 TrueY�6D   . �5      �� $ 
ExpandPath��6J    � z� 5   "   �� 5    &   $	 180Q�66   $ 3Q�6B   $ 3Q�6N   5"      �� 5#      $ 
ExpandPath��6;   # �  6S    � ���� 5$      $ 
ExpandPath��6=   # �  6U    � ��5%      ]� 5&       5'      �� 5(   "    �@d�	IsChecked$
 TrueY�6N   �� 5)   "    �@J�IsMouseOver . 6M   /�5+      �� 5,   #   $ 
ExpandPath��6O    � z� 5-   &   �� 5.   *   $	 180Q�6:   $ 3Q�6F   $ 3Q�6R   50   #   �� 51   "   $ 
ExpandPath��6?   # �  52   )    � ���� 53   "   $ 
ExpandPath��6A   # �  54   )    � ��56      58      5:      5;         5<      6'     5=      6#   �� 5>      "   6   .�5?   
   ��  � |� .  6&   �� 5@   
    � �� 5A      �� 5B      "  6"   .R�5C      d� $ Expander��6$   8��  y�5E      �� *Node.IsExpandable+8   �� "  ��5F      �� *
Node.Level+8   �� "   5G      �� *Node.IsExpanded+$ TwoWay=� �� "  5H      5J      5K      �� 5L      "   6   .�5M   
   ��  � ��$ Center=�6.   �� 5N   
    � ��$ Center=�65   �� 5O   
    � �� 5P      �� 5Q      # �  6"   5S      �� 5T   
    � �� 5U      �� 5V      ForegroundColor��# �  6;   5X      �� 5Y   
    �@J�SnapsToDevicePixels . 60   �� 5Z   
    �@=�ErrorTemplate 65   Z� �� 5[   
    �@ ValidationErrorTemplate 5\      �� 5]      .R�5^      �� ���ErrorForegroundBrush$��2,0,0,0q�6B   $��Error!��6S   $��Center=�5_      5`      5b      �� 5c   
    � �� 5d      �� 5e      "  6"   .R�5f      �� $ 
DGR_Border��6   #��z��61   #��z��5g       . ��5h      �� 5i      BackgroundColor��# �  5j   %    5l        5m      CommonStates��. 5n   "     
Normal��6.     5o   "   Normal_AlternatingRow��. 5p   &   �� .��5q   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5r   1   # �  5s   1   5t   '   5u   #     5v   "   Normal_Selected��. 5w   &   �� .��5x   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5y   1   # �  5z   1   5{   '   5|   #     5}   "   Unfocused_Selected��. 5~   &   �� .��5   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5�   1   # �  5�   1   5�   '   5�   #     5�   "   Normal_Editing��. 5�   &   �� 63   5�   #     5�   "   MouseOver_Editing��. 5�   &   �� 63   5�   #     5�   "   MouseOver_Unfocused_Editing��. 5�   &   �� 63   5�   #     5�   "   Unfocused_Editing��. 5�   &   �� 63   5�   #     5�   "   	MouseOver��. 5�   &   �� .��5�   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5�   1   # � 	 5�   1   5�   '   5�   #     5�   "   MouseOver_Selected��. 5�   &   �� .��5�   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5�   1   # �  5�   1   5�   '   5�   #     5�   "    MouseOver_Unfocused_Selected��. 5�   &   �� 63   5�   #   5�      ._�5�         5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63     5�      �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      	  $��1��65   #��z! 6E   # z 5�   %   
  5�      $��1��67   $��1��6G   #y�z" 5�   %   # 6V   �� *AreRowDetailsFrozen+#% Z$ # Z&  �� "    5�      $��2��60   $# Vertical=�5�   %   y�6e   �� *HeadersVisibility+#% Z' # Z(  �� "  5�      5�      5�      5�      5�      �� 5�      "   6   .�5�   
   ��  � ��# � 
 6'   �� 5�   
    � ��# �  6(   �� 5�   
    � ��$ 1q�6,   �� 5�   
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5�   
    � �� . 6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
   # �@ VerticalScrollBarVisibility$ Visible=�68   �� 5�   
   " �@ EnableColumnVirtualization . 67   �� 5�   
    �@ EnableRowVirtualization . 64   �� 5�   
    �@%�VirtualizationMode$ 	Recycling=�6F   �� 5�   
    �@%�IsVirtualizing . 6B   �� 5�   
    �@ AutoGenerateColumns .  60   �� 5�   
    �@ HeadersVisibility$ Column=�6.   �� 5�   
    �@��AlternationCount$ 2��6-   �� 5�   
    �@ 
IsReadOnly . 6'   �� 5�   
    � ��$ Lucida Console)�6'   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� $ border��6    . #��z��6H   #��z��5�      # z��6Q   ��5�      �� 5�      BackgroundColor��# �  6G    5�        5�      CommonStates��. 5�   "     Disabled��. 5�   &   �� .��5�   *   �� $ 0D�69   $ BackgroundColor��6F   $ Color�5�   1   # �  5�   1   5�   '   5�   #     5�   "   
Normal��6.   5�      ._�5�      �� $) DG_ScrollViewer��6'   |�.  #���  5�   !   ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?     5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� |�.  #��Z* 6C   ��6r   C� *�� $"+ DataGridSelectAllButtonStyle��",  +y�5�   [   �� *HeadersVisibility+#% Z- # Z(  �� "  ��5�   r   �� *CellsPanelHorizontalOffset+ �� "    5�   *   $!. PART_ColumnHeadersPresenter��6I   $��1��5�   1   y�6A   �� *HeadersVisibility+#% Z/ # Z(  �� "  �� 5�   *   $!0 PART_ScrollContentPresenter��6A   $��2��6f   $��1��5   1   #1 z��6>   �� 5  *   $2 PART_VerticalScrollBar��64   $��2��6T   $��1��6d   $3 Vertical=�5  1   #5 z4 6H   #7 z6 5  1   #y�z8 5  1   9 6t   �� *VerticalOffset+$ OneWay=� �� *TemplatedParent+� 5  *   $��1��6/   $��2��6?    5  .   �� 5  2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5
  2   $��* �6C   .+�5  .   �� $2 PART_HorizontalScrollBar��68   $��1��6Z   $3 
Horizontal=�5  5   #5 z: 5  5   #7 z; 5  5   #y�z< 5  5   9 6z   �� *HorizontalOffset+$ OneWay=� �� *TemplatedParent+5  +   5  '   5  #   .��5     �� # z 6-   5     5     5     5     = 5  
   P� 5     	 �@��
IsGrouping
 . . �5     ��  � �� .  6B   5     5!     5"     