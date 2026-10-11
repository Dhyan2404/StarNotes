package com.sun.org.apache.xerces.internal.impl.p053dv;

import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes10.dex */
public class DatatypeException extends Exception {
    static final long serialVersionUID = 1940805832730465578L;
    protected Object[] args;
    protected String key;

    public DatatypeException(String str, Object[] objArr) {
        super(str);
        this.key = str;
        this.args = objArr;
    }

    public Object[] getArgs() {
        return this.args;
    }

    public String getKey() {
        return this.key;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ResourceBundle bundle = ResourceBundle.getBundle("com.sun.org.apache.xerces.internal.impl.msg.XMLSchemaMessages");
        if (bundle == null) {
            throw new MissingResourceException("Property file not found!", "com.sun.org.apache.xerces.internal.impl.msg.XMLSchemaMessages", this.key);
        }
        String string = bundle.getString(this.key);
        if (string == null) {
            throw new MissingResourceException(bundle.getString("BadMessageKey"), "com.sun.org.apache.xerces.internal.impl.msg.XMLSchemaMessages", this.key);
        }
        Object[] objArr = this.args;
        if (objArr == null) {
            return string;
        }
        try {
            return MessageFormat.format(string, objArr);
        } catch (Exception unused) {
            return bundle.getString("FormatFailed") + " " + bundle.getString(this.key);
        }
    }
}
