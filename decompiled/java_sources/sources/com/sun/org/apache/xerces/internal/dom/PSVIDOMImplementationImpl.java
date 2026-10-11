package com.sun.org.apache.xerces.internal.dom;

import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

/* loaded from: classes10.dex */
public class PSVIDOMImplementationImpl extends CoreDOMImplementationImpl {
    static PSVIDOMImplementationImpl singleton = new PSVIDOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws DOMException {
        if (documentType != null && documentType.getOwnerDocument() != null) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "WRONG_DOCUMENT_ERR", null));
        }
        PSVIDocumentImpl pSVIDocumentImpl = new PSVIDocumentImpl(documentType);
        pSVIDocumentImpl.appendChild(pSVIDocumentImpl.createElementNS(str, str2));
        return pSVIDocumentImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        return super.hasFeature(str, str2) || str.equalsIgnoreCase("psvi");
    }
}
