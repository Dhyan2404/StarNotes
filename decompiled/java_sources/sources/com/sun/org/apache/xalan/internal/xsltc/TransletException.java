package com.sun.org.apache.xalan.internal.xsltc;

import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class TransletException extends SAXException {
    static final long serialVersionUID = -878916829521217293L;

    public TransletException() {
        super("Translet error");
    }

    public TransletException(Exception exc) {
        super(exc.toString());
    }

    public TransletException(String str) {
        super(str);
    }
}
