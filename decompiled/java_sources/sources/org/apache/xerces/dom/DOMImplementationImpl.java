package org.apache.xerces.dom;

import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;

/* loaded from: classes13.dex */
public class DOMImplementationImpl extends CoreDOMImplementationImpl implements DOMImplementation {

    /* renamed from: s */
    public static final DOMImplementationImpl f111870s = new DOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return f111870s;
    }

    @Override // org.apache.xerces.dom.CoreDOMImplementationImpl
    public CoreDocumentImpl createDocument(DocumentType documentType) {
        return new DocumentImpl(documentType);
    }

    @Override // org.apache.xerces.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
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
