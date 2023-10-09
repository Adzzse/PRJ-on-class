package anhdh.utils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author DoHoangAnh
 */
public class DBHelper implements Serializable {

    public static Connection makeConnection()
            throws NamingException, SQLException {/*ClassNotFoundException*/
        //1.Open current context
        Context currentContext = new InitialContext();
        //2. Look up Tomcat Context
        Context tomcatContext = (Context) currentContext.lookup("java:comp/env");
        //3. Look up our DataSource
        DataSource ds = (DataSource) tomcatContext.lookup("SE1706");
        //4.Open Connection
        Connection con = ds.getConnection();

        return con;

//    public static Connection createConnection() throws ClassNotFoundException{
//        try {
//            //1. Load Driver
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            //2. Tạo connection string - protocol:servertype://IPaddress:port;DBName;InstanceName
//            String url = "jdbc:sqlserver://localhost:1433;"
//                    + "databaseName=PRJ301_MVC2;"
//                    + "instanceName=SQLEXPRESS";
//            //3. Lấy connection
//            Connection con = DriverManager.getConnection(url, "sa", "Thuytien");
//            //4. Trả connection cho đối tượng gọi
//            return con;
//        } catch (ClassNotFoundException ex) {
//            ex.printStackTrace();
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        return null;
//    }
    }
}
