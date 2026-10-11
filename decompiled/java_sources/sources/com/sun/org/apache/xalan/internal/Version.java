package com.sun.org.apache.xalan.internal;

import com.sun.org.apache.xalan.internal.processor.XSLProcessorVersion;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;

/* loaded from: classes10.dex */
public class Version {
    public static void _main(String[] strArr) {
        System.out.println(getVersion());
    }

    public static int getDevelopmentVersionNum() {
        try {
            if (new String("").length() == 0) {
                return 0;
            }
            return Integer.parseInt("");
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static String getImplementationLanguage() {
        return XSLProcessorVersion.LANGUAGE;
    }

    public static int getMaintenanceVersionNum() {
        return 0;
    }

    public static int getMajorVersionNum() {
        return 2;
    }

    public static String getProduct() {
        return XSLProcessorVersion.PRODUCT;
    }

    public static int getReleaseVersionNum() {
        return 6;
    }

    public static String getVersion() {
        StringBuilder sb;
        int maintenanceVersionNum;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getProduct());
        sb2.append(" ");
        sb2.append(getImplementationLanguage());
        sb2.append(" ");
        sb2.append(getMajorVersionNum());
        sb2.append(".");
        sb2.append(getReleaseVersionNum());
        sb2.append(".");
        if (getDevelopmentVersionNum() > 0) {
            sb = new StringBuilder();
            sb.append(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
            maintenanceVersionNum = getDevelopmentVersionNum();
        } else {
            sb = new StringBuilder();
            sb.append("");
            maintenanceVersionNum = getMaintenanceVersionNum();
        }
        sb.append(maintenanceVersionNum);
        sb2.append(sb.toString());
        return sb2.toString();
    }
}
