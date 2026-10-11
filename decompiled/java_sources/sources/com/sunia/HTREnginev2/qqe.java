package com.sunia.HTREnginev2;

import net.p110sf.saxon.dom.NodeOverNodeInfo;
import net.p110sf.saxon.query.XQueryParser;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

/* loaded from: classes11.dex */
public class qqe implements DOMImplementation {
    @Override // org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.DOMImplementation
    public DocumentType createDocumentType(String str, String str2, String str3) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.DOMImplementation
    public Object getFeature(String str, String str2) {
        return null;
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        return (str.equalsIgnoreCase("XML") || str.equalsIgnoreCase("Core")) && (str2 == null || str2.isEmpty() || str2.equals(XQueryParser.XQUERY30) || str2.equals(OAuth20ServiceImpl.f115984c) || str2.equals("1.0"));
    }
}
