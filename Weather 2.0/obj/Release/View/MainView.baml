   M S B A M L   `   `   `  ���� d  `DotNetProjects.Input.Toolkit, Version=5.0.43.0, Culture=neutral, PublicKeyToken=79778c5f2eed289bgKclr-namespace:System.Windows.Controls;assembly=DotNetProjects.Input.ToolkitSystem.Windows.Controls   Weather 2.0   Weather_2._0.MainView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  ZcontrolsKclr-namespace:System.Windows.Controls;assembly=DotNetProjects.Input.Toolkit  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  .  � Title$ Pogoda��$��688.8��$��655.8��$��Center=�$��Center=� � WindowStartupLocation$ CenterScreen=�$��14(�$��Segoe UI Light)�$��Center=�$��Bottom=�$��5q� � Icon$% /Weather 2.0;component/icon.ico�� � 
ResizeMode$ NoResize=�����  �� ImageSource$3 -/Weather 2.0;component/Content/background.jpg��.��� .+��� .+��� $��Szukaj��
���   �$��18(�$��Segoe UI)�$��10,0,0,0q�$��Bottom=�$��40��$��5,5,1,5q�$��64��$
��Left=�$��Bottom=�|�. $
��Bold"��� .+��� -    ��Name$ 	SearchBtn��$��575,10,10.6,564.4q�$��0q�$��5,1,5,1q� J� RenderTransformOrigin$ 0.555,0.315&����� *SearchBtnCommand+.���� $��/Content/search.png��$ 2.894,0.533&�$��36������  �� 
TargetType" ��.��� 	 �� Property	 � ��
 �� Value

 ���� �� 	 � ��
 ��  �� 
TargetType" ��.R��� #��z��
���   �$��0q�._��� $��Center=�$��Center=��� .+�-   'System.Windows.Controls.AutoCompleteBox  -     Name$ AutoCompleteBox��   SelectedItem$  ��   IsTextCompletionEnabled .    
FilterMode$ Contains=�|�. $��74,5,80.6,5q�$��18(�$��35��$��Bottom=�$��Center=�$	��495��$��Center=�$��Bottom=�   ItemsSource �� *CityCollection+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�   Text �� *Search+$ TwoWay=�$ PropertyChanged=� J� InputBindings �� 
 �� Key$ Enter�� �� Command �� *KeyUpEventCommandEnter+$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ KeyUp��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *KeyUpEventCommand+$ PropertyChanged=��� .+��� $��
325,70,0,0q�$
��Left=�$	��Top=�$	��102��$	��221��$ 0.5,0.5&����� *ImageSource+$ PropertyChanged=�z�V� .~���  �� ScaleY$ -1Q� �� ScaleX$ -1Q��� ��  �� Angle$ 180.543Q�T� �� .+��� -    ��Name$ TempLbl��$
��Left=�$��	20,96,0,0q�$	��Top=�
���   �$��18(�$ 1.509,0.071&�$��Segoe UI)����� *Temperature+$ TwoWay=�$ PropertyChanged=��� .+��� -   $ CityLbl��$
��Left=�$��	20,62,0,0q�$	��Top=�
���   �$��18(�$��	ExtraBold"�$ 0.509,0.071&�$��Segoe UI)����� *City+$ PropertyChanged=��� .+��� -   $ 
PresureLbl��$
��Left=�$��
20,130,0,0q�$	��Top=�
���   �$��18(�$ 0.509,0.071&�$��Segoe UI)����� *	Presure+$ PropertyChanged=��� .+��� -   $ WindLbl��$
��Left=�$��
19,163,0,0q�$	��Top=�
���   �$��18(�$ 0.509,0.071&�$��Segoe UI)����� *Wind+$ PropertyChanged=��� .+��� -   $ HumidityLbl��$
��Left=�$��
19,197,0,0q�$	��Top=�
���   �$��18(�$ 0.509,0.071&�$��Segoe UI)����� *
Humidity+$ PropertyChanged=��� .+��� $��Created By Ops��$��252,621,235.6,0.2q�$��Center=�$	��Top=�$��20(�$��38��$	��162��$
��Bold"�$ 
0.49,1.123&�$��Italic$�$��Segoe UI)�$��Center=����	#00000000���	#FFC426C5�� .+��� -    ��Name$ ItemList��$��Center=�
�������$��0,240.6,0,60.6q�
������ $��18(�$��0q�$��-1q�$��649.6�����	#FF2F2323$��Center=�$��367.2����.    � UseLayoutRounding  .  &   System.Windows.Media.TextOptions!   TextHintingMode$! Animated=�$��Segoe UI)�$��Stretch=�$��Stretch=����� *ForecastColletion+$ TwoWay=�$ PropertyChanged=����� " ��.��� 	 � ��$
 Center=��� 	 � ��

 �   ��� 	 � ��$
 	ExtraBold"��� 	 � ��$
 Stretch=��� 	 � ��$
 Center=��� 	 � ��$
 Center=�" �� Triggers" P� # P� Property# �@��
IsSelected$ P� Value$ . . ��� 	 � ��

 �   ��� 	 � ��

 � ���P� # �@J�IsMouseOver$ . . ��� 	 � ��

 ������� 	 � ��

 �   �% �� View% �� !& �� ColumnHeaderContainerStyle& �� " ��.��� 	 � ��

 �   ��� 	 � ��$
 	ExtraBold"��� 	 � y�
 �� *Sight+$ PropertyChanged=��� 	 � ��
 �� " ��.R��� #��z��' �� Padding$' 5q�#��z��( �� TextAlignment$( Center=�.P��� $��Dzień tygodnia��) �� Width$
) Auto��* �� DisplayMemberBinding* �� *Day+�� $
��Temp��$
) Auto��* �� *Temperature+�� $��Prognoza��$
) Auto��* �� *WeatherType+