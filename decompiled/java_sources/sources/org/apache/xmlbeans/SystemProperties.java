package org.apache.xmlbeans;

import java.util.Map;
import java.util.Properties;

/* loaded from: classes13.dex */
public class SystemProperties {
    private static Map<Object, Object> propertyH;

    public static String getProperty(String str) {
        if (propertyH == null) {
            try {
                propertyH = System.getProperties();
            } catch (SecurityException unused) {
                propertyH = new Properties();
                return null;
            }
        }
        Object obj = propertyH.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static void setPropertyH(Map<Object, Object> map) {
        propertyH = map;
    }

    public static String getProperty(String str, String str2) {
        String property = getProperty(str);
        return property == null ? str2 : property;
    }
}
