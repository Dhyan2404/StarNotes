package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import com.sun.org.apache.xerces.internal.parsers.SAXParser;
import java.io.IOException;
import java.io.StringReader;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XSAnnotationImpl implements XSAnnotation {
    private String fData;
    private SchemaGrammar fGrammar;

    public XSAnnotationImpl(String str, SchemaGrammar schemaGrammar) {
        this.fData = str;
        this.fGrammar = schemaGrammar;
    }

    private synchronized void writeToDOM(Node node, short s) {
        Document ownerDocument = s == 1 ? node.getOwnerDocument() : (Document) node;
        DOMParser dOMParser = this.fGrammar.getDOMParser();
        try {
            dOMParser.parse(new InputSource(new StringReader(this.fData)));
        } catch (IOException | SAXException unused) {
        }
        node.insertBefore(ownerDocument.importNode(dOMParser.getDocument().getDocumentElement(), true), node.getFirstChild());
    }

    private synchronized void writeToSAX(ContentHandler contentHandler) {
        SAXParser sAXParser = this.fGrammar.getSAXParser();
        InputSource inputSource = new InputSource(new StringReader(this.fData));
        sAXParser.setContentHandler(contentHandler);
        try {
            sAXParser.parse(inputSource);
        } catch (IOException | SAXException unused) {
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAnnotation
    public String getAnnotationString() {
        return this.fData;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 12;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAnnotation
    public boolean writeAnnotation(Object obj, short s) {
        if (s == 1 || s == 3) {
            writeToDOM((Node) obj, s);
            return true;
        }
        if (s != 2) {
            return false;
        }
        writeToSAX((ContentHandler) obj);
        return true;
    }
}
