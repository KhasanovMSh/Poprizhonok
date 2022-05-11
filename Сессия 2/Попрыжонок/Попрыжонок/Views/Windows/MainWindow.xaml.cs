using System.Data.Entity;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Попрыжонок.Models;

namespace Попрыжонок
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {

            InitializeComponent();

            using (PoprizhonokEntities db = new PoprizhonokEntities())
            {
                var allTypes = db.AgentType.ToList();
                allTypes.Insert(0, new AgentType
                {
                    Name = "Все типы"
                });
                ComboFiltr.ItemsSource = allTypes;
            }



            UpdateList();



        }

        private void UpdateList()
        {
            using (PoprizhonokEntities db = new PoprizhonokEntities())
            {
                LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                    .Include(p => p.PriorityHistory)
                    .Include(p => p.ProductSale).ToList();
            }
        }

        private void ComboSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedSort=ComboSort.SelectedIndex;

            if (selectedSort == 0)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList().OrderBy(p => p.Name);
                }
            }
            if (selectedSort == 1)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList().OrderByDescending(p => p.Name);
                }
            }
            if (selectedSort == 2)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList().OrderBy(p => p.Name);
                }
            }
            if (selectedSort == 3)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).OrderByDescending(p => p.Name).ToList();
                }
            }
            if (selectedSort == 4)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList().OrderBy(p => p.Priority);
                }
            }
            if (selectedSort == 5)
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList().OrderByDescending(p => p.Priority);
                }
            }
        }

        private void ComboFiltr_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedType = ComboFiltr.SelectedItem as AgentType;

            if (selectedType.Name == "Все типы")
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList();
                }
            }
            else
            {
                using (PoprizhonokEntities db = new PoprizhonokEntities())
                {
                    LvAgents.ItemsSource = db.Agent.Include(p => p.AgentType).Where(p=>p.AgentType.Name==selectedType.Name)
                        .Include(p => p.PriorityHistory)
                        .Include(p => p.ProductSale).ToList();
                }
            }
        }

        private void TbName_TextChanged(object sender, TextChangedEventArgs e)
        {
            using (PoprizhonokEntities db = new PoprizhonokEntities())
            {
                LvAgents.ItemsSource = db.Agent.Where(p=>p.Name.ToLower().Contains(TbName.Text.ToLower())).Include(p => p.AgentType)
                    .Include(p => p.PriorityHistory)
                    .Include(p => p.ProductSale).ToList();
            }
        }
    }
}
