package com.sun.org.apache.xerces.internal.xni.parser;

import com.sun.org.apache.xerces.internal.xni.XNIException;

/* loaded from: classes10.dex */
public class XMLConfigurationException extends XNIException {
    public static final short NOT_RECOGNIZED = 0;
    public static final short NOT_SUPPORTED = 1;
    static final long serialVersionUID = -5437427404547669188L;
    protected String fIdentifier;
    protected short fType;

    public XMLConfigurationException(short s, String str) {
        super(str);
        this.fType = s;
        this.fIdentifier = str;
    }

    public String getIdentifier() {
        return this.fIdentifier;
    }

    public short getType() {
        return this.fType;
    }

    public XMLConfigurationException(short s, String str, String str2) {
        super(str2);
        this.fType = s;
        this.fIdentifier = str;
    }
}
