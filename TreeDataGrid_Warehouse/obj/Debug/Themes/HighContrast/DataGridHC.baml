   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   bool2VisibilityConverter  �� Color �� 
TargetType �� 
ResourceId �� TypeInTargetAssembly&     System.Windows.Controls.DataGrid �� Property �� Value �� 
TargetType'   !System.Windows.VisualStateManager   VisualStateGroups%   System.Windows.VisualStateGroup   States    System.Windows.VisualState	   
Storyboard
 g� Duration �� 
TargetName �� TargetProperty * &DataGridHeaderMouseOverBackgroundColor	 �� To & "DataGridHeaderMouseOverBorderColor ( $DataGridHeaderPressedBackgroundColor $  DataGridHeaderPressedBorderColor ��Name J� SnapsToDevicePixels �Name J� Opacity � Points �� Stretch  DataGridRowBorderBrush ��Name �� Padding  DataGridDisabledColor ��Name  DataGridBackgroundBrush � ColumnDefinitions � RowDefinitions    SelectAllCommand7   1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!    HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG   ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter   Name!   Column" ��Name# �� CanContentScroll$ ��Name% �� Orientation& �� ViewportHeight' �� ViewportSize( �� ScrollableHeight) � Maximum** �� #ComputedVerticalScrollBarVisibility+ � Value, �� Mode- �� ViewportWidth. �� ScrollableWidth,/ �� %ComputedHorizontalScrollBarVisibility0 �� Triggers1 P� Property2 P� Value*   $System.Windows.Controls.DataGridCell # DataGridCellSelectedBorderColor)   #System.Windows.Controls.DataGridRow 	 DefaultBGColorBrush 
 TextBrushHC  DataGridRowBackgroundBrush?   9System.Windows.Controls.Primitives.SelectiveScrollingGrid?	   9System.Windows.Controls.Primitives.DataGridCellsPresenter3   
ItemsPanelA
   ;System.Windows.Controls.Primitives.DataGridDetailsPresenter4   DetailsVisibility$5   SelectiveScrollingOrientation;   5System.Windows.Controls.SelectiveScrollingOrientation6   Vertical#7    RowDetailsScrollingConverter:   4System.Windows.Controls.Primitives.DataGridRowHeader
8   Row9 �� Triggers: �� 
TargetName * &DataGridHeaderMouseOverBackgroundBrush & "DataGridHeaderMouseOverBorderBrush ) %DataGridSelectedColumnHeaderTextBrush  RowHeaderGripperStyle  DataGridHeaderBorderColor ! DataGridHeaderBackgroundColor; �� Orientation< n�Name  ColumnHeaderGripperStyle=   7System.Windows.Controls.Primitives.DataGridColumnHeader  ControlTextBrushHC  DataGridHeaderBorderBrush ! DataGridHeaderBackgroundBrush= ��Name> F�Name? J� RenderTransformOrigin@ �� Angle ( $DataGridHeaderPressedBackgroundBrushA  NameB J� IsHitTestVisible�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %�-  &	        (��      5      *53SystemColors.InactiveSelectionHighlightTextBrushKey+)(�� 1     5   &   $" DataGridSelectAllButtonStyle��"   )'   d    '      '  �    &	 �    '  �    7   &	 $    '  -%    '  �+    �� 5      6    �� 5      #  � ��5      �� 5      " ��6	   .�5	      ��  � �� 5
      �� 5      " ��6   .R�5      �  5        5   	   CommonStates��. 5   
     
