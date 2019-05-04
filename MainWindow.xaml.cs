using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FileListDownloader
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FilepathBox.Text = "";
            UrlPrefixBox.Text = "";
        }

        private void SelectFilepathButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog
            {
                DefaultExt = ".txt",
                Filter = "Text Files (*.txt)|*.txt"
            };

            Nullable<bool> result = dlg.ShowDialog();
            if (result == true)
            {
                FilepathBox.Text = dlg.FileName;
            }

        }

        private void DownloadFilesButton_Click(object sender, RoutedEventArgs e)
        {
            if (FilepathBox.Text.Length == 0)
            {
                MessageBox.Show("Please input a file path");
                return;
            }
            if (UrlPrefixBox.Text.Length == 0)
            {
                MessageBox.Show("Please input a url prefix");
                return;
            }

            if (!new Regex(@"\.txt$").IsMatch(FilepathBox.Text))
            {
                MessageBox.Show("Please select a *.txt file");
                return;
            }

            int counter = 0;
            string line;
            StreamReader file = new StreamReader(@FilepathBox.Text);
            var client = new WebClient();
            while ((line = file.ReadLine()) != null)
            {
                try
                {
                    client.DownloadFile(UrlPrefixBox.Text + line, line);
                } catch
                {
                    MessageBox.Show("File NOT downloaded: " + line);
                }
                counter++;
            }
            file.Close();
            MessageBox.Show("Files downloaded!");


        }

        private void HelpButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Select a list .txt file which has multiple lines of file names such as flag1.png, flag2.png, etc on their own lines. Add a url prefix such as https://www.targetserver.com/img/ to be prefixed in front of the file names to be downloaded. Then click download files. The files will show up (as if by magic) in the same folder as this executeable.");
        }
    }
}
