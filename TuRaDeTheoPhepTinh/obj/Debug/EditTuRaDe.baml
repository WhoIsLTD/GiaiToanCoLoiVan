   M S B A M L   `   `   `  ����M  ITuRaDeTheoPhepTinh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TuRaDeTheoPhepTinhTuRaDeTheoPhepTinh  5      #    TuRaDeTheoPhepTinh.EditTuRaDe   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      2local clr-namespace:TuRaDeTheoPhepTinh     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          � Title$  
EditTuRaDe��5   _   $	��600��6r   $	��850��6   .��5      �� -   5         ��Name$ Control��5      $��Lựa chọn dạng bài��6    .��5	   
   �  � RowDefinitions 5
      �� 5      $	��18* �6    �� 5      $
��155* �6    .+�5      �  � ColumnDefinitions 5      �� 5      �� 5      .+�5      	� -   5         	�Name$ BtnPhepTinh��5      $4��.Giải toán dựa trên phép tính có sẵn��63    d� 	IsChecked$
 TrueY�6{      MaterialDesignRaisedButton#��[  6�   $��5q�6�   	� 5      -   5        $ 	BtnTuRaDe��5      $%��Tự ra đề bài rồi giải��61   $��1��6i   #��[  6y   $��5q�6�   5      � 5      $��1��6    5      �� 5       5      �� 5      $
��auto �6$   64   �� 5      $	��262 �6$   �� 5      $��37 �6$   �� 5      $��52 �6$   .+�5       #  MaterialDesignThemes.Wpf.Card  -   5          Name$ card1��5    &   $��16q�65   $��8q�6B   $��0��6M   .��5!      �� $8��2Nhập câu hỏi cho dạng phép tính có sẵn��6    $
��Wrap=�6N   $��25(�6b   6r   5"        5#      -   5        $ card2��5#   :   $y�Hidden=�6&   $��16q�6I   $��8q�6V   $��0��6a   .��5$      ��  $  MaterialDesignHeadline5TextBlock#���  6    $'��!Dạng tự ra đề rồi giải��6[   $
��Wrap=�6y   6�   5%      �� 5&      -   5         ��Name$ tblQuestion��5&   ^   $��1��6   $��20(�6'   
�������$��5,0,0,0q�6L   6^   �� 5'      -   5        $ 
tlQuestion��5'   ;   $��1��6   $y�Hidden=�6'   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$B <Em hãy tự ra một bài toán và giải bài toán đó.��6O   $��20(�6�   
�������	 �� AcceptsReturn	 . $��5,0,0,0q�6�   
 �� 
IsReadOnly
 . 6�   �� 5(      -	   5        $
��GoiY��5(      $��2��6$   $��Center=�61   $
��Bold"�6L   $��15(�6^   .��6l   	Gợi ý:6u   � 5)      $��3��6   $��2��6$    5*      �� 5+      �� 5,      $��60 �6+   68   �� 5-      $��60 �6+   68   �� 5.      $��60 �6+   68   .+�50      ��  �� CornerRadius$ 5��6   $��1q�6.   
�������$��10,0,0,0q�6Z   ._�51      �� -
   5        $
 Hint��51   "   
�������	 .  �� TextWrapping$
 Wrap=�6\   " �� VerticalScrollBarVisibility$
 Auto=�6p   $ Nhập vào gợi ý��6�   $��0��6�   $��52��6�   $	��Top=�6�   52      �� 53      -   5         ��Name$ BtnClose��53      $��2��6/    , (MaterialDesignFloatingActionAccentButton#��[ 6?    � ToolTip$ Close��6�   $��48��6�   $��48��6�   .��54      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�62   $��24��6?   $��24��6K   55      �� 56      -   5        $ btnCheckAnswer��56      $��3��65   #��[ 6E   $ Check the answer��6�   $��48��6�   $��48��6�   .��57        $ Check=�62   $��24��6?   $��24��6K   58      59      5:      5;      5<      5=      