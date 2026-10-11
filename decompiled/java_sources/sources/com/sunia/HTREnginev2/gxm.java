package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.Iterator;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.apache.xerces.impl.p117xs.opti.SchemaDOMParser;
import org.apache.xerces.util.JAXPNamespaceContextWrapper;
import org.apache.xerces.util.StAXLocationWrapper;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.w3c.dom.Document;

/* loaded from: classes13.dex */
public final class gxm {

    /* renamed from: m */
    public static final int f71594m = 1024;

    /* renamed from: n */
    public static final int f71595n = 1023;

    /* renamed from: c */
    public SchemaDOMParser f71598c;

    /* renamed from: e */
    public final JAXPNamespaceContextWrapper f71600e;

    /* renamed from: f */
    public final QName f71601f;

    /* renamed from: g */
    public final QName f71602g;

    /* renamed from: h */
    public final XMLAttributesImpl f71603h;

    /* renamed from: i */
    public final XMLString f71604i;

    /* renamed from: j */
    public final ArrayList f71605j;

    /* renamed from: k */
    public final XMLStringBuffer f71606k;

    /* renamed from: l */
    public int f71607l;

    /* renamed from: a */
    public final char[] f71596a = new char[1024];

    /* renamed from: b */
    public SymbolTable f71597b = new SymbolTable();

    /* renamed from: d */
    public final StAXLocationWrapper f71599d = new StAXLocationWrapper();

    public gxm() {
        JAXPNamespaceContextWrapper jAXPNamespaceContextWrapper = new JAXPNamespaceContextWrapper(this.f71597b);
        this.f71600e = jAXPNamespaceContextWrapper;
        this.f71601f = new QName();
        this.f71602g = new QName();
        this.f71603h = new XMLAttributesImpl();
        this.f71604i = new XMLString();
        ArrayList arrayList = new ArrayList();
        this.f71605j = arrayList;
        this.f71606k = new XMLStringBuffer();
        jAXPNamespaceContextWrapper.setDeclaredPrefixes(arrayList);
    }

    /* renamed from: a */
    public final void m54370a() {
        String str;
        String str2;
        Iterator it2 = this.f71605j.iterator();
        while (it2.hasNext()) {
            String str3 = (String) it2.next();
            String uri = this.f71600e.getURI(str3);
            if (str3.length() > 0) {
                str = XMLSymbols.PREFIX_XMLNS;
                this.f71606k.clear();
                this.f71606k.append(str);
                this.f71606k.append(':');
                this.f71606k.append(str3);
                SymbolTable symbolTable = this.f71597b;
                XMLStringBuffer xMLStringBuffer = this.f71606k;
                str2 = symbolTable.addSymbol(xMLStringBuffer.f113585ch, xMLStringBuffer.offset, xMLStringBuffer.length);
            } else {
                str = XMLSymbols.EMPTY_STRING;
                str3 = XMLSymbols.PREFIX_XMLNS;
                str2 = str3;
            }
            this.f71602g.setValues(str, str3, str2, NamespaceContext.XMLNS_URI);
            XMLAttributesImpl xMLAttributesImpl = this.f71603h;
            QName qName = this.f71602g;
            String str4 = XMLSymbols.fCDATASymbol;
            if (uri == null) {
                uri = XMLSymbols.EMPTY_STRING;
            }
            xMLAttributesImpl.addAttribute(qName, str4, uri);
        }
    }

    /* renamed from: b */
    public final void m54371b(Iterator it2) {
        this.f71605j.clear();
        while (it2.hasNext()) {
            String prefix = ((Namespace) it2.next()).getPrefix();
            ArrayList arrayList = this.f71605j;
            if (prefix == null) {
                prefix = "";
            }
            arrayList.add(prefix);
        }
    }

    /* renamed from: c */
    public final void m54372c(XMLStreamReader xMLStreamReader) {
        this.f71605j.clear();
        int namespaceCount = xMLStreamReader.getNamespaceCount();
        for (int i = 0; i < namespaceCount; i++) {
            String namespacePrefix = xMLStreamReader.getNamespacePrefix(i);
            ArrayList arrayList = this.f71605j;
            if (namespacePrefix == null) {
                namespacePrefix = "";
            }
            arrayList.add(namespacePrefix);
        }
    }

    /* renamed from: d */
    public final void m54373d(EndElement endElement) {
        m54371b(endElement.getNamespaces());
    }

    /* renamed from: e */
    public final void m54374e(StartElement startElement) {
        m54371b(startElement.getNamespaces());
    }

    /* renamed from: f */
    public final void m54375f(String str) {
        int length = str.length();
        char[] cArr = this.f71596a;
        if (cArr.length < length) {
            cArr = str.toCharArray();
        } else {
            str.getChars(0, length, cArr, 0);
        }
        this.f71604i.setValues(cArr, 0, length);
    }

