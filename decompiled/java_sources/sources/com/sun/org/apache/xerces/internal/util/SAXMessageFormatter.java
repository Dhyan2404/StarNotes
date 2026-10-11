package com.sun.org.apache.xerces.internal.util;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes10.dex */
public class SAXMessageFormatter {
    public static String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException {
        ResourceBundle bundle = locale != null ? ResourceBundle.getBundle("com.sun.org.apache.xerces.internal.impl.msg.SAXMessages", locale) : ResourceBundle.getBundle("com.sun.org.apache.xerces.internal.impl.msg.SAXMessages");
        try {
            String string = bundle.getString(str);
            if (objArr != null) {
                try {
                    string = MessageFormat.format(string, objArr);
                } catch (Exception unused) {
                    string = bundle.getString("FormatFailed") + " " + bundle.getString(str);
                }
            }
            if (string != null) {
                return string;
            }
            if (objArr.length <= 0) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer(str);
            stringBuffer.append('?');
            for (int i = 0; i < objArr.length; i++) {
                if (i > 0) {
                    stringBuffer.append('&');
                }
                stringBuffer.append(String.valueOf(objArr[i]));
            }
            return str;
        } catch (MissingResourceException unused2) {
            throw new MissingResourceException(str, bundle.getString("BadMessageKey"), str);
        }
    }
}
