package org.xml.sax;

/* loaded from: classes16.dex */
public interface ErrorHandler {
    void error(SAXParseException sAXParseException) throws SAXException;

    void fatalError(SAXParseException sAXParseException) throws SAXException;

    void warning(SAXParseException sAXParseException) throws SAXException;
}
