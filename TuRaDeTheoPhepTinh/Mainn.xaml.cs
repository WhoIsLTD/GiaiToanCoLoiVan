using DataProvide;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using XacDinhLoiGiaiDung;

namespace TuRaDeTheoPhepTinh
{
    /// <summary>
    /// Interaction logic for Mainn.xaml
    /// </summary>
    public partial class Mainn : Window
    {
        //PhepTinh phepTinh;
        public Mainn()
        {
            InitializeComponent();
        }

        private void TuRaDe_Click(object sender, RoutedEventArgs e)
        {
            sp4.Children.Clear();
            MainPhepTinh mainPhepTinh = new MainPhepTinh();
            sp4.Children.Add(mainPhepTinh);

        }

        private void ChonDapAn_Click(object sender, RoutedEventArgs e)
        {
            sp4.Children.Clear();
            MainWindow mainWindow = new MainWindow();
            sp4.Children.Add(mainWindow);
        }

    }
}