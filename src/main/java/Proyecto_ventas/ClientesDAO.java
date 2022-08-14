/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Proyecto_ventas;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author javie
 */
public class ClientesDAO {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conectar = new Conexion();
    String nombres[];
    Object datos[][];

    public Object[][] listar_tabla() {
        String instruccion = "select * from clientes";

        try {
            int x = 0;
            con = conectar.Conectar();
            ps = con.prepareStatement(instruccion);
            rs = ps.executeQuery();

            while (rs.next()) {
                x++;
            }
            datos = new Object[x][5];
            x = 0;
            con = conectar.Conectar();
            ps = con.prepareStatement(instruccion);
            rs = ps.executeQuery();

            while (rs.next()) {
                datos[x][0] = rs.getInt(1);
                datos[x][1] = rs.getString(2);
                datos[x][2] = rs.getString(3);
                datos[x][3] = rs.getString(4);
                datos[x][4] = rs.getInt(5);
                x++;
            }

        } catch (Exception e) {
        }

        return datos;
    }
 
    
     public void modificar(int nit, String nombre, String direccion, String correo, int telefono) {
        String sql = "update clientes set nombre='" + nombre + "', direccion= '" + direccion + "', correo = '" + correo + "', telefono ='" + telefono + "' where nit='" + nit + "'";

        try {
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }
     
    public void pdf() throws FileNotFoundException, DocumentException {

        FileOutputStream gen = new FileOutputStream("Reporte-Clientes.pdf");
        Document documento = new Document();

        PdfWriter.getInstance(documento, gen);
        documento.open();

        Paragraph parrafo = new Paragraph("Reporte de clientes Base de datos");
        parrafo.setAlignment(1);
        documento.add(parrafo);
        documento.add(new Paragraph("\n"));

        String sql = "select * from clientes";
        try {
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                documento.add(new Paragraph("Nit: " + rs.getInt(1)));
                documento.add(new Paragraph("Nombre: " + rs.getString(2)));
                documento.add(new Paragraph("Dirección: " + rs.getString(3)));
                documento.add(new Paragraph("Correo: " + rs.getString(4)));
                documento.add(new Paragraph("Teléfono: " + rs.getInt(5)));
                documento.add(new Paragraph("\n\n"));
            }
        } catch (Exception e) {
        }

        documento.close();
        JOptionPane.showMessageDialog(null, "El archivo se creo correctamente");
        try {
            File sucursales_doc = new File("Reporte-Sucursales.pdf");
            Desktop.getDesktop().open(sucursales_doc);
        } catch (Exception e) {
        }

    }

    public String[] filtro(int nit, String nombre, String direccion,  String correo,  int telefono) {

        String sql = "select * from clientes where nombre = '" + nombre + "'" + " or nit = " + "'" + nit + "'" + " or correo = " + "'" + correo + "'" + " or telefono = " + "'" + telefono + "'" + ";";
        try {
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            int x =0;

            while (rs.next()) {
                x++;
            }
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            nombres = new String [x];
             x = 0;
            while (rs.next()) {
                nombres[x]= rs.getString(2);
                x++;
            }

        } catch (Exception e) {

        }

        return nombres;
    }
    
    public int filtro_nit(String nombre) {

        String sql = "select * from clientes where nombre = '" + nombre + "'" +" ;";
        try {
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                return rs.getInt(3);
            }

        } catch (Exception e) {

        }

        return 0;
    }
    
    
    public void crear(int nit, String nombre, String direccion, String correo, int telefono){
        String sql = "insert into clientes(nit,nombre,direccion,correo,telefono) values (?,?,?,?,?)";
        try{
            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, nit);
            ps.setString(2, nombre);
            ps.setString(3, direccion);
            ps.setString(4, correo);
            ps.setInt(5,telefono);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    String[] filtro(String nombres_uso, int nit_uso, String correo_uso, int telefono_uso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   public void eliminar(int x) {
        String sql = "delete from clientes where codigo =" + x;
        try {

            con = conectar.Conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
   

   
}
