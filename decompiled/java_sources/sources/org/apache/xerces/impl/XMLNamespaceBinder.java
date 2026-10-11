package org.apache.xerces.impl;

import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public class XMLNamespaceBinder implements XMLComponent, XMLDocumentFilter {
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: g */
    public static final String[] f112083g = {"http://xml.org/sax/features/namespaces"};

    /* renamed from: h */
    public static final Boolean[] f112084h = {null};

    /* renamed from: i */
    public static final String[] f112085i = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter"};

    /* renamed from: j */
    public static final Object[] f112086j = {null, null};

    /* renamed from: e */
    public NamespaceContext f112087e;

    /* renamed from: f */
    public final QName f112088f = new QName();
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected XMLErrorReporter fErrorReporter;
    protected boolean fNamespaces;
    protected boolean fOnlyPassPrefixMappingEvents;
    protected SymbolTable fSymbolTable;

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.characters(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.comment(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (this.fNamespaces) {
            handleStartElement(qName, xMLAttributes, augmentations, true);
            handleEndElement(qName, augmentations, true);
        } else {
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.emptyElement(qName, xMLAttributes, augmentations);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.endCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.endDocument(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (this.fNamespaces) {
            handleEndElement(qName, augmentations, false);
            return;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endElement(qName, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.endGeneralEntity(str, augmentations);
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112083g;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112084h[i];
            }
            i++;
        }
    }

    public boolean getOnlyPassPrefixMappingEvents() {
        return this.fOnlyPassPrefixMappingEvents;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112085i;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112086j[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112083g.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112085i.clone();
    }

    public void handleEndElement(QName qName, Augmentations augmentations, boolean z) throws XNIException {
        String str = qName.prefix;
        if (str == null) {
            str = XMLSymbols.EMPTY_STRING;
        }
        String uri = this.f112087e.getURI(str);
        qName.uri = uri;
        if (uri != null) {
            qName.prefix = str;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null && !this.fOnlyPassPrefixMappingEvents && !z) {
            xMLDocumentHandler.endElement(qName, augmentations);
        }
        this.f112087e.popContext();
    }

    public void handleStartElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, boolean z) throws XNIException {
        this.f112087e.pushContext();
        if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName.rawname}, (short) 2);
        }
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            String localName = xMLAttributes.getLocalName(i);
            String prefix = xMLAttributes.getPrefix(i);
            String str = XMLSymbols.PREFIX_XMLNS;
            if (prefix == str || (prefix == XMLSymbols.EMPTY_STRING && localName == str)) {
                String addSymbol = this.fSymbolTable.addSymbol(xMLAttributes.getValue(i));
                if (prefix == str && localName == str) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                if (addSymbol == NamespaceContext.XMLNS_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                if (localName == XMLSymbols.PREFIX_XML) {
                    if (addSymbol != NamespaceContext.XML_URI) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                    }
                } else if (addSymbol == NamespaceContext.XML_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                String str2 = localName != str ? localName : XMLSymbols.EMPTY_STRING;
                if (prefixBoundToNullURI(addSymbol, localName)) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "EmptyPrefixedAttName", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                } else {
                    NamespaceContext namespaceContext = this.f112087e;
                    if (addSymbol.length() == 0) {
                        addSymbol = null;
                    }
                    namespaceContext.declarePrefix(str2, addSymbol);
                }
            }
        }
        String str3 = qName.prefix;
        if (str3 == null) {
            str3 = XMLSymbols.EMPTY_STRING;
        }
        String uri = this.f112087e.getURI(str3);
        qName.uri = uri;
        if (qName.prefix == null && uri != null) {
            qName.prefix = XMLSymbols.EMPTY_STRING;
        }
        String str4 = qName.prefix;
        if (str4 != null && uri == null) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{str4, qName.rawname}, (short) 2);
        }
        for (int i2 = 0; i2 < length; i2++) {
            xMLAttributes.getName(i2, this.f112088f);
            QName qName2 = this.f112088f;
            String str5 = qName2.prefix;
            if (str5 == null) {
                str5 = XMLSymbols.EMPTY_STRING;
            }
            String str6 = qName2.rawname;
            String str7 = XMLSymbols.PREFIX_XMLNS;
            if (str6 == str7) {
                qName2.uri = this.f112087e.getURI(str7);
            } else if (str5 != XMLSymbols.EMPTY_STRING) {
                qName2.uri = this.f112087e.getURI(str5);
                if (this.f112088f.uri == null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{qName.rawname, str6, str5}, (short) 2);
                }
            }
            xMLAttributes.setName(i2, this.f112088f);
        }
        int length2 = xMLAttributes.getLength();
        for (int i3 = 0; i3 < length2 - 1; i3++) {
            String uri2 = xMLAttributes.getURI(i3);
            if (uri2 != null && uri2 != NamespaceContext.XMLNS_URI) {
                String localName2 = xMLAttributes.getLocalName(i3);
                for (int i4 = i3 + 1; i4 < length2; i4++) {
                    String localName3 = xMLAttributes.getLocalName(i4);
                    String uri3 = xMLAttributes.getURI(i4);
                    if (localName2 == localName3 && uri2 == uri3) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{qName.rawname, localName2, uri2}, (short) 2);
                    }
                }
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        if (z) {
            xMLDocumentHandler.emptyElement(qName, xMLAttributes, augmentations);
        } else {
            xMLDocumentHandler.startElement(qName, xMLAttributes, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.ignorableWhitespace(xMLString, augmentations);
    }

    public boolean prefixBoundToNullURI(String str, String str2) {
        return str == XMLSymbols.EMPTY_STRING && str2 != XMLSymbols.PREFIX_XMLNS;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        try {
            this.fNamespaces = xMLComponentManager.getFeature("http://xml.org/sax/features/namespaces");
        } catch (XMLConfigurationException unused) {
            this.fNamespaces = true;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    public void setOnlyPassPrefixMappingEvents(boolean z) {
        this.fOnlyPassPrefixMappingEvents = z;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 21 && str.endsWith("internal/symbol-table")) {
                this.fSymbolTable = (SymbolTable) obj;
            } else if (length == 23 && str.endsWith("internal/error-reporter")) {
                this.fErrorReporter = (XMLErrorReporter) obj;
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.startCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.f112087e = namespaceContext;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (this.fNamespaces) {
            handleStartElement(qName, xMLAttributes, augmentations, false);
            return;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startElement(qName, xMLAttributes, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.textDecl(str, str2, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || this.fOnlyPassPrefixMappingEvents) {
            return;
        }
        xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
    }
}
