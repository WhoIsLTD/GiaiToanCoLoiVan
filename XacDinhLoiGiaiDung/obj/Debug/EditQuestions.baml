   M S B A M L   `   `   `  ����M  IXacDinhLoiGiaiDung, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:XacDinhLoiGiaiDungXacDinhLoiGiaiDung  5      &     XacDinhLoiGiaiDung.EditQuestions   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      2local clr-namespace:XacDinhLoiGiaiDung     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          � Title$  Window1��5   _   $	��550��6o   $	��800��6|   .��5      � ���	#FFC4E4E3 � RowDefinitions 5	   
   �� 5
      $
��253* �6   �� 5      $
��258* �6   �� 5      $	��60* �6   .+�5   
   � $��0��6    5      �� 5      $	��40* �6    �� 5      $	��95* �6    �� 5      $	��51* �6     � ColumnDefinitions 5      �� 5      $
��518* �6#   �� 5      $
��275* �6#   .+�5      �� $��Đề bài: ��6   $
��Bold"�6'   $��20(�69   $
��Left=�6G   $	��Top=�6b   $��34��6z   $	��243��6�   �� 5      -   5         ��Name$ txtQuestion��5      $��0��6+   $��2��6;    �� TextWrapping$
 Wrap=�6O   $��24(�6c   $��Stretch=�6q   $��1��6�   $
��Left=�6�   $��Center=�6�    �� AcceptsReturn . 6�   �� 5      -   5         ��Name$ tblListOfAnswer��5   S   $��0��6   $��2��6(   $&�� Số lượng câu trả lời: ��65   $��15,0,8.4,5.4q�6l   $��Bottom=�6�   $��16��6�   �� 5      -   5         ��Name$ btnAddAnswer��5   �      MaterialDesignRaisedButton#��[  6    � ToolTip$/ )Resource name: MaterialDesignRaisedButton��6I   $��2��6}   $��1��6�   $��Stretch=�6�   $��Stretch=�6�   $
��Auto��6�   $��16.6,10.8,20.6,11.4q�6�   .��60  _Thêm câu trả lời5       5!      � 5"   
   $��1��6   .+�5#      �� $��3��6   $��Disabled=�6(   .��5$      �� -   5        	 ��Name$	 lvAnswer��5$   &   $��1q�6   ��5%      �� 5&      .R�5'      � 
 �Name$
 	grdAnswer��6#   .+�5(   "   � $��1��6'   $
��auto��64   $
��auto��6A    5)   &   �� 5*   *   $��60 �6;   6H   �� 5+   *   $	��440 �6;   6I   �� 5,   *   $��60 �6;   6H   .+�5.   &   	�  	�Name$ 	rdoAnswer��62    	� 	GroupName$ gnAnswer��6E   $��0��6Z    # MaterialDesignAccentRadioButton#��[ 6�    d� 	IsChecked 6j   �� *	Checked+6�   �� 5/   &   $ 	txtAnswer��6.   $	��100��6A   $
 Wrap=�6N    . $��0 0 0 0q�6w   $��1��6�     MaterialDesignTextBox#��[ 6�   ��6�   �� *Values+6�   �� 50   &   $ 	btnDelete��6-   -   5        $��5 5 5 5q�50   X   $��2��6i   $��24��6y   $��24��6�    , (MaterialDesignFloatingActionAccentButton#��[ 6�   $ Delete this answer��6�   .��51   *   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Delete=�6B   $��24��6P   $��24��6\   52   '   53   #   54      55      57      58      59      � 5:   
   $��2��6    5;      �� 5<      $
��149* �6#   �� 5=      $	��74* �6#   �� 5>      $	��74* �6#   .+�5@      �� -   5        $ 	btnAccept��5@   �   #��[  6   $/ )Resource name: MaterialDesignRaisedButton��6I   $��1��6}   $��10q�6�   $
��Auto��6�   .��6�   _Đồng ý5B      �� 5C      -   5        $��	btnCancel��5C   �   #��[  6   $/ )Resource name: MaterialDesignRaisedButton��6I   $��2��6}   $��10q�6�   $
��Auto��6�   .��6�   _Hủy5E      5F      5I      5J      