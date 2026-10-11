package com.sun.org.apache.xalan.internal.xsltc.trax;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.Locator2;

/* loaded from: classes10.dex */
public class SAX2StAXStreamWriter extends SAX2StAXBaseWriter {
    private boolean needToCallStartDocument = false;
    private XMLStreamWriter writer;

    public SAX2StAXStreamWriter() {
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        super.characters(cArr, i, i2);
        try {
            if (this.isCDATA) {
                return;
            }
            this.writer.writeCharacters(cArr, i, i2);
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        super.comment(cArr, i, i2);
        try {
            this.writer.writeComment(new String(cArr, i, i2));
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        try {
            this.writer.writeCData(this.CDATABuffer.toString());
            super.endCDATA();
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        try {
            this.writer.writeEndDocument();
            super.endDocument();
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            try {
                this.writer.writeEndElement();
            } catch (XMLStreamException e) {
                throw new SAXException(e);
            }
        } finally {
            super.endElement(str, str2, str3);
        }
    }

    public XMLStreamWriter getStreamWriter() {
        return this.writer;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        super.ignorableWhitespace(cArr, i, i2);
        try {
            this.writer.writeCharacters(cArr, i, i2);
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        super.processingInstruction(str, str2);
        try {
            this.writer.writeProcessingInstruction(str, str2);
        } catch (XMLStreamException e) {
            throw new SAXException(e);
        }
    }

    public void setStreamWriter(XMLStreamWriter xMLStreamWriter) {
        this.writer = xMLStreamWriter;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        super.startDocument();
        this.needToCallStartDocument = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.needToCallStartDocument) {
            try {
                Locator locator = this.docLocator;
                if (locator == null) {
                    this.writer.writeStartDocument();
                } else {
                    try {
                        this.writer.writeStartDocument(((Locator2) locator).getXMLVersion());
                    } catch (ClassCastException unused) {
                        this.writer.writeStartDocument();
                    }
                }
                this.needToCallStartDocument = false;
            } catch (XMLStreamException e) {
                throw new SAXException(e);
            }
        }
        try {
            try {
                String[] strArr = {null, null};
                SAX2StAXBaseWriter.parseQName(str3, strArr);
                this.writer.writeStartElement(str3);
                int length = attributes.getLength();
                for (int i = 0; i < length; i++) {
                    SAX2StAXBaseWriter.parseQName(attributes.getQName(i), strArr);
                    String str4 = strArr[0];
                    String str5 = strArr[1];
                    String qName = attributes.getQName(i);
                    String value = attributes.getValue(i);
                    String uri = attributes.getURI(i);
                    if (!"xmlns".equals(str4) && !"xmlns".equals(qName)) {
                        if (str4.length() > 0) {
                            this.writer.writeAttribute(str4, uri, str5, value);
                        } else {
                            this.writer.writeAttribute(qName, value);
                        }
                    }
                    if (str5.length() == 0) {
                        this.writer.setDefaultNamespace(value);
                    } else {
                        this.writer.setPrefix(str5, value);
                    }
                    this.writer.writeNamespace(str5, value);
                }
            } catch (XMLStreamException e2) {
                throw new SAXException(e2);
            }
        } finally {
            super.startElement(str, str2, str3, attributes);
        }
    }

    public SAX2StAXStreamWriter(XMLStreamWriter xMLStreamWriter) {
        this.writer = xMLStreamWriter;
    }
}
