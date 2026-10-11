package org.apache.xerces.xinclude;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public class XIncludeMessageFormatter implements MessageFormatter {
    public static final String XINCLUDE_DOMAIN = "http://www.w3.org/TR/xinclude";

    /* renamed from: a */
    public Locale f113577a = null;

    /* renamed from: b */
    public ResourceBundle f113578b = null;

    @Override // org.apache.xerces.util.MessageFormatter
    public String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        if (locale != this.f113577a) {
            this.f113578b = ResourceBundle.getBundle("org.apache.xerces.impl.msg.XIncludeMessages", locale);
            this.f113577a = locale;
        }
        String string = this.f113578b.getString(str);
        if (objArr != null) {
            try {
                string = MessageFormat.format(string, objArr);
            } catch (Exception unused) {
                String string2 = this.f113578b.getString("FormatFailed");
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(string2);
                stringBuffer.append(" ");
                stringBuffer.append(this.f113578b.getString(str));
                string = stringBuffer.toString();
            }
        }
        if (string != null) {
            return string;
        }
        throw new MissingResourceException(this.f113578b.getString("BadMessageKey"), "org.apache.xerces.impl.msg.XIncludeMessages", str);
    }
}
