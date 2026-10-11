package com.sunia.HTREnginev2;

import net.p110sf.saxon.query.XQueryParser;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

/* loaded from: classes13.dex */
public final class b2m implements DOMImplementation {

    /* renamed from: a */
    public static final b2m f65328a = new b2m();

    /* renamed from: a */
    public static DOMImplementation m53158a() {
        return f65328a;
    }

    @Override // org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }

    @Override // org.w3c.dom.DOMImplementation
    public DocumentType createDocumentType(String str, String str2, String str3) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }

    @Override // org.w3c.dom.DOMImplementation
    public Object getFeature(String str, String str2) {
        b2m b2mVar = f65328a;
        if (b2mVar.hasFeature(str, str2)) {
            return b2mVar;
        }
        return null;
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        boolean z = str2 == null || str2.length() == 0;
        if (str.equalsIgnoreCase("Core") || str.equalsIgnoreCase("XML")) {
            return z || str2.equals("1.0") || str2.equals(OAuth20ServiceImpl.f115984c) || str2.equals(XQueryParser.XQUERY30);
        }
        return false;
    }
}
