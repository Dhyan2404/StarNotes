package org.apache.xerces.dom;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes13.dex */
public class DOMMessageFormatter {
    public static final String DOM_DOMAIN = "http://www.w3.org/dom/DOMTR";
    public static final String SERIALIZER_DOMAIN = "http://apache.org/xml/serializer";
    public static final String XML_DOMAIN = "http://www.w3.org/TR/1998/REC-xml-19980210";

    /* renamed from: a */
    public static ResourceBundle f111872a;

    /* renamed from: b */
    public static ResourceBundle f111873b;

    /* renamed from: c */
    public static ResourceBundle f111874c;

    /* renamed from: d */
    public static Locale f111875d;

    public DOMMessageFormatter() {
        f111875d = Locale.getDefault();
    }

    /* renamed from: a */
    public static ResourceBundle m69744a(String str) {
        if (str == "http://www.w3.org/dom/DOMTR" || str.equals("http://www.w3.org/dom/DOMTR")) {
            return f111872a;
        }
        if (str == "http://www.w3.org/TR/1998/REC-xml-19980210" || str.equals("http://www.w3.org/TR/1998/REC-xml-19980210")) {
            return f111873b;
        }
        if (str == "http://apache.org/xml/serializer" || str.equals("http://apache.org/xml/serializer")) {
            return f111874c;
        }
        return null;
    }

    public static String formatMessage(String str, String str2, Object[] objArr) throws MissingResourceException {
        ResourceBundle m69744a = m69744a(str);
        if (m69744a == null) {
            init();
            m69744a = m69744a(str);
            if (m69744a == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unknown domain");
                stringBuffer.append(str);
                throw new MissingResourceException(stringBuffer.toString(), null, str2);
            }
        }
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str2);
            stringBuffer2.append(": ");
            stringBuffer2.append(m69744a.getString(str2));
            String stringBuffer3 = stringBuffer2.toString();
            if (objArr != null) {
                try {
                    stringBuffer3 = MessageFormat.format(stringBuffer3, objArr);
                } catch (Exception unused) {
                    String string = m69744a.getString("FormatFailed");
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append(string);
                    stringBuffer4.append(" ");
                    stringBuffer4.append(m69744a.getString(str2));
                    stringBuffer3 = stringBuffer4.toString();
                }
            }
            if (stringBuffer3 != null) {
                return stringBuffer3;
            }
            if (objArr.length <= 0) {
                return str2;
            }
            StringBuffer stringBuffer5 = new StringBuffer(str2);
            stringBuffer5.append('?');
            for (int i = 0; i < objArr.length; i++) {
                if (i > 0) {
                    stringBuffer5.append('&');
                }
                stringBuffer5.append(String.valueOf(objArr[i]));
            }
            return str2;
        } catch (MissingResourceException unused2) {
            throw new MissingResourceException(str2, m69744a.getString("BadMessageKey"), str2);
        }
    }

    public static void init() {
        Locale locale = f111875d;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        f111872a = ResourceBundle.getBundle("org.apache.xerces.impl.msg.DOMMessages", locale);
        f111874c = ResourceBundle.getBundle("org.apache.xerces.impl.msg.XMLSerializerMessages", locale);
        f111873b = ResourceBundle.getBundle("org.apache.xerces.impl.msg.XMLMessages", locale);
    }

    public static void setLocale(Locale locale) {
        f111875d = locale;
    }
}
