package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.opti.SchemaDOMParser;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SAXLocatorWrapper;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import org.w3c.dom.Document;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.LocatorImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class SchemaContentHandler implements ContentHandler {
    private boolean fNeedPushNSContext;
    private SchemaDOMParser fSchemaDOMParser;
    private SymbolTable fSymbolTable;
    private final SAXLocatorWrapper fSAXLocatorWrapper = new SAXLocatorWrapper();
    private NamespaceSupport fNamespaceContext = new NamespaceSupport();
    private boolean fNamespacePrefixes = false;
    private boolean fStringsInternalized = false;
    private final QName fElementQName = new QName();
    private final QName fAttributeQName = new QName();
    private final XMLAttributesImpl fAttributes = new XMLAttributesImpl();
    private final XMLString fTempString = new XMLString();

    private void addNamespaceDeclarations(int i) {
        String str;
        String str2;
        for (int i2 = 0; i2 < i; i2++) {
            String declaredPrefixAt = this.fNamespaceContext.getDeclaredPrefixAt(i2);
            String uri = this.fNamespaceContext.getURI(declaredPrefixAt);
            if (declaredPrefixAt.length() > 0) {
                str = XMLSymbols.PREFIX_XMLNS;
                str2 = this.fSymbolTable.addSymbol(str + ":" + declaredPrefixAt);
            } else {
                str = XMLSymbols.EMPTY_STRING;
                declaredPrefixAt = XMLSymbols.PREFIX_XMLNS;
                str2 = declaredPrefixAt;
            }
            this.fAttributeQName.setValues(str, declaredPrefixAt, str2, NamespaceContext.XMLNS_URI);
            this.fAttributes.addAttribute(this.fAttributeQName, XMLSymbols.fCDATASymbol, uri);
        }
    }

    public static void convertToSAXException(XNIException xNIException) throws SAXException {
        Exception exception = xNIException.getException();
        if (exception == null) {
            throw new SAXException(xNIException.getMessage());
        }
        if (!(exception instanceof SAXException)) {
            throw new SAXException(exception);
        }
        throw ((SAXException) exception);
    }

    public static void convertToSAXParseException(XMLParseException xMLParseException) throws SAXException {
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

    private void fillQName(QName qName, String str, String str2, String str3) {
        String str4;
        String str5 = null;
        if (this.fStringsInternalized) {
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
                str5 = this.fSymbolTable.addSymbol(str);
            }
            str4 = str2 != null ? this.fSymbolTable.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
            str3 = str3 != null ? this.fSymbolTable.addSymbol(str3) : XMLSymbols.EMPTY_STRING;
        }
        String str6 = XMLSymbols.EMPTY_STRING;
        int indexOf = str3.indexOf(58);
        if (indexOf != -1) {
            String addSymbol = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
            if (str4 == str6) {
                str4 = this.fSymbolTable.addSymbol(str3.substring(indexOf + 1));
            }
            str6 = addSymbol;
        } else if (str4 == str6) {
            str4 = str3;
        }
        qName.setValues(str6, str4, str3, str5);
    }

    private void fillXMLAttributes(Attributes attributes) {
        this.fAttributes.removeAllAttributes();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            fillQName(this.fAttributeQName, attributes.getURI(i), attributes.getLocalName(i), attributes.getQName(i));
            String type = attributes.getType(i);
            XMLAttributesImpl xMLAttributesImpl = this.fAttributes;
            QName qName = this.fAttributeQName;
            if (type == null) {
                type = XMLSymbols.fCDATASymbol;
            }
            xMLAttributesImpl.addAttributeNS(qName, type, attributes.getValue(i));
            this.fAttributes.setSpecified(i, true);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.fTempString.setValues(cArr, i, i2);
            this.fSchemaDOMParser.characters(this.fTempString, null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.fSAXLocatorWrapper.setLocator(null);
        try {
            this.fSchemaDOMParser.endDocument(null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.sun.org.apache.xerces.internal.util.NamespaceSupport] */
    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        fillQName(this.fElementQName, str, str2, str3);
        try {
            try {
                this.fSchemaDOMParser.endElement(this.fElementQName, null);
            } catch (XMLParseException e) {
                convertToSAXParseException(e);
            } catch (XNIException e2) {
                convertToSAXException(e2);
            }
        } finally {
            this.fNamespaceContext.popContext();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    public Document getDocument() {
        return this.fSchemaDOMParser.getDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.fTempString.setValues(cArr, i, i2);
            this.fSchemaDOMParser.ignorableWhitespace(this.fTempString, null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        try {
            this.fTempString.setValues(str2.toCharArray(), 0, str2.length());
            this.fSchemaDOMParser.processingInstruction(str, this.fTempString, null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
        }
    }

    public void reset(SchemaDOMParser schemaDOMParser, SymbolTable symbolTable, boolean z, boolean z2) {
        this.fSchemaDOMParser = schemaDOMParser;
        this.fSymbolTable = symbolTable;
        this.fNamespacePrefixes = z;
        this.fStringsInternalized = z2;
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.fSAXLocatorWrapper.setLocator(locator);
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.fNeedPushNSContext = true;
        try {
            this.fSchemaDOMParser.startDocument(this.fSAXLocatorWrapper, null, this.fNamespaceContext, null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int declaredPrefixCount;
        if (this.fNeedPushNSContext) {
            this.fNamespaceContext.pushContext();
        }
        this.fNeedPushNSContext = true;
        fillQName(this.fElementQName, str, str2, str3);
        fillXMLAttributes(attributes);
        if (!this.fNamespacePrefixes && (declaredPrefixCount = this.fNamespaceContext.getDeclaredPrefixCount()) > 0) {
            addNamespaceDeclarations(declaredPrefixCount);
        }
        try {
            this.fSchemaDOMParser.startElement(this.fElementQName, this.fAttributes, null);
        } catch (XMLParseException e) {
            convertToSAXParseException(e);
        } catch (XNIException e2) {
            convertToSAXException(e2);
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
            boolean r0 = r2.fNeedPushNSContext
            if (r0 == 0) goto Lc
            r0 = 0
            r2.fNeedPushNSContext = r0
            com.sun.org.apache.xerces.internal.util.NamespaceSupport r0 = r2.fNamespaceContext
            r0.pushContext()
        Lc:
            boolean r0 = r2.fStringsInternalized
            r1 = 0
            if (r0 != 0) goto L2b
            if (r3 == 0) goto L1a
            com.sun.org.apache.xerces.internal.util.SymbolTable r0 = r2.fSymbolTable
            java.lang.String r3 = r0.addSymbol(r3)
            goto L1c
        L1a:
            java.lang.String r3 = com.sun.org.apache.xerces.internal.util.XMLSymbols.EMPTY_STRING
        L1c:
            if (r4 == 0) goto L37
            int r0 = r4.length()
            if (r0 <= 0) goto L37
            com.sun.org.apache.xerces.internal.util.SymbolTable r0 = r2.fSymbolTable
            java.lang.String r4 = r0.addSymbol(r4)
            goto L38
        L2b:
            if (r3 != 0) goto L2f
            java.lang.String r3 = com.sun.org.apache.xerces.internal.util.XMLSymbols.EMPTY_STRING
        L2f:
            if (r4 == 0) goto L38
            int r0 = r4.length()
            if (r0 != 0) goto L38
        L37:
            r4 = r1
        L38:
            com.sun.org.apache.xerces.internal.util.NamespaceSupport r2 = r2.fNamespaceContext
            r2.declarePrefix(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.SchemaContentHandler.startPrefixMapping(java.lang.String, java.lang.String):void");
    }
}
