package com.sun.org.apache.xerces.internal.dom;

import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

/* loaded from: classes10.dex */
public class DOMImplementationImpl extends CoreDOMImplementationImpl implements DOMImplementation {
    static DOMImplementationImpl singleton = new DOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws DOMException {
        if (str == null && str2 == null && documentType == null) {
            return new DocumentImpl();
        }
        if (documentType != null && documentType.getOwnerDocument() != null) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
        }
        DocumentImpl documentImpl = new DocumentImpl(documentType);
        documentImpl.appendChild(documentImpl.createElementNS(str, str2));
        return documentImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        boolean hasFeature = super.hasFeature(str, str2);
        if (hasFeature) {
            return hasFeature;
        }
        boolean z = str2 == null || str2.length() == 0;
        if (str.startsWith("+")) {
            str = str.substring(1);
        }
        if ((!str.equalsIgnoreCase("Events") || (!z && !str2.equals(OAuth20ServiceImpl.f115984c))) && ((!str.equalsIgnoreCase("MutationEvents") || (!z && !str2.equals(OAuth20ServiceImpl.f115984c))) && ((!str.equalsIgnoreCase("Traversal") || (!z && !str2.equals(OAuth20ServiceImpl.f115984c))) && (!str.equalsIgnoreCase("Range") || (!z && !str2.equals(OAuth20ServiceImpl.f115984c)))))) {
            if (!str.equalsIgnoreCase("MutationEvents")) {
                return false;
            }
            if (!z && !str2.equals(OAuth20ServiceImpl.f115984c)) {
                return false;
            }
        }
        return true;
    }
}
