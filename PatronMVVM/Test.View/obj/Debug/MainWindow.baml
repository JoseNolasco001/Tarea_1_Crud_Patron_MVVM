   M S B A M L   `   `   `  ����I  ETest.ViewModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG4clr-namespace:Test.ViewModel;assembly=Test.ViewModelTest.ViewModel  5   	   D @Test.View, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Test.View	Test.View 5   	      Test.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Cvm4clr-namespace:Test.ViewModel;assembly=Test.ViewModel     5   	   )localclr-namespace:Test.View     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � 
ResizeMode$ NoResize=�65    � 	Resources 5
      "   Test.ViewModel.MainViewModel   MainViewModel��%   &	          5   
   63   5      .��5      � ���#313437 � DataContext 6   ��  �� Source# [  .+�5   
   �� -   5         ��Name$
 IdLb��5      $��Id��6   $
��Left=�6+   $��	10,30,0,0q�6F   
�������$	��Top=�6l   �� 5   
   -   5         ��Name$
 IdTB��5      $
��Left=�6Y   $��	70,30,0,0q�6t   $	��Top=�6�   $	��120��6�   $��20��6�   ��6    �� *Id+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5   
   -   5        $ EdadLb��5      $
��Edad��6    $
��Left=�6/   $��	10,60,0,0q�6J   
�������$	��Top=�6p   �� 5   
   -   5        $ EdadTB��5      $
��Left=�6]   $��	70,60,0,0q�6x   $	��Top=�6�   $	��120��6�   $��20��6�   ��6"   �� *Edad+$ PropertyChanged=�6�   �� 5   
   -   5        $ NombreLb��5      $��Nombre��6"   $
��Left=�63   $��	10,90,0,0q�6N   
�������$	��Top=�6t   �� 5   
   -   5        $ NombreTB��5      $
��Left=�6a   $��	70,90,0,0q�6|   $	��Top=�6�   $	��250��6�   $��20��6�   ��6$   �� *Nombre+$ PropertyChanged=�6�   �� 5   
   -   5        $ EmailLb��5      $��Email��6!   $
��Left=�61   $��
10,120,0,0q�6L   
�������$	��Top=�6s   �� 5   
   -   5        $ EmailTB��5      $
��Left=�6_   $��
70,120,0,0q�6z   $	��Top=�6�   $	��250��6�   $��20��6�   ��6#   �� *Email+$ PropertyChanged=�6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ dataGrid��5      $	��600��6%   $	��280��61   	   AutoGenerateColumns	 .  
   CanUserAddRows
 .     
IsReadOnly . $
��Left=�6�   $��10,150,0,43q�6�    J� RenderTransformOrigin$ 0.499,0.584&�6�   ��6>   �� *	Peoples+ �� SelectedItem 6^   �� *Item+ J� InputBindings 5      d� 5       d� MouseAction$ LeftDoubleClicke�6    �� Command 6=   �� *DoubleClick+   Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5$      $
 Edad��6%   $ 50 6L    63   �� *Edad+6L     5%      $ Nombre��6%   $ * 6P    65   �� *Nombre+6P     5&      $ Email��6%   $ * 6N    64   �� *Email+6N   5(      �� 5*   
   $��Guardar��6   $
��Left=�6#   $��80��6>   $��30��6I   $��650,150,0,0q�6U   $	��Top=�6j   ��6�   �� *GuardarDatos+6�   �� 5+   
   $��Nuevo��6   $
��Left=�6!   $��80��6<   $��30��6G   $��650,200,0,0q�6S   $	��Top=�6h   ��6�   �� *NuevosDatos+�� 5,   
   $��Eliminar��6   $
��Left=�6$   $��80��6?   $��30��6J   $��650,250,0,0q�6V   $	��Top=�6k   ��6�   �� *EliminarDatos+5.      5/      