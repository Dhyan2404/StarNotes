package javax.xml.validation;

import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes5.dex */
public abstract class ValidatorHandler implements ContentHandler {
    @Override // org.xml.sax.ContentHandler
    public abstract void characters(char[] cArr, int i, int i2) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void endDocument() throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void endElement(String str, String str2, String str3) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void endPrefixMapping(String str) throws SAXException;

    public abstract ContentHandler getContentHandler();

    public abstract ErrorHandler getErrorHandler();

    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        throw new SAXNotRecognizedException(str);
    }

    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        throw new SAXNotRecognizedException(str);
    }

    public abstract LSResourceResolver getResourceResolver();

    public abstract TypeInfoProvider getTypeInfoProvider();

    @Override // org.xml.sax.ContentHandler
    public abstract void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void processingInstruction(String str, String str2) throws SAXException;

    public abstract void setContentHandler(ContentHandler contentHandler);

    @Override // org.xml.sax.ContentHandler
    public abstract void setDocumentLocator(Locator locator);

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        throw new SAXNotRecognizedException(str);
    }

    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        throw new SAXNotRecognizedException(str);
    }

    public abstract void setResourceResolver(LSResourceResolver lSResourceResolver);

    @Override // org.xml.sax.ContentHandler
    public abstract void skippedEntity(String str) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void startDocument() throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void startPrefixMapping(String str, String str2) throws SAXException;
}