Normal��6     5   
   	MouseOver��.	 5      �� .��5      �� $
 0D�6   $ BackgroundColor��6(   $ Color�5      # �  5      �� 5      $
 0D�6   $ BorderColor��6(   $ Color�5      # �  5      5      5        5   
   Pressed��.	 5      �� .��5      �� $
 0D�6   $ BackgroundColor��6(   $ Color�5      # �  5      �� 5      $
 0D�6   $ BorderColor��6(   $ Color�5       # �  5!      5"      5#        5$   
   Disabled��.	 5%      �� .��5&      �� $
 0D�6   $ BackgroundColor��6(   $ Color�5'      # �  5(      �� 5)      $
 0D�6   $ BorderColor��6(   $ Color�5*      # �  5+      5,      5-      5.   
   .+�50      �� $ Border��6    . ��51   	   �� 52   
   BorderColor��#  � ��53      ��55   	   �� 56   
   BackgroundColor��#  � ��57      59   	   � 5:      $ Arrow��6   $��Right=�6   $��8,8,3,3q�6;   $
 0.15Q�6L    �   ��� ��� ��� ��� $ Uniform=�5;   "   $��Bottom=�64   ��5<   	   �� 5=   
   #  � ��6   5?   	   5@      5A      5C      5D      �� 5F      "   6	   .�5G      ��  � ��# �  6"   �� 5H       � ��$ 1q�6&   �� 5I        �@  HorizontalGridLinesBrush# �  6/   �� 5J       �@  VerticalGridLinesBrush# �  6-   �� 5K        �@  RowDetailsVisibilityMode$ VisibleWhenSelected=�6/   �� 5L       � �� . 64   �� 5M       �@��PanningMode$
 Both=�6/   �� 5N       �@��IsFlicksEnabled .  6-   �� 5O      # �@  VerticalScrollBarVisibility$ Visible=�62   �� 5P      " �@  EnableColumnVirtualization . 61   �� 5Q       �@  EnableRowVirtualization . 6.   �� 5R       �@%�VirtualizationMode$ 	Recycling=�6@   �� 5S       �@%�IsVirtualizing . 6<   �� 5T       �@  AutoGenerateColumns .  6*   �� 5U       �@  HeadersVisibility$ Column=�6(   �� 5V       �@��AlternationCount$ 2��6'   �� 5W       �@  
IsReadOnly . 6!   �� 5X       � ��$ Lucida Console)�6!   �� 5Y       � �� 5Z      �� 5[      "   6   .R�5\      �� $ border��6    . #��z��69   #��z��5]      # z��6<   ��5^      �� 5_   	   BackgroundColor��#  � ��62    5a        5b   	   CommonStates��. 5c   
     Disabled��.	 5d      �� .��5e      �� $
 0D�6   $ BackgroundColor��6(   $ Color�5f      # �  5g      5h      5i        5j   
   
Normal��6   5k   
   ._�5m      �� $ DG_ScrollViewer��6   |�.  #���  5n   	   ��5o   	   �� 5p   
   " ��6   .R�5q      �  5r      �� 5s      $
��Auto �6   �� 5t      $��* �6   �� 5u      $
��Auto �6    5w      �� 5x      $
��Auto �6   �� 5y      $��* �6   �� 5z      $
��Auto �6   .+�5|      �� |�.  #��Z 6%   ��6T   C� *�� $" DataGridSelectAllButtonStyle��"   +y�5~   [   �� *HeadersVisibility+# Z # Z  �� "   ��5�   r   �� *CellsPanelHorizontalOffset+ �� "     5�      $!  PART_ColumnHeadersPresenter��6+   $��1��5�      y�6   �� *HeadersVisibility+# Z! # Z  �� "   �� 5�      $!" PART_ScrollContentPresenter��6#   $��2��6H   $��1��5�      ## z��6   �� 5�      $$ PART_VerticalScrollBar��6   $��2��66   $��1��6F   $% Vertical=�5�      #' z& 6$   #) z( 5�      #y�z* 5�      + 6P   �� *VerticalOffset+$, OneWay=� �� *TemplatedParent+� 5�      $��1��6   $��2��6!    5�      �� 5�      ��6   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "   �� 5�      $��* �6   .+�5�      �� $$ PART_HorizontalScrollBar��6   $��1��69   $% 
Horizontal=�5�      #' z- 5�      #) z. 5�      #y�z/ 5�      + 6S   �� *HorizontalOffset+$, OneWay=� �� *TemplatedParent+5�      5�      5�      .��5�   	   �� # z 6   5�   	   5�      5�      5�      0 5�      P� 5�      1 �@��
IsGrouping2 . . �5�      ��  � �� .  66   5�      5�      �� 5�      "  6	   .�5�      ��  � �� 5�      �� 5�      "  6   .R�5�      �� $ border��6   
������ $��1q�68   
������  .  5�        5�   	   FocusStates��. 5�   
     	Unfocused��6     5�   
   Focused��6   5�   
     5�   	   CurrentStates��. 5�   
     Regular��6     5�   
   Current��.	 5�      �� .��5�      �� $
 0D�6   $ border��6(   $_ Y(Border.BorderBrush).                                             (SolidColorBrush.Color)�6G   # �  5�      5�      5�      5�   
   ._�5�      �� # z 6   $��3,0,3,0q�6U   5�      5�      5�      5�      �� 5�      "  6	   .�5�      ��  � ��$ Center=�6(   �� 5�       � ��$ Center=�6/   �� 5�       � ��# � 	 6!   �� 5�       � ��# � 
 6!   �� 5�       �@J�SnapsToDevicePixels . 6*   �� 5�       �@=�ErrorTemplate 6/   Z� �� 5�       �@ ValidationErrorTemplate 5�      �� 5�      .R�5�      �� ���ErrorForegroundBrush$��2,0,0,0q�63   $��Error!��6D   $��Center=�5�      5�      5�      �� 5�       � �� 5�      �� 5�      "  6   .R�5�      �� $ 
DGR_Border��6   #��z��6"   #��z��5�       . #���  5�      ._�5        5  	   �� 5  
   $
��Auto �6   �� 5  
   $��* �6    5  	   �� 5  
   $��* �6   �� 5  
   $
��Auto �6   .+�5  	   	  $��1��6    #��z3 60   # z 5  
   
  5  	   $��1��6"   $��1��62   #y�z4 5  
   5 6;   �� *AreRowDetailsFrozen+# Z6 # Z7  �� "     5!  	   $��2��6   $5 Vertical=�5"  
   y�6J   �� *HeadersVisibility+# Z8 # Z  �� "   5&  	   5'     9 5(     P� 5)     1 �@J�IsMouseOver2 . . �5*  	   �� $: 
DGR_Border��6   # �  5+  
    � ���� 5,  	   $: 
DGR_Border��6   # �  5-  
    � ���� 5.  	   # �  5/  
    � ��50  	   P� 51     1 �@ 
IsSelected2 . . �52  	   �� $: 
DGR_Border��6   # �  53  
    � ���� 54  	   $: 
DGR_Border��6   # �  55  
    � ���� 56  	   # �  57  
    � ��58  	   5:     5<     5=     �� 5?     " n�6'   .�5@     ��  � ��$ 8��6   �� 5A      � ��
 ���� 6!   �� 5B      �@�Cursor$ SizeNS��6   �� 5C      � �� 5D     �� 5E     " n�6   .R�5F     �� #��z��6   # z��68   5G     5I     5J     �� 5L     "  6	   .�5M     ��  � �� 5N     �� 5O     "  6   .R�5P     �  5Q       5R  	   CommonStates��. 5S  
     
Normal��6     5T  
   Normal_CurrentRow��6     5U  
   Unfocused_EditingRow��6     5V  
   Normal_EditingRow��6     5W  
   	MouseOver��.	 5X     �� .��5Y     �� $
 0D�6   $ BackgroundColor��6(   $ Color�5Z     # �  5[     �� 5\     $
 0D�6   $ BorderColor��6(   $ Color�5]     # �  5^     5_     5`       5a  
   MouseOver_CurrentRow��6     5b  
   "MouseOver_Unfocused_EditingRow��6     5c  
   MouseOver_EditingRow��6     5d  
    MouseOver_Unfocused_Selected��6     5e  
   MouseOver_Selected��.	 5f     �� .��5g     �� $
 0D�6   $ BackgroundColor��6(   $ Color�5h     # �  5i     �� 5j     $
 0D�6   $ BorderColor��6(   $ Color�5k     # �  5l     5m     5n       5o  
   +'MouseOver_Unfocused_CurrentRow_Selected��6     5p  
   !MouseOver_CurrentRow_Selected��6     5q  
   Unfocused_Selected��64     5r  
   !Unfocused_CurrentRow_Selected��6     5s  
   Normal_CurrentRow_Selected��.	 5t     �� .��5u     �� $
 0D�6   $ BackgroundColor��6(   $ Color�5v     # �  5w     �� 5x     $
 0D�6   $ BorderColor��6(   $ Color�5y     # �  5z     5{     5|       5}  
   Normal_Selected��.	 5~     �� .��5     �� $
 0D�6   $ BackgroundColor��6(   $ Color�5�     # �  5�     �� 5�     $
 0D�6   $ BorderColor��6(   $ Color�5�     # �  5�     5�     5�     5�  
   .+�5�     �� $ rowHeaderBorder��6   $��10��6(   $��1q�63   ��5�  	   �� 5�  
   BorderColor��#  �  5�     ��5�  	   �� 5�  
   BackgroundColor��#  �  5�     ._�5�  	   �� $; 
Horizontal=�6   .+�5�  
   �� $��Center=�6   # z 5�     �� 5�  
    .  ��6.   �� *ValidationErrorTemplate+ �� "  y�5�  m   �� *(Validation.HasError)+8    �� "  5�  
   5�  	   n� 5�     $< PART_TopHeaderGripper��6   #���  6-   $	��Top=�5�  	   n� 5�     $< PART_BottomHeaderGripper��6   #���  60   $��Bottom=�5�  	   5�     5�     5�     5�     �� 5�     " n�6*   .�5�     ��  � ��$ 8��6   �� 5�      � ��
 ���� 6!   �� 5�      �@�Cursor$ SizeWE��6   �� 5�      � �� 5�     �� 5�     " n�6   .R�5�     �� #��z��6   # z��68   5�     5�     5�     �� 5�     "  6	   .�5�     ��  � ��$ Center=�6/   �� 5�      � ��# �  6!   �� 5�      � �� 5�     �� 5�     "  6   .R�5�     � .+�5�     �� $ columnHeaderBorder��6   $��0,1,1,1q�6+   #���  5�  	   #���  5�  	   ._�5�  	   �  5�  
   �� 5�     $��* �6   �� 5�     $��20 �6   .+�5�  
   �� $= ContentPresenter��6   $��Center=�65   # z 5�     #��z��5�     $��3,0,3,0q�6J   F� 5�  
   $> 	SortArrow��6   $��1��6"   $��Center=�62   $��Center=�5�     $��8��6&   $��6��60   $��2,0,5,0q�6;   $
 Fill=�6L   #���  5�     $? 0.5,0.4&�5�     $y�Hidden=�6+   "����        �@B     � � @B 	6?   5�  
   5�  	   n� 5�     $< PART_LeftHeaderGripper��6   $
��Left=�6.   #���  5�  	   n� 5�     $< PART_RightHeaderGripper��6   $��Right=�6/   #���  5�  	   5�     9 5�     P� 5�     1 �@J�IsMouseOver2 . . �5�  	   �� $: columnHeaderBorder��6   # �  5�  
    � ���� 5�  	   $: columnHeaderBorder��6   # �  5�  
    � ���� 5�  	   # �  5�  
    � ��5�  	   P� 5�     1 �@ SortDirection$2 	AscendingX�6)   . �5�  	   �� $: 	SortArrow��6    � z� 5�  
   �� 5�     $	@ 180Q�6   5�  
   �� 5�  	   $: 	SortArrow��6    � y�$ Visible=�6=   �� 5�  	   # �  5�  
    � ���� 5�  	   $: columnHeaderBorder��6   # �  5�  
    � ��5�  	   P� 5�     1 �@ SortDirection$2 
DescendingX�6)   . �5�  	   �� $: 	SortArrow��6    � y�$ Visible=�6=   �� 5�  	   # �  5�  
    � ���� 5�  	   $: columnHeaderBorder��6   # �  5�  
    � ��5�  	   5�     5�     5�     �� 5�     "  6	   .�5�     ��  � ��$ 28��6   �� 5�      � �� 5�     �� 5�     "  6   .R�5�     � .+�5�       $A PART_FillerColumnHeader��6   B .  6>   �� 5�     5�     5�     5�     5�     5�     