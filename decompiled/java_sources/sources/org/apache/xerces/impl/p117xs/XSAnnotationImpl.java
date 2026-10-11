package org.apache.xerces.impl.p117xs;

import java.io.IOException;
import java.io.StringReader;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.parsers.SAXParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XSAnnotationImpl implements XSAnnotation {

    /* renamed from: e */
    public String f112853e;

    /* renamed from: f */
    public SchemaGrammar f112854f;

    public XSAnnotationImpl(String str, SchemaGrammar schemaGrammar) {
        this.f112853e = str;
        this.f112854f = schemaGrammar;
    }

    /* renamed from: a */
    public final synchronized void m70194a(Node node, short s) {
        Node importNode;
        Document ownerDocument = s == 1 ? node.getOwnerDocument() : (Document) node;
        DOMParser mo70117a = this.f112854f.mo70117a();
        try {
            mo70117a.parse(new InputSource(new StringReader(this.f112853e)));
        } catch (IOException | SAXException unused) {
        }
        Document document = mo70117a.getDocument();
        mo70117a.dropDocumentReferences();
        Element documentElement = document.getDocumentElement();
        if (!(ownerDocument instanceof CoreDocumentImpl) || (importNode = ownerDocument.adoptNode(documentElement)) == null) {
            importNode = ownerDocument.importNode(documentElement, true);
        }
        node.insertBefore(importNode, node.getFirstChild());
    }

    /* renamed from: b */
    public final synchronized void m70195b(ContentHandler contentHandler) {
        SAXParser mo70120d = this.f112854f.mo70120d();
        InputSource inputSource = new InputSource(new StringReader(this.f112853e));
        mo70120d.setContentHandler(contentHandler);
        try {
            mo70120d.parse(inputSource);
        } catch (IOException | SAXException unused) {
        }
        mo70120d.setContentHandler(null);
    }

    @Override // org.apache.xerces.p118xs.XSAnnotation
    public String getAnnotationString() {
        return this.f112853e;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 12;
    }

    @Override // org.apache.xerces.p118xs.XSAnnotation
    public boolean writeAnnotation(Object obj, short s) {
        if (s == 1 || s == 3) {
            m70194a((Node) obj, s);
            return true;
        }
        if (s != 2) {
            return false;
        }
        m70195b((ContentHandler) obj);
        return true;
    }
}
