package com.sun.org.apache.xml.internal.resolver.readers;

import java.io.IOException;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes10.dex */
public class SAXParserHandler extends DefaultHandler {

    /* renamed from: er */
    private EntityResolver f64122er = null;

    /* renamed from: ch */
    private ContentHandler f64121ch = null;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.characters(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.endDocument();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.endElement(str, str2, str3);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.endPrefixMapping(str);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException {
        EntityResolver entityResolver = this.f64122er;
        if (entityResolver != null) {
            try {
                return entityResolver.resolveEntity(str, str2);
            } catch (IOException unused) {
                System.out.println("resolveEntity threw IOException!");
            }
        }
        return null;
    }

    public void setContentHandler(ContentHandler contentHandler) {
        this.f64121ch = contentHandler;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.f64122er = entityResolver;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.startDocument();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.startElement(str, str2, str3, attributes);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        ContentHandler contentHandler = this.f64121ch;
        if (contentHandler != null) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }
}
