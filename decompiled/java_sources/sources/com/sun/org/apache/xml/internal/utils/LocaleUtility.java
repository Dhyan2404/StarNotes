package com.sun.org.apache.xml.internal.utils;

import java.util.Locale;

/* loaded from: classes10.dex */
public class LocaleUtility {
    public static final String EMPTY_STRING = "";
    public static final char IETF_SEPARATOR = '-';

    public static Locale langToLocale(String str) {
        String substring;
        String substring2;
        if (str != null) {
            String str2 = "";
            if (!str.equals("")) {
                int indexOf = str.indexOf(45);
                if (indexOf < 0) {
                    substring2 = "";
                    substring = substring2;
                } else {
                    String substring3 = str.substring(0, indexOf);
                    int i = indexOf + 1;
                    int indexOf2 = str.indexOf(45, i);
                    if (indexOf2 < 0) {
                        substring = str.substring(i);
                        substring2 = "";
                    } else {
                        substring = str.substring(i, indexOf2);
                        substring2 = str.substring(indexOf2 + 1);
                    }
                    str = substring3;
                }
                String lowerCase = str.length() == 2 ? str.toLowerCase() : "";
                String upperCase = substring.length() == 2 ? substring.toUpperCase() : "";
                if (substring2.length() > 0 && (lowerCase.length() == 2 || upperCase.length() == 2)) {
                    str2 = substring2.toUpperCase();
                }
                return new Locale(lowerCase, upperCase, str2);
            }
        }
        return Locale.getDefault();
    }
}
