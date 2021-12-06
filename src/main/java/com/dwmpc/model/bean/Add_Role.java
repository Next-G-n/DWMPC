package com.dwmpc.model.bean;

public class Add_Role {
    String co,wmo,rc,wmoch,hdh,Current,og;

    public Add_Role(String co, String wmo, String rc, String wmoch, String hdh, String current, String og) {
        this.co = co;
        this.wmo = wmo;
        this.rc = rc;
        this.wmoch = wmoch;
        this.hdh = hdh;
        Current = current;
        this.og = og;
    }

    public String getOg() {
        return og;
    }

    public void setOg(String og) {
        this.og = og;
    }

    public String getCurrent() {
        return Current;
    }

    public void setCurrent(String current) {
        Current = current;
    }



    public String getCo() {
        return co;
    }

    public void setCo(String co) {
        this.co = co;
    }

    public String getWmo() {
        return wmo;
    }

    public void setWmo(String wmo) {
        this.wmo = wmo;
    }

    public String getRc() {
        return rc;
    }

    public void setRc(String rc) {
        this.rc = rc;
    }

    public String getWmoch() {
        return wmoch;
    }

    public void setWmoch(String wmoch) {
        this.wmoch = wmoch;
    }

    public String getHdh() {
        return hdh;
    }

    public void setHdh(String hdh) {
        this.hdh = hdh;
    }
}
