package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.opti.SchemaDOMParser;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SAXLocatorWrapper;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLParseException;
import org.w3c.dom.Document;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.LocatorImpl;

/* loaded from: classes13.dex */
public final class a2m implements ContentHandler {

    /* renamed from: e */
    public SymbolTable f64249e;

    /* renamed from: f */
    public SchemaDOMParser f64250f;

    /* renamed from: i */
    public boolean f64253i;

    /* renamed from: g */
    public final SAXLocatorWrapper f64251g = new SAXLocatorWrapper();

    /* renamed from: h */
    public NamespaceSupport f64252h = new NamespaceSupport();

    /* renamed from: j */
    public boolean f64254j = false;

    /* renamed from: k */
    public boolean f64255k = false;

    /* renamed from: l */
    public final QName f64256l = new QName();

    /* renamed from: m */
    public final QName f64257m = new QName();

    /* renamed from: n */
    public final XMLAttributesImpl f64258n = new XMLAttributesImpl();

    /* renamed from: o */
    public final XMLString f64259o = new XMLString();

    /* renamed from: p */
    public final XMLStringBuffer f64260p = new XMLStringBuffer();

    /* renamed from: b */
    public static void m52934b(XNIException xNIException) throws SAXException {
        Exception exception = xNIException.getException();
        if (exception == null) {
            throw new SAXException(xNIException.getMessage());
        }
        if (!(exception instanceof SAXException)) {
            throw new SAXException(exception);
        }
        throw ((SAXException) exception);
    }

    /* renamed from: c */
    public static void m52935c(XMLParseException xMLParseException) throws SAXException {
        Exception exception = xMLParseException.getException();
        if (exception != null) {
            if (!(exception instanceof SAXException)) {
                throw new SAXException(exception);
            }
            throw ((SAXException) exception);
        }
        LocatorImpl locatorImpl = new LocatorImpl();
        locatorImpl.setPublicId(xMLParseException.getPublicId());
        locatorImpl.setSystemId(xMLParseException.getExpandedSystemId());
        locatorImpl.setLineNumber(xMLParseException.getLineNumber());
        locatorImpl.setColumnNumber(xMLParseException.getColumnNumber());
        throw new SAXParseException(xMLParseException.getMessage(), locatorImpl);
    }

