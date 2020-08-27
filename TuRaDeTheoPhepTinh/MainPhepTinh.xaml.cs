using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Linq;
using System.Xml.Serialization;
using DataProvide;
using XacDinhLoiGiaiDung;

namespace TuRaDeTheoPhepTinh
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainPhepTinh : UserControl
    {
        private PhepTinh phepTinh;
        //private ListPhepTinh phepTinhs = new ListPhepTinh();
        private List<PhepTinh> phepTinhs = new List<PhepTinh>();
        //private int i = 0, j = 0;


        public MainPhepTinh()
        {
            InitializeComponent();
            phepTinh = AddList();
            //if (j == 1)
            //    Next();

        }
        private void SetData()
        {
            tblQuestion.Text = phepTinh.DeBai;
            BaiToan0.Text = phepTinh.BaiToan;
            LoiGiai0.Text = phepTinh.LoiGiai;
            if (phepTinh.Check == true)
            {
                card0.Visibility = Visibility.Visible;
                lab0.Visibility = Visibility.Visible;
                title0.Visibility = Visibility.Visible;
                BaiToan0.Visibility = Visibility.Visible;
                LoiGiai0.Visibility = Visibility.Visible;
                card.Visibility = Visibility.Hidden;
                lab.Visibility = Visibility.Hidden;
                title.Visibility = Visibility.Hidden;
                BaiToan.Visibility = Visibility.Hidden;
                LoiGiai.Visibility = Visibility.Hidden;
            }
            else
            {
                title.Visibility = Visibility.Visible;
                card.Visibility = Visibility.Visible;
                lab.Visibility = Visibility.Visible;
                BaiToan.Visibility = Visibility.Visible;
                LoiGiai.Visibility = Visibility.Visible;
                title0.Visibility = Visibility.Hidden;
                card0.Visibility = Visibility.Hidden;
                lab0.Visibility = Visibility.Hidden;
                BaiToan0.Visibility = Visibility.Hidden;
                LoiGiai0.Visibility = Visibility.Hidden;
            }
        }
        //private PhepTinh AddList()
        //{
        //    PhepTinh phepTinh = new PhepTinh();
        //    phepTinh.DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 10 + 7. Sau đó giải bài toán đó.";
        //    phepTinh.BaiToan = @"";
        //    phepTinh.LoiGiai = @"";
        //    phepTinh.Check = true;
        //    return phepTinh;
        //}
        private PhepTinh AddList()
        {
            PhepTinh phepTinh = new PhepTinh();
            phepTinh.DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 10 + 7. Sau đó giải bài toán đó.";
            phepTinh.BaiToan = @"";
            phepTinh.LoiGiai = @"";
            phepTinh.Check = true;
            return phepTinh;
        }
        //public void Next()
        //{
        //    i++;
        //    tblQuestion.Text = phepTinh.DeBai;
        //}
        //private List<PhepTinh> AddToList()
        //{
        //    List<PhepTinh> phepTinhs = new List<PhepTinh>();
        //    for (int i = 0; i < 6; i++)
        //    {
        //        PhepTinh phepTinh = new PhepTinh()
        //        {
        //            DeBai = "debai" + i.ToString(),
        //            BaiToan = @"",
        //            LoiGiai = @"",
        //            Check = true
        //        };
        //        phepTinhs.Add(phepTinh);
        //    }
        //    phepTinhs[0].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 10 + 7. Sau đó giải bài toán đó.";
        //    phepTinhs[0].BaiToan = @"";
        //    phepTinhs[0].LoiGiai = @"";
        //    phepTinhs[0].Check = true;
        //    phepTinhs[1].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 13 + 4. Sau đó giải bài toán đó.";
        //    phepTinhs[1].BaiToan = @"";
        //    phepTinhs[1].LoiGiai = @"";
        //    phepTinhs[1].Check = true;
        //    phepTinhs[2].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 11 + 5. Sau đó giải bài toán đó.";
        //    phepTinhs[2].BaiToan = @"";
        //    phepTinhs[2].LoiGiai = @"";
        //    phepTinhs[2].Check = true;
        //    phepTinhs[3].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 19 + 1. Sau đó giải bài toán đó.";
        //    phepTinhs[3].BaiToan = @"";
        //    phepTinhs[3].LoiGiai = @"";
        //    phepTinhs[3].Check = true;
        //    phepTinhs[4].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 22 + 17. Sau đó giải bài toán đó.";
        //    phepTinhs[4].BaiToan = @"";
        //    phepTinhs[4].LoiGiai = @"";
        //    phepTinhs[4].Check = true;
        //    phepTinhs[5].DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 10 + 10. Sau đó giải bài toán đó.";
        //    phepTinhs[5].BaiToan = @"";
        //    phepTinhs[5].LoiGiai = @"";
        //    phepTinhs[5].Check = true;
        //    return phepTinhs;
        //}
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            var doc = XDocument.Load(Environment.CurrentDirectory + "/Ques/Users.xml");

            var people = doc.Root
                .Descendants("BaiTap")
                .Select(node => new PhepTinh
                {
                    BaiToan = node.Element("BaiToan").Value,
                    DeBai = node.Element("DeBai").Value,
                    LoiGiai = node.Element("LoiGiai").Value,
                    Check = bool.Parse(node.Element("Check").Value)
                })
                .ToList();
            phepTinhs = people;
            SetData();

        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            EditTuRaDe editTuRaDe = new EditTuRaDe(phepTinh);
            bool? result = editTuRaDe.ShowDialog();
            if (result == true)
            {
                //phepTinh = editTuRaDe.GetPhepTinh();
                phepTinh = editTuRaDe.GetPhepTinh();
                //i += 1;
                SetData();
            }
        }


        //private void btnnext_click(object sender, routedeventargs e)
        //{
        //    j = 1;
        //    this.next();
        //}

        private void btnCheck_Click(object sender, RoutedEventArgs e)
        {
            XDocument Xdoc = new XDocument(new XElement("Users"));
            if (System.IO.File.Exists(Environment.CurrentDirectory + "/Ques/Users.xml"))
                Xdoc = XDocument.Load(Environment.CurrentDirectory + "/Ques/Users.xml");
            else
                Xdoc = new XDocument();

            XElement xml = /*new XElement("Users",*/
                            new XElement("BaiTap",
                            new XElement("DeBai", tblQuestion.Text),
                            new XElement("BaiToan", BaiToan0.Text),
                            new XElement("LoiGiai", LoiGiai0.Text),
                            new XElement("Check", phepTinh.Check)
                            );
            if (Xdoc.Descendants().Count() > 0)
                Xdoc.Descendants().First().Add(xml);
            else
            {
                Xdoc.Add(xml);
            }

            Xdoc.Save(Environment.CurrentDirectory + "/Ques/Users.xml");
        }

        //private void Window_Loaded()
        //{

        
        //}
    }
}
