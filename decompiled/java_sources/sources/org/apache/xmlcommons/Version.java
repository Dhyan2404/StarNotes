package org.apache.xmlcommons;

/* loaded from: classes13.dex */
public class Version {
    public static String getProduct() {
        return "XmlCommonsExternal";
    }

    public static String getVersion() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getProduct());
        stringBuffer.append(" ");
        stringBuffer.append(getVersionNum());
        return stringBuffer.toString();
    }

    public static String getVersionNum() {
        return "1.4.01";
    }

    public static void main(String[] strArr) {
        System.out.println(getVersion());
    }
}
