package com.sun.org.apache.xalan.internal.xsltc.trax;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Namespace;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.Locator2;

/* loaded from: classes10.dex */
public class SAX2StAXEventWriter extends SAX2StAXBaseWriter {
    private XMLEventFactory eventFactory;
    private List namespaceStack;
    private boolean needToCallStartDocument;
    private XMLEventWriter writer;

    public SAX2StAXEventWriter() {
        this.namespaceStack = new ArrayList();
        this.needToCallStartDocument = false;
        this.eventFactory = XMLEventFactory.newInstance();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        super.characters(cArr, i, i2);
        try {
            if (this.isCDATA) {
                return;
            }
            this.eventFactory.setLocation(getCurrentLocation());
            this.writer.add(this.eventFactory.createCharacters(new String(cArr, i, i2)));
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        super.comment(cArr, i, i2);
        this.eventFactory.setLocation(getCurrentLocation());
        try {
            this.writer.add(this.eventFactory.createComment(new String(cArr, i, i2)));
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    public Namespace createNamespace(String str, String str2) {
        return (str == null || str.length() == 0) ? this.eventFactory.createNamespace(str2) : this.eventFactory.createNamespace(str, str2);
    }

    public void createStartEvents(Attributes attributes, Collection[] collectionArr) {
        HashMap hashMap;
        Vector vector = this.namespaces;
        List list = null;
        if (vector != null) {
            int size = vector.size();
            int i = 0;
            hashMap = null;
            while (i < size) {
                String str = (String) this.namespaces.elementAt(i);
                int i2 = i + 1;
                Namespace createNamespace = createNamespace(str, (String) this.namespaces.elementAt(i));
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(str, createNamespace);
                i = i2 + 1;
            }
        } else {
            hashMap = null;
        }
        String[] strArr = {null, null};
        int length = attributes.getLength();
        for (int i3 = 0; i3 < length; i3++) {
            SAX2StAXBaseWriter.parseQName(attributes.getQName(i3), strArr);
            String str2 = strArr[0];
            String str3 = strArr[1];
            String qName = attributes.getQName(i3);
            String value = attributes.getValue(i3);
            String uri = attributes.getURI(i3);
            if (!"xmlns".equals(qName) && !"xmlns".equals(str2)) {
                Attribute createAttribute = str2.length() > 0 ? this.eventFactory.createAttribute(str2, uri, str3, value) : this.eventFactory.createAttribute(str3, value);
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(createAttribute);
            } else if (!hashMap.containsKey(str2)) {
                hashMap.put(str2, createNamespace(str2, value));
            }
        }
        collectionArr[0] = hashMap == null ? Collections.EMPTY_LIST : hashMap.values();
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        collectionArr[1] = list;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        this.eventFactory.setLocation(getCurrentLocation());
        try {
            this.writer.add(this.eventFactory.createCData(this.CDATABuffer.toString()));
            super.endCDATA();
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.eventFactory.setLocation(getCurrentLocation());
        try {
            this.writer.add(this.eventFactory.createEndDocument());
            super.endDocument();
            this.namespaceStack.clear();
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        super.endElement(str, str2, str3);
        this.eventFactory.setLocation(getCurrentLocation());
        String[] strArr = {null, null};
        SAX2StAXBaseWriter.parseQName(str3, strArr);
        List list = this.namespaceStack;
        try {
            this.writer.add(this.eventFactory.createEndElement(strArr[0], str, strArr[1], ((Collection) list.remove(list.size() - 1)).iterator()));
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    public XMLEventFactory getEventFactory() {
        return this.eventFactory;
    }

    public XMLEventWriter getEventWriter() {
        return this.writer;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        super.ignorableWhitespace(cArr, i, i2);
        characters(cArr, i, i2);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        super.processingInstruction(str, str2);
        try {
            this.writer.add(this.eventFactory.createProcessingInstruction(str, str2));
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    public void setEventFactory(XMLEventFactory xMLEventFactory) {
        this.eventFactory = xMLEventFactory;
    }

    public void setEventWriter(XMLEventWriter xMLEventWriter) {
        this.writer = xMLEventWriter;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        super.startDocument();
        this.namespaceStack.clear();
        this.eventFactory.setLocation(getCurrentLocation());
        this.needToCallStartDocument = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.needToCallStartDocument) {
            try {
                Locator locator = this.docLocator;
                if (locator == null) {
                    this.writer.add(this.eventFactory.createStartDocument());
                } else {
                    try {
                        this.writer.add(this.eventFactory.createStartDocument(((Locator2) locator).getEncoding(), ((Locator2) this.docLocator).getXMLVersion()));
                    } catch (ClassCastException unused) {
                        this.writer.add(this.eventFactory.createStartDocument());
                    }
                }
                this.needToCallStartDocument = false;
            } catch (XMLStreamException e) {
                throw new SAXException(e);
            }
        }
        this.eventFactory.setLocation(getCurrentLocation());
        Collection[] collectionArr = {null, null};
        createStartEvents(attributes, collectionArr);
        this.namespaceStack.add(collectionArr[0]);
        try {
            try {
                String[] strArr = {null, null};
                SAX2StAXBaseWriter.parseQName(str3, strArr);
                this.writer.add(this.eventFactory.createStartElement(strArr[0], str, strArr[1], collectionArr[1].iterator(), collectionArr[0].iterator()));
            } catch (XMLStreamException e2) {
                throw new SAXException(e2);
            }
        } finally {
            super.startElement(str, str2, str3, attributes);
        }
    }

    public SAX2StAXEventWriter(XMLEventWriter xMLEventWriter) {
        this.namespaceStack = new ArrayList();
        this.needToCallStartDocument = false;
        this.writer = xMLEventWriter;
        this.eventFactory = XMLEventFactory.newInstance();
    }

    public SAX2StAXEventWriter(XMLEventWriter xMLEventWriter, XMLEventFactory xMLEventFactory) {
        this.namespaceStack = new ArrayList();
        this.needToCallStartDocument = false;
        this.writer = xMLEventWriter;
        if (xMLEventFactory != null) {
            this.eventFactory = xMLEventFactory;
        } else {
            this.eventFactory = XMLEventFactory.newInstance();
        }
    }
}
