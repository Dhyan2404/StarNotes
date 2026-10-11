package org.apache.poi.convert;

/* loaded from: classes12.dex */
public class WPStyle {
    private String custom;
    private String data;
    private String name;

    public WPStyle() {
        this.name = "style.css";
    }

    public String getAllData() {
        StringBuilder sb = new StringBuilder();
        String str = this.data;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        String str2 = this.custom;
        sb.append(str2 != null ? str2 : "");
        return sb.toString();
    }

    public String getCustom() {
        return this.custom;
    }

    public String getData() {
        return this.data;
    }

    public String getName() {
        return this.name;
    }

    public void setCustom(String str) {
        this.custom = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public WPStyle(String str) {
        this.name = str;
    }
}
