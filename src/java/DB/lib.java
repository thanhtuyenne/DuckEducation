/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import JavaBean.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class lib {

    public static JavaBean.User DB_Login(String username, String password) throws SQLException, Exception {

        String sql = "SELECT * FROM tb_Login WHERE username ='" + username + "' and password='" + Core.MD5.getMd5(password) + "'";
        ResultSet rc = DB.SQL.connectDao.ExcuteQueryGetTable(sql);
        if (rc.next()) {
            String pattern = Core.MD5.getMd5(username);
            User user = new User();

            String role = "";
            String sql_getrole = "select id_typeuser from tb_User where ID= '" + pattern + "'";
            ResultSet rs = DB.SQL.connectDao.ExcuteQueryGetTable(sql_getrole);
            if (rs.next()) {
                int n = rs.getInt("id_typeuser");
                switch (n) {
                    case 0:
                        role = "admin";
                        break;
                    case 1:
                        role = "teacher";
                        break;
                    case 2:
                        role = "student";
                        break;
                    default:
                        throw new Exception("Do not access this account!");
                }
                rs.close();
            }

            String getuser = "select * from tb_student where ID_Student = '" + pattern + "'";
            ResultSet rs0 = DB.SQL.connectDao.ExcuteQueryGetTable(getuser);
            if (rs0.next() && !role.isEmpty()) {
                user.setUsername(username);
                user.setID(pattern);
                user.setName(rs0.getString("name"));
                user.setEmail(rs0.getString("email"));
                user.setAddress(rs0.getString("address"));
                user.setDob(rs0.getString("dob"));
                user.setImage("https://i.pravatar.cc/150?u=" + pattern);
                user.setRole(role);
            }
            rs0.close();
            return user;
        }
        throw new Exception("Username or password Wrong!");
    }

    public static void updateUser(User user) throws SQLException {
        String ID = user.getID();
        String role = user.getRole();
        String name = user.getName();
        String dob = user.getDob();
        String email = user.getEmail();
        String address = user.getAddress();

        if (role.equals("admin")) {
            String query = "update tb_Admin set [name] = '" + name + "', dob = '" + dob + "' , [address] = '" + address + "', email = '" + email + "' Where ID_Admin = '" + ID + "'";
            DB.SQL.connectDao.ExcuteQueryUpdateDB(query);
        } else if (role.equals("student")) {
            String query1 = "update tb_Student set [name] = '" + name + "', dob = '" + dob + "' , [address] = '" + address + "', email = '" + email + "' Where ID_Student = '" + ID + "'";
            DB.SQL.connectDao.ExcuteQueryUpdateDB(query1);
        } else if (role.equals("teacher")) {
            String query2 = "update tb_Teacher set [name] = '" + name + "', dob = '" + dob + "' , [address] = '" + address + "', email = '" + email + "' Where ID_Teacher = '" + ID + "'";
            DB.SQL.connectDao.ExcuteQueryUpdateDB(query2);
        } else {
        }
    }

    /**
     *
     * @param username
     * @param password
     * @param name
     * @param dob
     * @param address
     * @param email
     * @param email
     * @param typeUser
     * @param IDSupject
     * @return
     */
    public static boolean DB_SignUp(String username, String password, String name, String dob, String address, String email, int typeUser, String IDSupject) throws SQLException {
        String pattern = Core.MD5.getMd5(username);
        String sql = "EXEC dbo.pro_addUser @ID = N'" + pattern + "',           -- nvarchar(32)\n"
                + "                     @Username = N'" + username + "',     -- nvarchar(50)\n"
                + "                     @Password = N'" + password + "',     -- nvarchar(50)\n"
                + "                     @name = N'" + name + "',         -- nvarchar(50)\n"
                + "                     @dob = '" + dob + "', -- date\n"
                + "                     @address = N'" + address + "',      -- nvarchar(50)\n"
                + "                     @email = N'" + email + "',        -- nvarchar(50)\n"
                + "                     @typeUser = " + typeUser + ",       -- int\n"
                + "                     @ID_Subject = N'" + IDSupject + "'    -- nvarchar(10)";
        DB.SQL.connectDao.ExcuteQueryUpdateDB(sql);
        return false;
    }

    public static LinkedList<JavaBean.Certificate> getCertificatebyId(String id) {
        LinkedList<JavaBean.Certificate> list = new LinkedList<>();
//        String sql = "select * from dbo.tb_Subject, dbo.tb_Subject_Profile where ID_Student = '" + id + "'";
        String sql = "select * from dbo.tb_Subject as sub, dbo.tb_Subject_Profile as sup where sub.ID = sup.ID_Subject and  ID_Student = '" + id + "'";
        try {
            ResultSet rs = DB.SQL.connectDao.ExcuteQueryGetTable(sql);
            while (rs.next()) {
                String name_certificate = rs.getString("name");
                String img_certificate = rs.getString("img_Certificate");
                list.add(new JavaBean.Certificate(name_certificate, img_certificate));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    public static boolean DB_CheckPassword(String olpw, String username) throws SQLException {
        String sql = "select [password] from dbo.[tb_login] \n"
                + "where username ='" + username + "'";
        ResultSet rs = DB.SQL.connectDao.ExcuteQueryGetTable(sql);
        String password = "";
        if (rs.next()) {
            password = rs.getString("password");
        }
        olpw = Core.MD5.getMd5(olpw);
        return olpw.equals(password);
    }

    public static void DB_ChangePassword(String newpw, String confirmpw, String username) throws SQLException {
        String sql = "update dbo.[tb_login] set [password] = '" + Core.MD5.getMd5(newpw) + "'\n"
                + "where username = '" + username + "'";
        DB.SQL.connectDao.ExcuteQueryUpdateDB(sql);
    }

    public static String DB_GetEmail(String username) throws SQLException, Exception {
        String ID = Core.MD5.getMd5(username);
        String sql = "EXEC pro_getEmail @ID  = '" + ID + "'";
        String email;
        ResultSet rs = DB.SQL.connectDao.ExcuteQueryGetTable(sql);
        if (rs.next()) {
            email = rs.getString(1);
        } else {
            throw new Exception("Do not access this account!");
        }
        return email;
    }

}
