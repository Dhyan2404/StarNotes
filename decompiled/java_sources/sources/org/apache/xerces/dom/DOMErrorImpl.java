package org.apache.xerces.dom;

import org.apache.xerces.xni.parser.XMLParseException;
import org.w3c.dom.DOMError;
import org.w3c.dom.DOMLocator;

/* loaded from: classes13.dex */
public class DOMErrorImpl implements DOMError {
    public Exception fException;
    public DOMLocatorImpl fLocator;
    public String fMessage;
    public Object fRelatedData;
    public short fSeverity;
    public String fType;

    public DOMErrorImpl() {
        this.fSeverity = (short) 1;
        this.fMessage = null;
        this.fLocator = new DOMLocatorImpl();
        this.fException = null;
    }

    /* renamed from: a */
    public final DOMLocatorImpl m69742a(XMLParseException xMLParseException) {
        return new DOMLocatorImpl(xMLParseException.getLineNumber(), xMLParseException.getColumnNumber(), xMLParseException.getCharacterOffset(), xMLParseException.getExpandedSystemId());
    }

    @Override // org.w3c.dom.DOMError
    public DOMLocator getLocation() {
        return this.fLocator;
    }

    @Override // org.w3c.dom.DOMError
    public String getMessage() {
        return this.fMessage;
    }

    @Override // org.w3c.dom.DOMError
    public Object getRelatedData() {
        return this.fRelatedData;
    }

    @Override // org.w3c.dom.DOMError
    public Object getRelatedException() {
        return this.fException;
    }

    @Override // org.w3c.dom.DOMError
    public short getSeverity() {
        return this.fSeverity;
    }

    @Override // org.w3c.dom.DOMError
    public String getType() {
        return this.fType;
    }

    public void reset() {
        this.fSeverity = (short) 1;
        this.fException = null;
    }

    public DOMErrorImpl(short s, XMLParseException xMLParseException) {
        this.fSeverity = (short) 1;
        this.fMessage = null;
        this.fLocator = new DOMLocatorImpl();
        this.fSeverity = s;
        this.fException = xMLParseException;
        this.fLocator = m69742a(xMLParseException);
    }
}
