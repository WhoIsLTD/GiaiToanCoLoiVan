   M S B A M L   `   `   `  ����M  ITuRaDeTheoPhepTinh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TuRaDeTheoPhepTinhTuRaDeTheoPhepTinh  5      %    TuRaDeTheoPhepTinh.MainPhepTinh   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      2local clr-namespace:TuRaDeTheoPhepTinh     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5        $	��520��5      $	��800��6   ���	#FFD1F3F2.��5	      �   � ColumnDefinitions  5
   
   �� 5      $
��192* �6   �� 5      $
��205* �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $	��108 �6   �� 5      $
��45.6 �6   �� 5      $	��244 �6   �� 5      $
��61.6 �6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  -   5        $��title0��5         PrimaryHueDarkBrush#���   5       ! PrimaryHueDarkForegroundBrush#���  5      $��8q�5         UniformCornerRadius$ 6Q�5      .��5      �� $
��Wrap=�5      $	��Top=�6   $��	0,0,0,-16q�61   $��18(�6D   *(Tự ra đề theo phép tính có sẵn5      5        5   
   -   5        $��title��5#      #���   5       #���  5!      $��8q�5"      $ 6Q�5#      $y�Hidden=�6(   $��0,0,0.2,82.8q�6<   $��2��6R   .��5$      �� $
��Wrap=�5%      $��18(�6   Tự ra đề rồi giải5'      5(        5)   
   -   5          Name$ card0��5)      $��16q�6-   $��1��6:   $��2��6G   $��0,0.2,0,0.8q�6[   .��5*      ��  �� Orientation$ 
Horizontal=�6   .+�5+      �� -   5         ��Name$	 img��5+      $��60��6%   $��60��60   �� 5,      -   5         ��Name$ tblQuestion��5,   W    $  MaterialDesignHeadline5TextBlock#���  6   $��Question��6l   $
��Wrap=�6|   $	��719��6�   6�   5-      5.        5/   
   -   5        $
 card��5/   2   $y�Hidden=�6   $��16q�6@   $��1��6M   $��2��6Z   $��0,0.2,0,0.8q�6n   .��50      �� $ 
Horizontal=�6   .+�51      �� -   5        $
 img1��51      $��60��6&   $��60��61   �� 52      -	   5        $ 
tlQuestion��52   W   #���  6   $B��<Em hãy tự ra một bài toán và giải bài toán đó.��6k   $	��719��6�   $
��Wrap=�6�   6�   53      54      �� 55   
   -
   5        $
��lab0��55   %   $��Bài toán: ��6   $��2��61   $��18(�6>   $
��Bold"�6L   $��0,6.2,0.2,1.4q�6^   �� 56   
   -   5        $	��lab��56   #   $��Đề bài: ��6   $y�Hidden=�6.   $��2��6B   $��18(�6O   $
��Bold"�6]   $��0,6.2,0.2,1.4q�6o   �� 57   
   $��Bài giải: ��6   $��2��6%   $��18(�62   $
��Bold"�6@   $��387,6.2,0,1.4q�6R   $��2��6i   �� 59   
   -   5        $��BaiToan0��59      $��3��6"   
�������$��5,1.6,6.2,57q�6F   $��2��6\    �� TextWrapping$
 Wrap=�6m    �� AcceptsReturn . $��15(�6�   �� 5:   
   -   5        $��LoiGiai0��5:      $��3��6"   $��1��6/   
�������$��5.8,1.6,5,57q�6V   $��2��6l   $
 Wrap=�6}    . $��15(�6�   �� 5;   
   -   5        $��BaiToan��5;      $��3��6!   
�������$��5,1.6,6.2,57q�6E   $��2��6[   $y�Hidden=�6l    . 6�   �� 5<   
   -   5        $��LoiGiai��5<      $��3��6!   $��1��6.   
�������$��5.8,1.6,5,57q�6U   $��2��6k   $y�Hidden=�6|    . 6�   � 5>   
   $��4��6   $��2��6   $��0,8.6,0,-12q�60     5?      �� 5@      $��60 �6#   �� 5A      $
��109* �6#   �� 5B      $��60 �6#   60   �� 5C      $��60 �6#   60   �� 5D      $��60 �6#   60   .+�5F      d� -   5        	 d�Name$	 BtnHint��5F   2   $��48��6   $��48��6&    $  MaterialDesignActionToggleButton#��[ 5G      
 � ToolTip$+
 %MaterialDesignActionLightToggleButton��5H      ���	#FFAEEA00���	#FFAEEA00��5I      '  !MaterialDesignThemes.Wpf.PackIcon  5J         Kind$ QuestionMark=�5K      $��25��6   $��25��6&   ���	#DD00000063   1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent 5M        5N      $ EmoticonHappy=�5O      $��25��6   $��25��6'   ���	#DD00000063   5Q      �� 5R      -   5        $
 Hint��5R   �   $��1��6   $��Center=�6(   $��Center=�6C   $��20(�6`   
��� � �$y�Hidden=�6�   $��
Gợi ý: ��6�   6�   �� 5S      -   5         ��Name$ btnEdit��5S      $��2��6&    , (MaterialDesignFloatingActionAccentButton#��[ 66   $

 Edit��6x   $��48��6�   $��48��6�   .��5T        $
 Edit=�6*   $��24��66   $��24��6B   5U      �� 5V      -   5        $ btnOpen��5V      $��3��6&   #��[ 66   $

 Open��6x   $��48��6�   $��48��6�   .��5W        $ 
FolderOpen=�6*   $��24��6<   $��24��6H   5X      �� 5Y      -   5        $ btnSave��5Y      $��4��6&   #��[ 66   $

 Save��6x   $��48��6�   $��48��6�   .��5Z        $ ContentSave=�6*   $��24��6=   $��24��6I   5[      5\      5]      5^      