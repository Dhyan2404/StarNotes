package org.apache.xerces.dom;

import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;

/* loaded from: classes13.dex */
public class PSVIDOMImplementationImpl extends DOMImplementationImpl {

    /* renamed from: t */
    public static final PSVIDOMImplementationImpl f111901t = new PSVIDOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return f111901t;
    }

    @Override // org.apache.xerces.dom.DOMImplementationImpl, org.apache.xerces.dom.CoreDOMImplementationImpl
    public CoreDocumentImpl createDocument(DocumentType documentType) {
        return new PSVIDocumentImpl(documentType);
    }

    @Override // org.apache.xerces.dom.DOMImplementationImpl, org.apache.xerces.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        return super.hasFeature(str, str2) || str.equalsIgnoreCase("psvi");
    }
}
