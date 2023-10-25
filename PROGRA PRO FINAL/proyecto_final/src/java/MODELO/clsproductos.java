
package MODELO;
// librerias
import java.sql.ResultSet;
import java.util.HashMap;


public class clsproductos {
    private int id_producto,id_marca,existencia;
    private String producto, decripcion,imagen,fecha_creacion;
    private double Qcosto,Qventa;
    private clsConexion cn;
    //constructor

    public clsproductos(int id_producto, int id_marca, int existencia, String producto, String decripcion, String imagen, String fecha_creacion, double Qcosto, double Qventa) {
        this.id_producto = id_producto;
        this.id_marca = id_marca;
        this.existencia = existencia;
        this.producto = producto;
        this.decripcion = decripcion;
        this.imagen = imagen;
        this.fecha_creacion = fecha_creacion;
        this.Qcosto = Qcosto;
        this.Qventa = Qventa;
    }
    // constructor vacio
    public clsproductos(){}
    
    
    
//get and set
    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getDecripcion() {
        return decripcion;
    }

    public void setDecripcion(String decripcion) {
        this.decripcion = decripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public double getQcosto() {
        return Qcosto;
    }

    public void setQcosto(double Qcosto) {
        this.Qcosto = Qcosto;
    }

    public double getQventa() {
        return Qventa;
    }

    public void setQventa(double Qventa) {
        this.Qventa = Qventa;
    }
    public HashMap tipomarca(){
    HashMap<String,String> drop = new HashMap();
    try{
        cn = new clsConexion();
        String query="SELECT idmarcas as id, marca FROM marcas;";
        
        cn.abrir();
        ResultSet consulta = cn.cnn.createStatement().executeQuery(query);
        while(consulta.next()){
        drop.put(consulta.getString("id"),consulta.getString("marca"));
        
        }
        
        cn.cerrar();
    }catch(Exception ex){
    System.out.println("error"+ex);
    }
    return drop;
    }
    
    public void agregar(){}
    public void modificar(){}
    public void elininar(){}
    public void mostrar(){}
    
    
}
