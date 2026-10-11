package org.apache.xerces.impl.msg;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public class XMLMessageFormatter implements MessageFormatter {
    public static final String XMLNS_DOMAIN = "http://www.w3.org/TR/1999/REC-xml-names-19990114";
    public static final String XML_DOMAIN = "http://www.w3.org/TR/1998/REC-xml-19980210";

    /* renamed from: a */
    public Locale f112434a = null;

    /* renamed from: b */
    public ResourceBundle f112435b = null;

    @Override // org.apache.xerces.util.MessageFormatter
    public String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        if (locale != this.f112434a) {
            this.f112435b = ResourceBundle.getBundle("org.apache.xerces.impl.msg.XMLMessages", locale);
            this.f112434a = locale;
        }
        try {
            String string = this.f112435b.getString(str);
            if (objArr != null) {
                try {
                    string = MessageFormat.format(string, objArr);
                } catch (Exception unused) {
                    String string2 = this.f112435b.getString("FormatFailed");
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(string2);
                    stringBuffer.append(" ");
                    stringBuffer.append(this.f112435b.getString(str));
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
            throw new MissingResourceException(str, this.f112435b.getString("BadMessageKey"), str);
        }
    }
}
