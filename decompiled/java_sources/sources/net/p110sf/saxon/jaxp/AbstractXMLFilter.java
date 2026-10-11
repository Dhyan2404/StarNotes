package net.p110sf.saxon.jaxp;

import java.io.IOException;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public abstract class AbstractXMLFilter implements XMLFilter {

    /* renamed from: e */
    public XMLReader f100441e;

    /* renamed from: f */
    public ContentHandler f100442f;

    /* renamed from: g */
    public LexicalHandler f100443g;

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        return this.f100442f;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.f100441e.getFeature(str);
    }

    @Override // org.xml.sax.XMLFilter
    public XMLReader getParent() {
        return this.f100441e;
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) throws SAXNotRecognizedException {
        if (str.equals("http://xml.org/sax/properties/lexical-handler")) {
            return this.f100443g;
        }
        throw new SAXNotRecognizedException(str);
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        parse(new InputSource(str));
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this.f100442f = contentHandler;
        if ((contentHandler instanceof LexicalHandler) && this.f100443g == null) {
            this.f100443g = (LexicalHandler) contentHandler;
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        this.f100441e.setFeature(str, z);
    }

    @Override // org.xml.sax.XMLFilter
    public void setParent(XMLReader xMLReader) {
        this.f100441e = xMLReader;
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (!str.equals("http://xml.org/sax/properties/lexical-handler")) {
            throw new SAXNotRecognizedException(str);
        }
        if (!(obj instanceof LexicalHandler)) {
            throw new SAXNotSupportedException("Lexical Handler must be instance of org.xml.sax.ext.LexicalHandler");
        }
        this.f100443g = (LexicalHandler) obj;
    }
}
