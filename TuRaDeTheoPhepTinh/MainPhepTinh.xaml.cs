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
using Microsoft.Win32;
using XacDinhLoiGiaiDung;

namespace TuRaDeTheoPhepTinh
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainPhepTinh : UserControl
    {

        private PhepTinh phepTinh = new PhepTinh();
        private TuRaDe tuRa = new TuRaDe();

        //private int i = 0, j = 0;


        public MainPhepTinh()
        {
            InitializeComponent();
            phepTinh = AddToList();
            BitmapImage bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = new Uri(Environment.CurrentDirectory + "/Icon/short_hair_girl_question_mark_50px.png");
            bitmap.EndInit();
            img.Source = bitmap;
            img1.Source = bitmap;
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
                tblQuestion.Text = phepTinh.DeBai;
                BaiToan0.Text = phepTinh.BaiToan;
                LoiGiai0.Text = phepTinh.LoiGiai;
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
                BaiToan.Text = tuRa.DeBai;
                LoiGiai.Text = tuRa.LoiGiai;
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
        //public void Next()
        //{
        //    i++;
        //    tblQuestion.Text = phepTinh.DeBai;
        //}
        private PhepTinh AddToList()
        {
            PhepTinh phepTinh = new PhepTinh()
            {
                DeBai = "Em hãy tự tạo ra một bài toán có phép tính sau: 10 + 7. Sau đó giải bài toán đó.",
                BaiToan = @"",
                LoiGiai = @"",
                Check = true
            };
            return phepTinh;
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SetData();
        }
        //private List<PhepTinh> GetXML()
        //{
        //    var doc = XDocument.Load(Environment.CurrentDirectory + "/Ques/Users.xml");

        //    var people = doc.Root
        //        .Descendants("BaiTap")
        //        .Select(node => new PhepTinh
        //        {
        //            BaiToan = node.Element("BaiToan").Value,
        //            DeBai = node.Element("DeBai").Value,
        //            LoiGiai = node.Element("LoiGiai").Value,
        //            Check = bool.Parse(node.Element("Check").Value)
        //        })
        //        .ToList();
        //    return people;
        //}

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

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            XDocument Xdoc = new XDocument();
            if (phepTinh.Check == true)
            {

                saveFileDialog.Filter = "XML Files (*.pt)|*.pt";
                bool? result = saveFileDialog.ShowDialog();
                if (result == true)
                {
                    //if (System.IO.File.Exists(Environment.CurrentDirectory + "/Ques/Users.xml"))
                    //    Xdoc = XDocument.Load(Environment.CurrentDirectory + "/Ques/Users.xml");
                    //else
                    //    Xdoc = new XDocument();
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
                        Xdoc.Add(xml);
                    Xdoc.Save(saveFileDialog.FileName);
                }
            }
            else
            {
                saveFileDialog.Filter = "XML Files (*.rd)|*.rd";
                bool? result = saveFileDialog.ShowDialog();
                if (result == true)
                {
                    XElement xml = new XElement("BaiTap",
                                   new XElement("DeBai", BaiToan.Text),
                                   new XElement("LoiGiai", LoiGiai.Text)
                                   );
                    if (Xdoc.Descendants().Count() > 0)
                        Xdoc.Descendants().First().Add(xml);
                    else
                        Xdoc.Add(xml);
                    Xdoc.Save(saveFileDialog.FileName);
                }
            }
        }

        private void btnOpen_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "XML Files (*.pt)|*.pt|XML Files (*.rd)|*.rd";
            bool? result = openFileDialog.ShowDialog();
            if (result == true)
            {
                var doc = XDocument.Load(openFileDialog.FileName);
                FileInfo file = new FileInfo(openFileDialog.FileName);
                string ext = file.Extension;

                if (ext == ".pt")
                {
                    var people = doc.Descendants("BaiTap").Select(node => new PhepTinh
                    {
                        BaiToan = node.Element("BaiToan").Value,
                        DeBai = node.Element("DeBai").Value,
                        LoiGiai = node.Element("LoiGiai").Value,
                        Check = bool.Parse(node.Element("Check").Value)
                    })
                    .ToList();
                    phepTinh.BaiToan = people[0].BaiToan;
                    phepTinh.DeBai = people[0].DeBai;
                    phepTinh.LoiGiai = people[0].LoiGiai;
                    phepTinh.Check = people[0].Check;
                }
                else
                {
                    phepTinh.Check = false;
                    var people = doc.Descendants("BaiTap").Select(node => new TuRaDe
                    {
                        DeBai = node.Element("DeBai").Value,
                        LoiGiai = node.Element("LoiGiai").Value
                    })
                    .ToList();
                    tuRa.DeBai = people[0].DeBai;
                    tuRa.LoiGiai = people[0].LoiGiai;
                }
                this.Window_Loaded(sender, e);
            }

        }

    }
}
