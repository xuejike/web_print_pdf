using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Runtime.InteropServices;
using System.ServiceProcess;
using System.Text;

namespace pdf24sdPrinter
{

 
    class Program
    {
        [DllImport("user32.dll", EntryPoint = "ShowWindow", SetLastError = true)]
        static extern bool ShowWindow(IntPtr hWnd, uint nCmdShow);
        [DllImport("user32.dll", EntryPoint = "FindWindow", SetLastError = true)]
        public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        static void Main(string[] args)
        {
            // var pdfDocument = new PdfDocument(@"C:\Users\xueji\Desktop\2019-6-24未命名文件.pdf");
            //  pdfDocument.PrintSettings.PrintController = new StandardPrintController();

            //pdfDocument.Print();
            new HttpService().start();


            if (args.Length > 0 && args[0] =="hide")
            {
                Console.Title = "24udprinter";
                IntPtr intptr = FindWindow("ConsoleWindowClass", "24udprinter");
                if (intptr != IntPtr.Zero)
                {
                    ShowWindow(intptr, 0);//隐藏这个窗口
                }
              
            }
            Console.ReadKey();
       
        }
    }
}
