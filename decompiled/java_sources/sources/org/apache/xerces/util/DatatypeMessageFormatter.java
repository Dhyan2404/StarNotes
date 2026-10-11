package org.apache.xerces.util;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes13.dex */
public class DatatypeMessageFormatter {

    /* renamed from: a */
    public static final String f113491a = "org.apache.xerces.impl.msg.DatatypeMessages";

    public static String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        ResourceBundle bundle = ResourceBundle.getBundle(f113491a, locale);
        try {
            String string = bundle.getString(str);
            if (objArr != null) {
                try {
                    string = MessageFormat.format(string, objArr);
                } catch (Exception unused) {
                    String string2 = bundle.getString("FormatFailed");
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(string2);
                    stringBuffer.append(" ");
                    stringBuffer.append(bundle.getString(str));
                    string = stringBuffer.toString();
                }
            }
            if (string != null) {
                return string;
            }
            if (objArr.length <= 0) {
                return str;
            }
            StringBuffer stringBuffer2 = new StringBuffer(str);
            stringBuffer2.append('?');
            for (int i = 0; i < objArr.length; i++) {
                if (i > 0) {
                    stringBuffer2.append('&');
                }
                stringBuffer2.append(String.valueOf(objArr[i]));
            }
            return str;
        } catch (MissingResourceException unused2) {
            throw new MissingResourceException(str, bundle.getString("BadMessageKey"), str);
        }
    }
}