    /* renamed from: g */
    public final void m54376g(QName qName, String str, String str2, String str3) {
        String str4;
        String addSymbol = (str == null || str.length() <= 0) ? null : this.f71597b.addSymbol(str);
        String addSymbol2 = str2 != null ? this.f71597b.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
        String addSymbol3 = (str3 == null || str3.length() <= 0) ? XMLSymbols.EMPTY_STRING : this.f71597b.addSymbol(str3);
        if (addSymbol3 != XMLSymbols.EMPTY_STRING) {
            this.f71606k.clear();
            this.f71606k.append(addSymbol3);
            this.f71606k.append(':');
            this.f71606k.append(addSymbol2);
            SymbolTable symbolTable = this.f71597b;
            XMLStringBuffer xMLStringBuffer = this.f71606k;
            str4 = symbolTable.addSymbol(xMLStringBuffer.f113585ch, xMLStringBuffer.offset, xMLStringBuffer.length);
        } else {
            str4 = addSymbol2;
        }
        qName.setValues(addSymbol3, addSymbol2, str4, addSymbol);
    }

    /* renamed from: h */
    public final void m54377h(QName qName, javax.xml.namespace.QName qName2) {
        m54376g(qName, qName2.getNamespaceURI(), qName2.getLocalPart(), qName2.getPrefix());
    }

