/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class NewClass {

    public static void main(String[] args) {
        String servletP = "\\signup";
        if(servletP.matches("^\\\\signup$|^\\\\control$|^\\\\forgotpw$|^\\\\login$"))
        {
            System.out.println("OK");
        }else
        {
            System.out.println("not ok");
        }
    }
}
