   M S B A M L   `   `   `  ����d  `DotNetProjects.Input.Toolkit, Version=5.0.43.0, Culture=neutral, PublicKeyToken=79778c5f2eed289bgKclr-namespace:System.Windows.Controls;assembly=DotNetProjects.Input.ToolkitSystem.Windows.Controls  5   	    Weather 2.0   Weather_2._0.MainView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5   	   ZcontrolsKclr-namespace:System.Windows.Controls;assembly=DotNetProjects.Input.Toolkit  5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  .  � Title$ Pogoda��5   	   $��688.8��6   $��655.8��6'   $��Center=�65   $��Center=�6R    � WindowStartupLocation$ CenterScreen=�6m   $��14(�6�   $��Segoe UI Light)�6�   $��Center=�6�   $��Bottom=�6�   $��5q�6   � Icon$% /Weather 2.0;component/icon.ico��6   � 
ResizeMode$ NoResize=�65  ��5      �� 5   
    �� ImageSource$3 -/Weather 2.0;component/Content/background.jpg��6   .��5      � .+�5   
   �� .+�5      �� $��Szukaj��6   
���   �$��18(�68   $��Segoe UI)�6F   $��10,0,0,0q�6]   $��Bottom=�6o   $��40��6�   $��5,5,1,5q�6�   $��64��6�   $
��Left=�6�   $��Bottom=�6�   |�. $
��Bold"�6  5      �� 5   
   .+�5      �� -   5         ��Name$ 	SearchBtn��5      $��575,10,10.6,564.4q�6M   $��0q�6h   $��5,1,5,1q�6|    J� RenderTransformOrigin$ 0.555,0.315&�6�   ��6(   �� *SearchBtnCommand+.��5      �� $��/Content/search.png��6   $ 2.894,0.533&�65   $��36��6Y   6f   ��5      �� 5       �� 
TargetType" ��6   .�5      �� 	 �� Property	 � ��
 �� Value

 ���� 67   �� 5      	 � ��
 5      �� 5   "    �� 
TargetType" ��62   .R�5   &   �� #��z��6-   
���   �$��0q�6k   ._�5   *   �� $��Center=�6;   $��Center=�6X   5   '   5   #   5!      5"      5$      5%      �� 5&   
   .+�5'      -   'System.Windows.Controls.AutoCompleteBox  -   5          Name$ AutoCompleteBox��5(         SelectedItem$  ��5*         IsTextCompletionEnabled .    
FilterMode$ Contains=�5-      |�. $��74,5,80.6,5q�5/      $��18(�6&   $��35��50      $��Bottom=�51      $��Center=�6,   $	��495��6I   $��Center=�6U   $��Bottom=�6y      ItemsSource 5)      �� *CityCollection+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�   Text 5+      �� *Search+$ TwoWay=�$ PropertyChanged=� J� InputBindings 52      �� 53      
 �� Key$ Enter��6q    �� Command 6!   �� *KeyUpEventCommandEnter+$ PropertyChanged=�6q   .  (System.Windows.Interactivity.Interaction   Triggers 55      /  )System.Windows.Interactivity.EventTrigger  56         	EventName$ KeyUp��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 57      6  0System.Windows.Interactivity.InvokeCommandAction     Command 60   �� *KeyUpEventCommand+$ PropertyChanged=�58      5:      5;      �� 5<   
   .+�5=      �� $��
325,70,0,0q�6X   $
��Left=�6l   $	��Top=�6�   $	��102��6�   $	��221��6�   $ 0.5,0.5&�6�   ��6   �� *ImageSource+$ PropertyChanged=�z�5>      V� 5?      .~�5@      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ -1Q�65   �� 5A      �� 5B       �� Angle$ 180.543Q�6*   T� 5C      5D      5F      5G      �� 5H   
   .+�5I      �� -   5         ��Name$ TempLbl��5I      $
��Left=�6w   $��	20,96,0,0q�6�   $	��Top=�6�   
���   �$��18(�6�   $ 1.509,0.071&�6�   $��Segoe UI)�6  ��6%   �� *Temperature+$ TwoWay=�$ PropertyChanged=�6  5J      �� 5K   
   .+�5L      �� -   5        $ CityLbl��5L      $
��Left=�6c   $��	20,62,0,0q�6~   $	��Top=�6�   
���   �$��18(�6�   $��	ExtraBold"�6�   $ 0.509,0.071&�6�   $��Segoe UI)�6  ��6%   �� *City+$ PropertyChanged=�6  5M      �� 5N   
   .+�5O      �� -   5        $ 
PresureLbl��5O      $
��Left=�6i   $��
20,130,0,0q�6�   $	��Top=�6�   
���   �$��18(�6�   $ 0.509,0.071&�6�   $��Segoe UI)�6�   ��6(   �� *	Presure+$ PropertyChanged=�6�   5P      �� 5Q   
   .+�5R      �� -   5        $ WindLbl��5R      $
��Left=�6c   $��
19,163,0,0q�6~   $	��Top=�6�   
���   �$��18(�6�   $ 0.509,0.071&�6�   $��Segoe UI)�6�   ��6%   �� *Wind+$ PropertyChanged=�6�   5S      �� 5T   
   .+�5U      �� -   5        $ HumidityLbl��5U      $
��Left=�6k   $��
19,197,0,0q�6�   $	��Top=�6�   
���   �$��18(�6�   $ 0.509,0.071&�6�   $��Segoe UI)�6�   ��6)   �� *
Humidity+$ PropertyChanged=�6�   5V      �� 5W   
   .+�5X      �� $��Created By Ops��6   $��252,621,235.6,0.2q�6-   $��Center=�6H   $	��Top=�6e   $��20(�6}   $��38��6�   $	��162��6�   $
��Bold"�6�   $ 
0.49,1.123&�6�   $��Italic$�6�   $��Segoe UI)�6�   $��Center=�6  ���	#00000000���	#FFC426C56<  5Y      �� 5Z   
   .+�5[      �� -   5         ��Name$ ItemList��5[      $��Center=�6�   
�������$��0,240.6,0,60.6q�6�   
������ $��18(�6�   $��0q�6�   $��-1q�6  $��649.6��6  ���	#FF2F2323$��Center=�6>  $��367.2��6Y  ��.    � UseLayoutRounding  .  &   System.Windows.Media.TextOptions!   TextHintingMode$! Animated=�6�  $��Segoe UI)�6�  $��Stretch=�6�  $��Stretch=�6  ��6*   �� *ForecastColletion+$ TwoWay=�$ PropertyChanged=���5\      �� 5]      " ��6   .�5^      �� 	 � ��$
 Center=�6G   �� 5_      	 � ��

 �   �67   �� 5`      	 � ��$
 	ExtraBold"�67   �� 5a      	 � ��$
 Stretch=�6@   6R   �� 5b      	 � ��$
 Center=�6>   6O   �� 5c      	 � ��$
 Center=�6E   6V   " �� Triggers" 5d      P� 5e      # P� Property# �@��
IsSelected$ P� Value$ . . �5f   "   �� 	 � ��

 �   �6?   �� 5g   "   	 � ��

 � ���6?   5h      P� 5i      # �@J�IsMouseOver$ . . �5j   "   �� 	 � ��

 �����6?   �� 5k   "   	 � ��

 �   �6?   5l      5n      % �� View% 5p      �� 5q      !& �� ColumnHeaderContainerStyle& 5r      �� 5s      " ��6$   .�5t   "   �� 	 � ��

 �   �6?   �� 5u   "   	 � ��$
 	ExtraBold"�6?   �� 5v   "   	 � y�
 6?   �� *Sight+$ PropertyChanged=�6~   �� 5w   "   	 � ��
 5x   &   �� 5y   *   " ��6:   .R�5z   .   �� #��z��6:   ' �� Padding$' 5q�6\   #��z��6h   ( �� TextAlignment$( Center=�6�   5{   +   5}   #   5~      .P�5�      �� $��Dzień tygodnia��6*   ) �� Width$
) Auto��6C   * �� DisplayMemberBinding* 6P   �� *Day+5�      �� 5�      $
��Temp��6*   $
) Auto��68   * 6E   �� *Temperature+6t   �� 5�      $��Prognoza��6*   $
) Auto��6<   * 6I   �� *WeatherType+6x   5�      5�      5�      5�      5�      