    /* renamed from: i */
    public final void m54378i(XMLStreamReader xMLStreamReader) {
        this.f71603h.removeAllAttributes();
        int attributeCount = xMLStreamReader.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            m54376g(this.f71602g, xMLStreamReader.getAttributeNamespace(i), xMLStreamReader.getAttributeLocalName(i), xMLStreamReader.getAttributePrefix(i));
            String attributeType = xMLStreamReader.getAttributeType(i);
            XMLAttributesImpl xMLAttributesImpl = this.f71603h;
            QName qName = this.f71602g;
            if (attributeType == null) {
                attributeType = XMLSymbols.fCDATASymbol;
            }
            xMLAttributesImpl.addAttributeNS(qName, attributeType, xMLStreamReader.getAttributeValue(i));
            this.f71603h.setSpecified(i, xMLStreamReader.isAttributeSpecified(i));
        }
    }

    /* renamed from: j */
    public final void m54379j(StartElement startElement) {
        this.f71603h.removeAllAttributes();
        Iterator attributes = startElement.getAttributes();
        while (attributes.hasNext()) {
            Attribute attribute = (Attribute) attributes.next();
            m54377h(this.f71602g, attribute.getName());
            String dTDType = attribute.getDTDType();
            int length = this.f71603h.getLength();
            XMLAttributesImpl xMLAttributesImpl = this.f71603h;
            QName qName = this.f71602g;
            if (dTDType == null) {
                dTDType = XMLSymbols.fCDATASymbol;
            }
            xMLAttributesImpl.addAttributeNS(qName, dTDType, attribute.getValue());
            this.f71603h.setSpecified(length, attribute.isSpecified());
        }
    }

    /* renamed from: k */
    public Document m54380k() {
        return this.f71598c.getDocument();
    }

    /* renamed from: l */
    public void m54381l(XMLEventReader xMLEventReader) throws XMLStreamException, XNIException {
        XMLEvent peek = xMLEventReader.peek();
        if (peek != null) {
            int eventType = peek.getEventType();
            if (eventType != 7 && eventType != 1) {
                throw new XMLStreamException();
            }
            this.f71599d.setLocation(peek.getLocation());
            this.f71598c.startDocument(this.f71599d, null, this.f71600e, null);
            while (xMLEventReader.hasNext()) {
                XMLEvent nextEvent = xMLEventReader.nextEvent();
                int eventType2 = nextEvent.getEventType();
                if (eventType2 == 1) {
                    this.f71607l++;
                    StartElement asStartElement = nextEvent.asStartElement();
                    m54377h(this.f71601f, asStartElement.getName());
                    this.f71599d.setLocation(asStartElement.getLocation());
                    this.f71600e.setNamespaceContext(asStartElement.getNamespaceContext());
                    m54379j(asStartElement);
                    m54374e(asStartElement);
                    m54370a();
                    this.f71600e.pushContext();
                    this.f71598c.startElement(this.f71601f, this.f71603h, null);
                } else if (eventType2 == 2) {
                    EndElement asEndElement = nextEvent.asEndElement();
                    m54377h(this.f71601f, asEndElement.getName());
                    m54373d(asEndElement);
                    this.f71599d.setLocation(asEndElement.getLocation());
                    this.f71598c.endElement(this.f71601f, null);
                    this.f71600e.popContext();
                    int i = this.f71607l - 1;
                    this.f71607l = i;
                    if (i <= 0) {
                        break;
                    }
                } else if (eventType2 == 3) {
                    ProcessingInstruction processingInstruction = (ProcessingInstruction) nextEvent;
                    m54375f(processingInstruction.getData());
                    this.f71598c.processingInstruction(processingInstruction.getTarget(), this.f71604i, null);
                } else if (eventType2 == 4) {
                    m54384o(nextEvent.asCharacters().getData(), false);
                } else if (eventType2 == 6) {
                    m54384o(nextEvent.asCharacters().getData(), true);
                } else if (eventType2 == 7) {
                    this.f71607l++;
                } else if (eventType2 == 12) {
                    this.f71598c.startCDATA(null);
                    m54384o(nextEvent.asCharacters().getData(), false);
                    this.f71598c.endCDATA(null);
                }
            }
            this.f71599d.setLocation(null);
            this.f71600e.setNamespaceContext(null);
            this.f71598c.endDocument(null);
        }
    }

    /* renamed from: m */
    public void m54382m(XMLStreamReader xMLStreamReader) throws XMLStreamException, XNIException {
        if (xMLStreamReader.hasNext()) {
            int eventType = xMLStreamReader.getEventType();
            if (eventType != 7 && eventType != 1) {
                throw new XMLStreamException();
            }
            this.f71599d.setLocation(xMLStreamReader.getLocation());
            this.f71598c.startDocument(this.f71599d, null, this.f71600e, null);
            boolean z = true;
            while (xMLStreamReader.hasNext()) {
                if (z) {
                    z = false;
                } else {
                    eventType = xMLStreamReader.next();
                }
                if (eventType == 1) {
                    this.f71607l++;
                    this.f71599d.setLocation(xMLStreamReader.getLocation());
                    this.f71600e.setNamespaceContext(xMLStreamReader.getNamespaceContext());
                    m54376g(this.f71601f, xMLStreamReader.getNamespaceURI(), xMLStreamReader.getLocalName(), xMLStreamReader.getPrefix());
                    m54378i(xMLStreamReader);
                    m54372c(xMLStreamReader);
                    m54370a();
                    this.f71600e.pushContext();
                    this.f71598c.startElement(this.f71601f, this.f71603h, null);
                } else if (eventType == 2) {
                    this.f71599d.setLocation(xMLStreamReader.getLocation());
                    this.f71600e.setNamespaceContext(xMLStreamReader.getNamespaceContext());
                    m54376g(this.f71601f, xMLStreamReader.getNamespaceURI(), xMLStreamReader.getLocalName(), xMLStreamReader.getPrefix());
                    m54372c(xMLStreamReader);
                    this.f71598c.endElement(this.f71601f, null);
                    this.f71600e.popContext();
                    int i = this.f71607l - 1;
                    this.f71607l = i;
                    if (i <= 0) {
                        break;
                    }
                } else if (eventType == 3) {
                    m54375f(xMLStreamReader.getPIData());
                    this.f71598c.processingInstruction(xMLStreamReader.getPITarget(), this.f71604i, null);
                } else if (eventType == 4) {
                    this.f71604i.setValues(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength());
                    this.f71598c.characters(this.f71604i, null);
                } else if (eventType == 6) {
                    this.f71604i.setValues(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength());
                    this.f71598c.ignorableWhitespace(this.f71604i, null);
                } else if (eventType == 7) {
                    this.f71607l++;
                } else if (eventType == 12) {
                    this.f71598c.startCDATA(null);
                    this.f71604i.setValues(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength());
                    this.f71598c.characters(this.f71604i, null);
                    this.f71598c.endCDATA(null);
                }
            }
            this.f71599d.setLocation(null);
            this.f71600e.setNamespaceContext(null);
            this.f71598c.endDocument(null);
        }
    }

    /* renamed from: n */
    public void m54383n(SchemaDOMParser schemaDOMParser, SymbolTable symbolTable) {
        this.f71598c = schemaDOMParser;
        this.f71597b = symbolTable;
        this.f71600e.setSymbolTable(symbolTable);
        this.f71600e.reset();
    }

    /* renamed from: o */
    public final void m54384o(String str, boolean z) {
        if (str != null) {
            int length = str.length();
            int i = length & 1023;
            if (i > 0) {
                str.getChars(0, i, this.f71596a, 0);
                this.f71604i.setValues(this.f71596a, 0, i);
                SchemaDOMParser schemaDOMParser = this.f71598c;
                XMLString xMLString = this.f71604i;
                if (z) {
                    schemaDOMParser.ignorableWhitespace(xMLString, null);
                } else {
                    schemaDOMParser.characters(xMLString, null);
                }
            }
            while (i < length) {
                int i2 = i + 1024;
                str.getChars(i, i2, this.f71596a, 0);
                this.f71604i.setValues(this.f71596a, 0, 1024);
                SchemaDOMParser schemaDOMParser2 = this.f71598c;
                XMLString xMLString2 = this.f71604i;
                if (z) {
                    schemaDOMParser2.ignorableWhitespace(xMLString2, null);
                } else {
                    schemaDOMParser2.characters(xMLString2, null);
                }
                i = i2;
            }
        }
    }
}