    /* renamed from: a */
    public final void m52936a(int i) {
        String str;
        String str2;
        for (int i2 = 0; i2 < i; i2++) {
            String declaredPrefixAt = this.f64252h.getDeclaredPrefixAt(i2);
            String uri = this.f64252h.getURI(declaredPrefixAt);
            if (declaredPrefixAt.length() > 0) {
                str = XMLSymbols.PREFIX_XMLNS;
                this.f64260p.clear();
                this.f64260p.append(str);
                this.f64260p.append(':');
                this.f64260p.append(declaredPrefixAt);
                SymbolTable symbolTable = this.f64249e;
                XMLStringBuffer xMLStringBuffer = this.f64260p;
                str2 = symbolTable.addSymbol(xMLStringBuffer.f113585ch, xMLStringBuffer.offset, xMLStringBuffer.length);
            } else {
                str = XMLSymbols.EMPTY_STRING;
                declaredPrefixAt = XMLSymbols.PREFIX_XMLNS;
                str2 = declaredPrefixAt;
            }
            this.f64257m.setValues(str, declaredPrefixAt, str2, NamespaceContext.XMLNS_URI);
            XMLAttributesImpl xMLAttributesImpl = this.f64258n;
            QName qName = this.f64257m;
            String str3 = XMLSymbols.fCDATASymbol;
            if (uri == null) {
                uri = XMLSymbols.EMPTY_STRING;
            }
            xMLAttributesImpl.addAttribute(qName, str3, uri);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.f64259o.setValues(cArr, i, i2);
            this.f64250f.characters(this.f64259o, null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    /* renamed from: d */
    public final void m52937d(QName qName, String str, String str2, String str3) {
        String str4;
        String str5 = null;
        if (this.f64255k) {
            if (str != null && str.length() == 0) {
                str = null;
            }
            if (str2 == null) {
                str2 = XMLSymbols.EMPTY_STRING;
            }
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            str5 = str;
            str4 = str2;
        } else {
            if (str != null && str.length() > 0) {
                str5 = this.f64249e.addSymbol(str);
            }
            str4 = str2 != null ? this.f64249e.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
            str3 = str3 != null ? this.f64249e.addSymbol(str3) : XMLSymbols.EMPTY_STRING;
        }
        String str6 = XMLSymbols.EMPTY_STRING;
        int indexOf = str3.indexOf(58);
        if (indexOf != -1) {
            String addSymbol = this.f64249e.addSymbol(str3.substring(0, indexOf));
            if (str4 == str6) {
                str4 = this.f64249e.addSymbol(str3.substring(indexOf + 1));
            }
            str6 = addSymbol;
        } else if (str4 == str6) {
            str4 = str3;
        }
        qName.setValues(str6, str4, str3, str5);
    }

    /* renamed from: e */
    public final void m52938e(Attributes attributes) {
        this.f64258n.removeAllAttributes();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            m52937d(this.f64257m, attributes.getURI(i), attributes.getLocalName(i), attributes.getQName(i));
            String type = attributes.getType(i);
            XMLAttributesImpl xMLAttributesImpl = this.f64258n;
            QName qName = this.f64257m;
            if (type == null) {
                type = XMLSymbols.fCDATASymbol;
            }
            xMLAttributesImpl.addAttributeNS(qName, type, attributes.getValue(i));
            this.f64258n.setSpecified(i, true);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.f64251g.setLocator(null);
        try {
            this.f64250f.endDocument(null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.apache.xerces.util.NamespaceSupport] */
    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        m52937d(this.f64256l, str, str2, str3);
        try {
            try {
                this.f64250f.endElement(this.f64256l, null);
            } catch (XMLParseException e) {
                m52935c(e);
            } catch (XNIException e2) {
                m52934b(e2);
            }
        } finally {
            this.f64252h.popContext();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    /* renamed from: f */
    public Document m52939f() {
        return this.f64250f.getDocument();
    }

    /* renamed from: g */
    public void m52940g(SchemaDOMParser schemaDOMParser, SymbolTable symbolTable, boolean z, boolean z2) {
        this.f64250f = schemaDOMParser;
        this.f64249e = symbolTable;
        this.f64254j = z;
        this.f64255k = z2;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.f64259o.setValues(cArr, i, i2);
            this.f64250f.ignorableWhitespace(this.f64259o, null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        try {
            this.f64259o.setValues(str2.toCharArray(), 0, str2.length());
            this.f64250f.processingInstruction(str, this.f64259o, null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.f64251g.setLocator(locator);
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.f64253i = true;
        this.f64252h.reset();
        try {
            this.f64250f.startDocument(this.f64251g, null, this.f64252h, null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int declaredPrefixCount;
        if (this.f64253i) {
            this.f64252h.pushContext();
        }
        this.f64253i = true;
        m52937d(this.f64256l, str, str2, str3);
        m52938e(attributes);
        if (!this.f64254j && (declaredPrefixCount = this.f64252h.getDeclaredPrefixCount()) > 0) {
            m52936a(declaredPrefixCount);
        }
        try {
            this.f64250f.startElement(this.f64256l, this.f64258n, null);
        } catch (XMLParseException e) {
            m52935c(e);
        } catch (XNIException e2) {
            m52934b(e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        if (r4.length() == 0) goto L19;
     */
    @Override // org.xml.sax.ContentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startPrefixMapping(java.lang.String r3, java.lang.String r4) throws org.xml.sax.SAXException {
        /*
            r2 = this;
            boolean r0 = r2.f64253i
            if (r0 == 0) goto Lc
            r0 = 0
            r2.f64253i = r0
            org.apache.xerces.util.NamespaceSupport r0 = r2.f64252h
            r0.pushContext()
        Lc:
            boolean r0 = r2.f64255k
            r1 = 0
            if (r0 != 0) goto L2b
            if (r3 == 0) goto L1a
            org.apache.xerces.util.SymbolTable r0 = r2.f64249e
            java.lang.String r3 = r0.addSymbol(r3)
            goto L1c
        L1a:
            java.lang.String r3 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
        L1c:
            if (r4 == 0) goto L37
            int r0 = r4.length()
            if (r0 <= 0) goto L37
            org.apache.xerces.util.SymbolTable r0 = r2.f64249e
            java.lang.String r4 = r0.addSymbol(r4)
            goto L38
        L2b:
            if (r3 != 0) goto L2f
            java.lang.String r3 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
        L2f:
            if (r4 == 0) goto L38
            int r0 = r4.length()
            if (r0 != 0) goto L38
        L37:
            r4 = r1
        L38:
            org.apache.xerces.util.NamespaceSupport r2 = r2.f64252h
            r2.declarePrefix(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.a2m.startPrefixMapping(java.lang.String, java.lang.String):void");
    }
}
