   M S B A M L   `   `   `  ���� M  IFileListDownloader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:FileListDownloaderFileListDownloader  #    FileListDownloader.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:FileListDownloader       � Title$&   File Downloader by Sander Buruma��$��98��$��737.6��$��Liberation Mono)�.��� .+��� -    ��Name$ FilepathBox��$
��Left=�$��14��$��	100,8,0,0q� �� TextWrapping$
 Wrap=�$��FilepathBox��$	��Top=�$	��480�� �� MaxLines$ 1�� �� 	MaxLength$	 144���� -    ��Name$ SelectFilepathButton��$��Select List File��$
��Left=�$��	585,7,0,0q�$	��Top=�$	��140��$��14������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White��	 � Offset$	 0Q�� $ 	#FFD0D0D0��$	 1Q��� -   $ UrlPrefixBox��$
��Left=�$��14��$��
100,27,0,0q�$
 Wrap=�$��UrlPrefixBox��$	��Top=�$	��480��$ 1��$	 144���� -   $ DownloadFilesButton��$��Download Files��$
��Left=�$��
281,46,0,0q�$	��Top=�$	��120��$��14������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#FFCBCBCB��$	 1Q��� -   $ 
HelpButton��$��?��$
��Left=�$��
258,46,0,0q�$	��Top=�$��18��$��14��
 J� RenderTransformOrigin$
 1.233,0.189&�
���   ����� $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#FFDADADA��$	 1Q��� $��Prefix:��$
��Left=�$��	45,28,0,0q�$	��Top=�$��14��$��0q��� $��
List File:��$
��Left=�$��28,9,0,0q�$	��Top=�$��14��$��0q