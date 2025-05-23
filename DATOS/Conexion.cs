﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATOS
{
    public class Conexion
    {
        private string ruta = "Data Source=localhost;Initial Catalog=TP_FINAL;User ID=sa;Password=elu1234;TrustServerCertificate=True;";

        public SqlConnection obtenerConexion()
        {
            SqlConnection conexion = new SqlConnection(ruta);
            try
            {
                conexion.Open();
                return conexion;

            }
            catch
            {
                return null;
            }
        }

        public int execute(string consulta) // ES PARA LOS INSERT Y LOS DELETE
        {
            SqlConnection conexion = obtenerConexion();

            try
            {
                SqlCommand comando = new SqlCommand(consulta, conexion);
                int filasAfectadas = comando.ExecuteNonQuery();

                return filasAfectadas;

            }
            catch (Exception ex)
            {

            }

            return 0;

        }

        public DataSet getData(string consulta) // Es para los select
        {

            DataSet ds = new DataSet();
            SqlConnection conexion = obtenerConexion();

            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
                adapter.Fill(ds); // Llenamos el DataSet con los datos de la consulta
                return ds;
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
            finally
            {
                conexion.Close();
            }

            return ds;
        }


        public Boolean existe(string consulta)
        {
            Boolean estado = false;
            SqlConnection conexion = obtenerConexion();
            SqlCommand comando = new SqlCommand(consulta, conexion);
            SqlDataReader datos = comando.ExecuteReader();
            if (datos.Read())//si encuentra un registros para leer
            {
                estado = true;
            }

            return estado;

        }



 

    }
}
