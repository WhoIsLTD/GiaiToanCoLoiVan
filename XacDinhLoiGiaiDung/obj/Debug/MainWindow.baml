   M S B A M L   `   `   `  ����M  IXacDinhLoiGiaiDung, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:XacDinhLoiGiaiDungXacDinhLoiGiaiDung  5      #    XacDinhLoiGiaiDung.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      2local clr-namespace:XacDinhLoiGiaiDung     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5        $	��550��5   _   $	��800��6l   ���	#FFD1F3F2.��5      �   � RowDefinitions  5	   
   �� 5
      $
��auto �6   6,   �� 5      $	��365 �6   6+   �� 5      $��12 �6   6*   �� 5      $��64 �6   6*   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��16q�6   $��8q�6+   $��0��66   .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$	 img��5      $��60��6%   $��60��60   6>   �� 5      -   5         ��Name$ tblQuestion��5   W    $   MaterialDesignHeadline5TextBlock#���   6   $��Question��6l   $
��Wrap=�6|   $	��693��6�   6�   5      5      �� 5   
    �� Padding$ 16q�6   $��1��6   ._�5      �� $
��Auto=�6   .��5      A� -   5         A�Name$ spMainControl��5       A� Columns$ 2��66   5      5      5      �� 5   
   $��2��6   ���#dbe2e3   MaterialDesignLightSeparator#��[ 66   � 5   
   $��3��6   $	��Top=�6    � ColumnDefinitions 5      �� 5       6%   �� 5!      $��60 �6#   60   �� 5"      $��60 �6#   60   �� 5#      $��60 �6#   60   .+�5%      �� -   5        $ 
tblMessage��5%         MaterialDesignBody1TextBlock#��[ 6,   $��Center=�6b   $��Center=�6}   5&      �� 5'      -   5         ��Name$ btnEdit��5'      $��1��6&   $��5 5 5 5q�66    , (MaterialDesignFloatingActionAccentButton#��[ 6G   	 � ToolTip$
	 Edit��6�   $��48��6�   $��48��6�   .��5(      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$

 Edit=�6*   $��24��66   $��24��6B   5)      �� 5*      -   5        $ 
btnRefresh��5*      $��2��6)   $��5 5 5 5q�69   #��[ 6J   $	 Refresh��6�   $��48��6�   $��48��6�   .��5+        $
 Refresh=�6*   $��24��69   $��24��6E   5,      �� 5-      -   5        $ btnCheckAnswer��5-      $��3��6-   $��5 5 5 5q�6=   #��[ 6N   $	 Check the answer��6�   $��48��6�   $��48��6�   .��5.        $
 Check=�6*   $��24��67   $��24��6C   5/      50      51      52      