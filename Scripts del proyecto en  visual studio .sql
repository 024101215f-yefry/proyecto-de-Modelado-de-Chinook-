using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proyecto_en_grupo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Customer
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from C in chinook.Customer
                             select new
                             {
                                 C.CustomerId,
                                 C.FirstName,
                                 C.Address
                             };

                dgvConsult.DataSource = consul.ToList();
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from C in chinook.Customer
                             select new
                             {
                                 C.CustomerId,
                                 C.FirstName,
                                 C.LastName,
                                 C.Address,
                                 C.City,
                                 C.Country,
                                 C.Email
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from C in chinook.Customer
                             select new
                             {
                                 C.CustomerId,
                                 C.FirstName,
                                 C.LastName,
                                 C.Company,
                                 C.Address,
                                 C.City,
                                 C.State,
                                 C.Country,
                                 C.Phone,
                                 C.Email
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            // Artist (Artistas)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from A in chinook.Artist
                             select new
                             {
                                 A.ArtistId,
                                 A.Name
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {

            // Album (Álbumes)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from Al in chinook.Album
                             select new
                             {
                                 Al.AlbumId,
                                 Al.Title,
                                 Al.ArtistId
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            // Track (Canciones / Pistas)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from T in chinook.Track
                             select new
                             {
                                 T.TrackId,
                                 T.Name,
                                 T.AlbumId,
                                 T.MediaTypeId,
                                 T.GenreId,
                                 T.Composer,
                                 T.Milliseconds,
                                 T.Bytes,
                                 T.UnitPrice
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            // Employee (Empleados)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from E in chinook.Employee
                             select new
                             {
                                 E.EmployeeId,
                                 E.LastName,
                                 E.FirstName,
                                 E.Title,
                                 E.ReportsTo,
                                 E.BirthDate,
                                 E.HireDate,
                                 E.Address,
                                 E.City,
                                 E.State,
                                 E.Country,
                                 E.PostalCode,
                                 E.Phone,
                                 E.Fax,
                                 E.Email
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            // Invoice (Facturas)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from I in chinook.Invoice
                             select new
                             {
                                 I.InvoiceId,
                                 I.CustomerId,
                                 I.InvoiceDate,
                                 I.BillingAddress,
                                 I.BillingCity,
                                 I.BillingState,
                                 I.BillingCountry,
                                 I.BillingPostalCode,
                                 I.Total
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {
            // Genre (Géneros Musicales)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from G in chinook.Genre
                             select new
                             {
                                 G.GenreId,
                                 G.Name
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }

        private void button10_Click(object sender, EventArgs e)
        {
            // MediaType (Tipos de Archivo)
            using (ChinookEntities chinook = new ChinookEntities())
            {
                var consul = from M in chinook.MediaType
                             select new
                             {
                                 M.MediaTypeId,
                                 M.Name
                             };

                dgvConsult.DataSource = consul.ToList();
            }
        }
    }
    }
