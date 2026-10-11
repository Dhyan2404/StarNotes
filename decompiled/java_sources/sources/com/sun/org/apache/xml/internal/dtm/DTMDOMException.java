package com.sun.org.apache.xml.internal.dtm;

import org.w3c.dom.DOMException;

/* loaded from: classes10.dex */
public class DTMDOMException extends DOMException {
    static final long serialVersionUID = 1895654266613192414L;

    public DTMDOMException(short s, String str) {
        super(s, str);
    }

    public DTMDOMException(short s) {
        super(s, "");
    }
}
