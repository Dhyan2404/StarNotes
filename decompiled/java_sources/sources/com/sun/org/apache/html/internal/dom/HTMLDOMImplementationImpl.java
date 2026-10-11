package com.sun.org.apache.html.internal.dom;

import com.sun.org.apache.xerces.internal.dom.DOMImplementationImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.html.HTMLDOMImplementation;
import org.w3c.dom.html.HTMLDocument;

/* loaded from: classes10.dex */
public class HTMLDOMImplementationImpl extends DOMImplementationImpl implements HTMLDOMImplementation {
    private static HTMLDOMImplementation _instance = new HTMLDOMImplementationImpl();

    private HTMLDOMImplementationImpl() {
    }

    public static HTMLDOMImplementation getHTMLDOMImplementation() {
        return _instance;
    }

    @Override // org.w3c.dom.html.HTMLDOMImplementation
    public final HTMLDocument createHTMLDocument(String str) throws DOMException {
        if (str == null) {
            throw new NullPointerException("HTM014 Argument 'title' is null.");
        }
        HTMLDocumentImpl hTMLDocumentImpl = new HTMLDocumentImpl();
        hTMLDocumentImpl.setTitle(str);
        return hTMLDocumentImpl;
    }
}
