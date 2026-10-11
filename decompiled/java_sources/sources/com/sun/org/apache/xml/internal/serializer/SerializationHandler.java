package com.sun.org.apache.xml.internal.serializer;

import java.io.IOException;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.Transformer;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;

/* loaded from: classes10.dex */
public interface SerializationHandler extends ExtendedContentHandler, ExtendedLexicalHandler, XSLOutputAttributes, DeclHandler, DTDHandler, ErrorHandler, DOMSerializer, Serializer {
    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void addAttribute(String str, String str2);

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void addAttribute(String str, String str2, String str3, String str4, String str5, boolean z) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void characters(String str) throws SAXException;

    void close();

    /* synthetic */ void comment(String str) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void endElement(String str) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void entityReference(String str) throws SAXException;

    void flushPending() throws SAXException;

    /* synthetic */ String getEncoding();

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ NamespaceMappings getNamespaceMappings();

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ String getNamespaceURIFromPrefix(String str);

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ String getPrefix(String str);

    Transformer getTransformer();

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void namespaceAfterStartElement(String str, String str2) throws SAXException;

    void serialize(Node node) throws IOException;

    /* synthetic */ void setCdataSectionElements(Vector vector);

    void setContentHandler(ContentHandler contentHandler);

    void setDTDEntityExpansion(boolean z);

    /* synthetic */ void setDoctype(String str, String str2);

    /* synthetic */ void setDoctypePublic(String str);

    /* synthetic */ void setDoctypeSystem(String str);

    /* synthetic */ void setEncoding(String str);

    boolean setEscaping(boolean z) throws SAXException;

    /* synthetic */ void setIndent(boolean z);

    void setIndentAmount(int i);

    /* synthetic */ void setMediaType(String str);

    void setNamespaceMappings(NamespaceMappings namespaceMappings);

    /* synthetic */ void setOmitXMLDeclaration(boolean z);

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void setSourceLocator(SourceLocator sourceLocator);

    /* synthetic */ void setStandalone(String str);

    void setTransformer(Transformer transformer);

    /* synthetic */ void setVersion(String str);

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void startElement(String str) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ void startElement(String str, String str2, String str3) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    /* synthetic */ boolean startPrefixMapping(String str, String str2, boolean z) throws SAXException;
}
