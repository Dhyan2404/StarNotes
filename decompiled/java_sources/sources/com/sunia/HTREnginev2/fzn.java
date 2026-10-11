package com.sunia.HTREnginev2;

import javax.xml.transform.stream.StreamSource;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes13.dex */
public final class fzn {
    /* renamed from: a */
    public static SAXException m54211a(XNIException xNIException) {
        return xNIException instanceof XMLParseException ? m54212b((XMLParseException) xNIException) : xNIException.getException() instanceof SAXException ? (SAXException) xNIException.getException() : new SAXException(xNIException.getMessage(), xNIException.getException());
    }

    /* renamed from: b */
    public static SAXParseException m54212b(XMLParseException xMLParseException) {
        return xMLParseException.getException() instanceof SAXParseException ? (SAXParseException) xMLParseException.getException() : new SAXParseException(xMLParseException.getMessage(), xMLParseException.getPublicId(), xMLParseException.getExpandedSystemId(), xMLParseException.getLineNumber(), xMLParseException.getColumnNumber(), xMLParseException.getException());
    }

    /* renamed from: c */
    public static final XMLInputSource m54213c(StreamSource streamSource) {
        return streamSource.getReader() != null ? new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId(), streamSource.getReader(), (String) null) : streamSource.getInputStream() != null ? new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId(), streamSource.getInputStream(), (String) null) : new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId());
    }
}
