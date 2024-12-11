using System;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;
using System.IO;

namespace _10._12_hw
{
    public partial class main_window : Window
    {
        private string current_file_path = string.Empty;
        private double current_zoom = 100.0;
        private bool word_wrap_enabled = true;

        public main_window()
        {
            InitializeComponent();
        }

        private void new_file_click(object sender, RoutedEventArgs e)
        {
            if (ConfirmSave())
            {
                main_textbox.Text = string.Empty;
                current_file_path = string.Empty;
                this.Title = "Notepad - New File";
            }
        }

        private void open_file_click(object sender, RoutedEventArgs e)
        {
            if (ConfirmSave())
            {
                OpenFileDialog open_file_dialog = new OpenFileDialog();
                open_file_dialog.Filter = "Text files | All files";
                if (open_file_dialog.ShowDialog() == true)
                {
                    current_file_path = open_file_dialog.FileName;
                    main_textbox.Text = File.ReadAllText(current_file_path);
                    this.Title = $"Notepad - {Path.GetFileName(current_file_path)}";
                }
            }
        }

        private void save_file_click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(current_file_path))
            {
                SaveFileDialog save_file_dialog = new SaveFileDialog();
                save_file_dialog.Filter = "Text files | All files";
                if (save_file_dialog.ShowDialog() == true)
                {
                    current_file_path = save_file_dialog.FileName;
                }
                else
                {
                    return;
                }
            }

            try
            {
                File.WriteAllText(current_file_path, main_textbox.Text);
                this.Title = $"Notepad - {Path.GetFileName(current_file_path)}";
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error with saving: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void exit_click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void undo_click(object sender, RoutedEventArgs e)
        {
            if (main_textbox.CanUndo)
            {
                main_textbox.Undo();
            }
        }

        private void redo_click(object sender, RoutedEventArgs e)
        {
            if (main_textbox.CanRedo)
            {
                main_textbox.Redo();
            }
        }

        private void cut_click(object sender, RoutedEventArgs e)
        {
            main_textbox.Cut();
        }

        private void copy_click(object sender, RoutedEventArgs e)
        {
            main_textbox.Copy();
        }

        private void paste_click(object sender, RoutedEventArgs e)
        {
            main_textbox.Paste();
        }
        
        private void zoom_in_click(object sender, RoutedEventArgs e)
        {
            current_zoom += 10;
            ApplyZoom();
        }
        
        private void zoom_out_click(object sender, RoutedEventArgs e)
        {
            if (current_zoom > 10)
            {
                current_zoom -= 10;
                ApplyZoom();
            }
        }
        
        private void zoom_reset_click(object sender, RoutedEventArgs e)
        {
            current_zoom = 100.0;
            ApplyZoom();
        }

        private void ApplyZoom()
        {
            main_textbox.FontSize = 14 * (current_zoom / 100.0);
            if (string.IsNullOrEmpty(current_file_path))
            {
                this.Title = $"Notepad - New file - Zoom : {current_zoom}%";
            }
            else
            {
                this.Title = $"Notepad- {Path.GetFileName(current_file_path)} - Zoom: {current_zoom}%";
            }
        }
        
        private void toggle_word_wrap_click(object sender, RoutedEventArgs e)
        {
            MenuItem menu_item = sender as MenuItem;
            if (menu_item != null)
            {
                word_wrap_enabled = menu_item.IsChecked;
                main_textbox.TextWrapping = word_wrap_enabled ? TextWrapping.Wrap : TextWrapping.NoWrap;
            }
        }
        
        private bool ConfirmSave()
        {
            if (!string.IsNullOrEmpty(main_textbox.Text))
            {
                MessageBoxResult result = MessageBox.Show("Save changes?", "Notepad", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    save_file_click(null, null);
                    return true;
                }
                else if (result == MessageBoxResult.No)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return true;
        }
        
        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            if (!ConfirmSave())
            {
                e.Cancel = true;
            }
            base.OnClosing(e);
        }
    }
}
