   M S B A M L   `   `   `  ����  10.12 hw    _10._12_hw.main_window   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
Notepad hw��5   	   $	��450��5   	   $	��800��5   	   $	��300��5   	   $	��200��5   	    � 	Resources 5	         NewFileCommand �� Text  OpenFileCommand  SaveFileCommand  ExitCommand  UndoCommand  RedoCommand  
CutCommand  CopyCommand  PasteCommand��%v  &	        &	 "     &	 E     &	 h     &	 �     &	 �     &	 �     &	 �     &	 �     �� 5
   
   $ New File��61   �� 5   
   $ 	Open File��62   �� 5   
   $ 	Save File��62   �� 5   
   $
 Exit��6.   �� 5   
   $
 Undo��6.   �� 5   
   $
 Redo��6.   �� 5   
   $	 Cut��6-   �� 5   
   $
 Copy��6.   �� 5   
   $ Paste��6/   5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command# [  5      6C     5   
   -   5        # [ 5      6D     5   
   -   5        # [ 5      6D     5   
   -   5        # [ 5      6@     5   
   -   5        # [ 5      6@     5   
   -   5        # [ 5      6@     5   
   -   5        # [ 5      6?     5   
   -   5        # [ 5      6@     5    
   -	   5        # [ 5       6A    J� InputBindings 5#      �� 5$   
   
 �� Key$ N��6    �� 	Modifiers$ Controlf�6    �� Command# [  61   �� 5%   
   $ O��6   $ Controlf�6   # [ 61   �� 5&   
   $ S��6   $ Controlf�6   # [ 61   �� 5'   
   $ F4��6   $	 Altf�6   # [ 6.   �� 5)   
   $ Z��6   $ Controlf�6   # [ 61   �� 5*   
   $ Y��6   $ Controlf�6   # [ 61   �� 5+   
   $ X��6   $ Controlf�6   # [ 61   �� 5,   
   $ C��6   $ Controlf�6   # [ 61   �� 5-   
   $ V��6   $ Controlf�6   # [ 61   .��50      ]� .+�51   
   o� $	��Top=�6   .@�52      m� $
��File��6   .@�53      m� $��Create a new file��6   	 m� InputGestureText$	 Ctrl+N��66   
 m� Command#
 [  6P   m� 54      $
��Open��6   $	 Ctrl+O��6)   #
 [ 6C   m� 55      $��	Save file��6   $	 Ctrl+S��6.   #
 [ 6H   �� 56      m� 57      $
��Exit��6   $	 Alt+F4��6)   #
 [ 6C   58      m� 59      $��Changes��6   .@�5:      m� $��Cancel��6   $	 Ctrl+Z��6+   #
 [ 6E   m� 5;      $��Revert��6   $	 Ctrl+Y��6+   #
 [ 6E   �� 5<      m� 5=      $	��Cut��6   $	 Ctrl+X��6(   #
 [ 6B   m� 5>      $
��Copy��6   $	 Ctrl+C��6)   #
 [ 6C   m� 5?      $��Paste��6   $	 Ctrl+V��6*   #
 [ 6D   5@      m� 5A      $
��View��6   .@�5B      m� $
��Zoom��6   .@�5C      m� -
   5        $��Maximize��5C      $	 Ctrl++��61   6K   m� 5D      -   5        $��Minimize��5D      $	 Ctrl+-��61   6K   m� 5E      -   5        $��Reset��5E      $	 Ctrl+0��6.   6H   5F      m� 5G      $��Word transposition��6   .@�5H      m� -   5        $��Turn on��5H      $	 Ctrl+W��60    m� IsCheckable$
 True��6J    m� 	IsChecked$
 True��6]   6n   5I      5J      5K      �� 5M   
   -   5        $��main_textbox��5M      
������� �� 
AcceptsTab$
 True��5O       �� TextWrapping$
 Wrap=�5P      " �� VerticalScrollBarVisibility$
 Auto=�5Q      $��14(�5R      $��Consolas)�5S      $��Stretch=�5T      $��Stretch=�5U      5V      5W      