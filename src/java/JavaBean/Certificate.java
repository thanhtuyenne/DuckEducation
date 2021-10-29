/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBean;

/**
 *
 * @author ASUS
 */
public class Certificate {
    private String name_certificate;
    private String img_certificate;

    public Certificate() {
    }

    public Certificate(String name_certificate, String img_certificate) {

        this.name_certificate = name_certificate;
        this.img_certificate = img_certificate;
    }

    public String getName_certificate() {
        return name_certificate;
    }

    public void setName_certificate(String name_certificate) {
        this.name_certificate = name_certificate;
    }

    public String getImg_certificate() {
        return img_certificate;
    }

    public void setImg_certificate(String img_certificate) {
        this.img_certificate = img_certificate;
    } 
}
