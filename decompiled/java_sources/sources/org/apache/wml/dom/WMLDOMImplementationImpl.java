package org.apache.wml.dom;

import org.apache.wml.WMLDOMImplementation;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;

/* loaded from: classes13.dex */
public class WMLDOMImplementationImpl extends DOMImplementationImpl implements WMLDOMImplementation {

    /* renamed from: t */
    public static final DOMImplementationImpl f111844t = new WMLDOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return f111844t;
    }

    @Override // org.apache.xerces.dom.DOMImplementationImpl, org.apache.xerces.dom.CoreDOMImplementationImpl
    public CoreDocumentImpl createDocument(DocumentType documentType) {
        return new WMLDocumentImpl(documentType);
    }
}
