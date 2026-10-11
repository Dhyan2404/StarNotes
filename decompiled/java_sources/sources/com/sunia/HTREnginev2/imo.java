package com.sunia.HTREnginev2;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public final class imo implements MessageFormatter {

    /* renamed from: c */
    public static final String f73389c = "http://www.w3.org/TR/XPTR";

    /* renamed from: a */
    public Locale f73390a = null;

    /* renamed from: b */
    public ResourceBundle f73391b = null;

    @Override // org.apache.xerces.util.MessageFormatter
    public String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        if (locale != this.f73390a) {
            this.f73391b = ResourceBundle.getBundle("org.apache.xerces.impl.msg.XPointerMessages", locale);
            this.f73390a = locale;
        }
        String string = this.f73391b.getString(str);
        if (objArr != null) {
            try {
                string = MessageFormat.format(string, objArr);
            } catch (Exception unused) {
                String string2 = this.f73391b.getString("FormatFailed");
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(string2);
                stringBuffer.append(" ");
                stringBuffer.append(this.f73391b.getString(str));
                string = stringBuffer.toString();
            }
        }
        if (string != null) {
            return string;
        }
        throw new MissingResourceException(this.f73391b.getString("BadMessageKey"), "org.apache.xerces.impl.msg.XPointerMessages", str);
    }
}
