package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Util {
    public static SAXException toSAXException(XNIException xNIException) {
        return xNIException instanceof XMLParseException ? toSAXParseException((XMLParseException) xNIException) : xNIException.getException() instanceof SAXException ? (SAXException) xNIException.getException() : new SAXException(xNIException.getMessage(), xNIException.getException());
    }

    public static SAXParseException toSAXParseException(XMLParseException xMLParseException) {
        return xMLParseException.getException() instanceof SAXParseException ? (SAXParseException) xMLParseException.getException() : new SAXParseException(xMLParseException.getMessage(), xMLParseException.getPublicId(), xMLParseException.getExpandedSystemId(), xMLParseException.getLineNumber(), xMLParseException.getColumnNumber(), xMLParseException.getException());
    }

    public static final XMLInputSource toXMLInputSource(StreamSource streamSource) {
        return streamSource.getReader() != null ? new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId(), streamSource.getReader(), (String) null) : streamSource.getInputStream() != null ? new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId(), streamSource.getInputStream(), (String) null) : new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), streamSource.getSystemId());
    }
}
