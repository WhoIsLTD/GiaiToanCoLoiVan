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
using DataProvide;

namespace TuRaDeTheoPhepTinh
{
    /// <summary>
    /// Interaction logic for EditTuRaDe.xaml
    /// </summary>
    public partial class EditTuRaDe : Window
    {
        public bool buttonclick = false;
        private PhepTinh phepTinh;
        private List<PhepTinh> phepTinhs = new List<PhepTinh>();
        //int i = 0;
        public EditTuRaDe(PhepTinh phep)
        {
            InitializeComponent();
            phepTinh = phep;
            //if (i != 0)
            //    Next();
        }
        private void setData()
        {
            phepTinh.DeBai = tblQuestion.Text;
            //phepTinh.BaiToan = BaiToan.Text;
            //phepTinh.LoiGiai = LoiGiai.Text;
        }
        private void LoadData()
        {
            tblQuestion.Text = phepTinh.DeBai;
            //BaiToan.Text = phepTinh.BaiToan;
            //LoiGiai.Text = phepTinh.LoiGiai;
        }

        public PhepTinh GetPhepTinh()
        {
            return phepTinh;
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadData();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void btnCheckAnswer_Click(object sender, RoutedEventArgs e)
        {

            if (But1.IsChecked == true)
                phepTinh.Check = true;
            else
                phepTinh.Check = false;
            setData();
            this.DialogResult = true;
        }

        private void But2_Click(object sender, RoutedEventArgs e)
        {
            if (But2.IsChecked == true)
            {
                card2.Visibility = Visibility.Visible;
                tlQuestion.Visibility = Visibility.Visible;
                card1.Visibility = Visibility.Hidden;
                tblQuestion.Visibility = Visibility.Hidden;
            }
        }

        private void But1_Click(object sender, RoutedEventArgs e)
        {
            if (But1.IsChecked == true)
            {
                card1.Visibility = Visibility.Visible;
                tblQuestion.Visibility = Visibility.Visible;
                card2.Visibility = Visibility.Hidden;
                tlQuestion.Visibility = Visibility.Hidden;
            }
        }

        //private void Next()
        //{
        //    i++;
        //    LoadData();
        //}

        //private void btnNext_Click(object sender, RoutedEventArgs e)
        //{
        //    this.Next();
        //}
    }
}
