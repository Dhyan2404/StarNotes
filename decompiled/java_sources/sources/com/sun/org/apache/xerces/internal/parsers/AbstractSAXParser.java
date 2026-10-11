package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.PSVIProvider;
import com.sun.org.apache.xerces.internal.util.EntityResolver2Wrapper;
import com.sun.org.apache.xerces.internal.util.EntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import java.util.Locale;
import org.xml.sax.AttributeList;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.Attributes2;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.EntityResolver2;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.ext.Locator2;
import org.xml.sax.helpers.LocatorImpl;

/* loaded from: classes10.dex */
public abstract class AbstractSAXParser extends AbstractXMLDocumentParser implements PSVIProvider, Parser, XMLReader {
    protected static final String ALLOW_UE_AND_NOTATION_EVENTS = "http://xml.org/sax/features/allow-dtd-events-after-endDTD";
    private static final int BUFFER_SIZE = 20;
    protected static final String LEXICAL_HANDLER = "http://xml.org/sax/properties/lexical-handler";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    private final AttributesProxy fAttributesProxy;
    private Augmentations fAugmentations;
    private char[] fCharBuffer;
    protected ContentHandler fContentHandler;
    protected DTDHandler fDTDHandler;
    protected DeclHandler fDeclHandler;
    protected SymbolHash fDeclaredAttrs;
    protected DocumentHandler fDocumentHandler;
    protected LexicalHandler fLexicalHandler;
    protected boolean fLexicalHandlerParameterEntities;
    protected NamespaceContext fNamespaceContext;
    protected boolean fNamespacePrefixes;
    protected boolean fNamespaces;
    protected boolean fParseInProgress;
    protected QName fQName;
    protected boolean fResolveDTDURIs;
    protected boolean fStandalone;
    protected boolean fUseEntityResolver2;
    protected String fVersion;
    protected boolean fXMLNSURIs;
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/namespaces", "http://xml.org/sax/features/namespace-prefixes", "http://xml.org/sax/features/string-interning"};
    protected static final String DECLARATION_HANDLER = "http://xml.org/sax/properties/declaration-handler";
    protected static final String DOM_NODE = "http://xml.org/sax/properties/dom-node";
    private static final String[] RECOGNIZED_PROPERTIES = {"http://xml.org/sax/properties/lexical-handler", DECLARATION_HANDLER, DOM_NODE};

    /* loaded from: classes10.dex */
    public static final class AttributesProxy implements AttributeList, Attributes2 {
        protected XMLAttributes fAttributes;

        @Override // org.xml.sax.Attributes
        public int getIndex(String str) {
            return this.fAttributes.getIndex(str);
        }

        @Override // org.xml.sax.AttributeList
        public int getLength() {
            return this.fAttributes.getLength();
        }

        @Override // org.xml.sax.Attributes
        public String getLocalName(int i) {
            return this.fAttributes.getLocalName(i);
        }

        @Override // org.xml.sax.AttributeList
        public String getName(int i) {
            return this.fAttributes.getQName(i);
        }

        @Override // org.xml.sax.Attributes
        public String getQName(int i) {
            return this.fAttributes.getQName(i);
        }

        @Override // org.xml.sax.AttributeList
        public String getType(int i) {
            return this.fAttributes.getType(i);
        }

        @Override // org.xml.sax.Attributes
        public String getURI(int i) {
            String uri = this.fAttributes.getURI(i);
            return uri != null ? uri : "";
        }

        @Override // org.xml.sax.AttributeList
        public String getValue(int i) {
            return this.fAttributes.getValue(i);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isDeclared(int i) {
            if (i >= 0 && i < this.fAttributes.getLength()) {
                return Boolean.TRUE.equals(this.fAttributes.getAugmentations(i).getItem("ATTRIBUTE_DECLARED"));
            }
            throw new ArrayIndexOutOfBoundsException(i);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isSpecified(int i) {
            if (i >= 0 && i < this.fAttributes.getLength()) {
                return this.fAttributes.isSpecified(i);
            }
            throw new ArrayIndexOutOfBoundsException(i);
        }

        public void setAttributes(XMLAttributes xMLAttributes) {
            this.fAttributes = xMLAttributes;
        }

        @Override // org.xml.sax.Attributes
        public int getIndex(String str, String str2) {
            boolean equals = str.equals("");
            XMLAttributes xMLAttributes = this.fAttributes;
            if (equals) {
                str = null;
            }
            return xMLAttributes.getIndex(str, str2);
        }

        @Override // org.xml.sax.AttributeList
        public String getType(String str) {
            return this.fAttributes.getType(str);
        }

        @Override // org.xml.sax.AttributeList
        public String getValue(String str) {
            return this.fAttributes.getValue(str);
        }

        @Override // org.xml.sax.Attributes
        public String getType(String str, String str2) {
            boolean equals = str.equals("");
            XMLAttributes xMLAttributes = this.fAttributes;
            if (equals) {
                str = null;
            }
            return xMLAttributes.getType(str, str2);
        }

        @Override // org.xml.sax.Attributes
        public String getValue(String str, String str2) {
            boolean equals = str.equals("");
            XMLAttributes xMLAttributes = this.fAttributes;
            if (equals) {
                str = null;
            }
            return xMLAttributes.getValue(str, str2);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isDeclared(String str) {
            int index = getIndex(str);
            if (index != -1) {
                return Boolean.TRUE.equals(this.fAttributes.getAugmentations(index).getItem("ATTRIBUTE_DECLARED"));
            }
            throw new IllegalArgumentException(str);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isSpecified(String str) {
            int index = getIndex(str);
            if (index != -1) {
                return this.fAttributes.isSpecified(index);
            }
            throw new IllegalArgumentException(str);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isDeclared(String str, String str2) {
            int index = getIndex(str, str2);
            if (index != -1) {
                return Boolean.TRUE.equals(this.fAttributes.getAugmentations(index).getItem("ATTRIBUTE_DECLARED"));
            }
            throw new IllegalArgumentException(str2);
        }

        @Override // org.xml.sax.ext.Attributes2
        public boolean isSpecified(String str, String str2) {
            int index = getIndex(str, str2);
            if (index != -1) {
                return this.fAttributes.isSpecified(index);
            }
            throw new IllegalArgumentException(str2);
        }
    }

    /* loaded from: classes10.dex */
    public class LocatorProxy implements Locator2 {
        protected XMLLocator fLocator;

        public LocatorProxy(XMLLocator xMLLocator) {
            this.fLocator = xMLLocator;
        }

        @Override // org.xml.sax.Locator
        public int getColumnNumber() {
            return this.fLocator.getColumnNumber();
        }

        @Override // org.xml.sax.ext.Locator2
        public String getEncoding() {
            return this.fLocator.getEncoding();
        }

        @Override // org.xml.sax.Locator
        public int getLineNumber() {
            return this.fLocator.getLineNumber();
        }

        @Override // org.xml.sax.Locator
        public String getPublicId() {
            return this.fLocator.getPublicId();
        }

        @Override // org.xml.sax.Locator
        public String getSystemId() {
            return this.fLocator.getExpandedSystemId();
        }

        @Override // org.xml.sax.ext.Locator2
        public String getXMLVersion() {
            return this.fLocator.getXMLVersion();
        }
    }

    public AbstractSAXParser(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fNamespacePrefixes = false;
        this.fLexicalHandlerParameterEntities = true;
        this.fResolveDTDURIs = true;
        this.fUseEntityResolver2 = true;
        this.fXMLNSURIs = false;
        this.fQName = new QName();
        this.fParseInProgress = false;
        this.fAttributesProxy = new AttributesProxy();
        this.fAugmentations = null;
        this.fCharBuffer = new char[20];
        this.fDeclaredAttrs = null;
        xMLParserConfiguration.addRecognizedFeatures(RECOGNIZED_FEATURES);
        xMLParserConfiguration.addRecognizedProperties(RECOGNIZED_PROPERTIES);
        try {
            xMLParserConfiguration.setFeature(ALLOW_UE_AND_NOTATION_EVENTS, false);
        } catch (XMLConfigurationException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075 A[Catch: SAXException -> 0x0083, TryCatch #0 {SAXException -> 0x0083, blocks: (B:3:0x0002, B:5:0x0006, B:9:0x0020, B:11:0x002d, B:17:0x0079, B:20:0x0075, B:21:0x0038, B:23:0x0043, B:25:0x0052, B:27:0x0055, B:29:0x005f, B:31:0x0064, B:34:0x0067, B:35:0x004c), top: B:2:0x0002 }] */
    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void attributeDecl(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String[] r10, java.lang.String r11, com.sun.org.apache.xerces.internal.xni.XMLString r12, com.sun.org.apache.xerces.internal.xni.XMLString r13, com.sun.org.apache.xerces.internal.xni.Augmentations r14) throws com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            r6 = this;
            java.lang.String r13 = "NOTATION"
            org.xml.sax.ext.DeclHandler r14 = r6.fDeclHandler     // Catch: org.xml.sax.SAXException -> L83
            if (r14 == 0) goto L82
            java.lang.StringBuffer r14 = new java.lang.StringBuffer     // Catch: org.xml.sax.SAXException -> L83
            r14.<init>(r7)     // Catch: org.xml.sax.SAXException -> L83
            java.lang.String r0 = "<"
            r14.append(r0)     // Catch: org.xml.sax.SAXException -> L83
            r14.append(r8)     // Catch: org.xml.sax.SAXException -> L83
            java.lang.String r14 = r14.toString()     // Catch: org.xml.sax.SAXException -> L83
            com.sun.org.apache.xerces.internal.util.SymbolHash r0 = r6.fDeclaredAttrs     // Catch: org.xml.sax.SAXException -> L83
            java.lang.Object r0 = r0.get(r14)     // Catch: org.xml.sax.SAXException -> L83
            if (r0 == 0) goto L20
            return
        L20:
            com.sun.org.apache.xerces.internal.util.SymbolHash r0 = r6.fDeclaredAttrs     // Catch: org.xml.sax.SAXException -> L83
            java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: org.xml.sax.SAXException -> L83
            r0.put(r14, r1)     // Catch: org.xml.sax.SAXException -> L83
            boolean r14 = r9.equals(r13)     // Catch: org.xml.sax.SAXException -> L83
            if (r14 != 0) goto L38
            java.lang.String r14 = "ENUMERATION"
            boolean r14 = r9.equals(r14)     // Catch: org.xml.sax.SAXException -> L83
            if (r14 == 0) goto L36
            goto L38
        L36:
            r3 = r9
            goto L71
        L38:
            java.lang.StringBuffer r14 = new java.lang.StringBuffer     // Catch: org.xml.sax.SAXException -> L83
            r14.<init>()     // Catch: org.xml.sax.SAXException -> L83
            boolean r13 = r9.equals(r13)     // Catch: org.xml.sax.SAXException -> L83
            if (r13 == 0) goto L4c
            r14.append(r9)     // Catch: org.xml.sax.SAXException -> L83
            java.lang.String r9 = " ("
            r14.append(r9)     // Catch: org.xml.sax.SAXException -> L83
            goto L51
        L4c:
            java.lang.String r9 = "("
            r14.append(r9)     // Catch: org.xml.sax.SAXException -> L83
        L51:
            r9 = 0
        L52:
            int r13 = r10.length     // Catch: org.xml.sax.SAXException -> L83
            if (r9 >= r13) goto L67
            r13 = r10[r9]     // Catch: org.xml.sax.SAXException -> L83
            r14.append(r13)     // Catch: org.xml.sax.SAXException -> L83
            int r13 = r10.length     // Catch: org.xml.sax.SAXException -> L83
            int r13 = r13 + (-1)
            if (r9 >= r13) goto L64
            r13 = 124(0x7c, float:1.74E-43)
            r14.append(r13)     // Catch: org.xml.sax.SAXException -> L83
        L64:
            int r9 = r9 + 1
            goto L52
        L67:
            r9 = 41
            r14.append(r9)     // Catch: org.xml.sax.SAXException -> L83
            java.lang.String r9 = r14.toString()     // Catch: org.xml.sax.SAXException -> L83
            goto L36
        L71:
            if (r12 != 0) goto L75
            r9 = 0
            goto L79
        L75:
            java.lang.String r9 = r12.toString()     // Catch: org.xml.sax.SAXException -> L83
        L79:
            r5 = r9
            org.xml.sax.ext.DeclHandler r0 = r6.fDeclHandler     // Catch: org.xml.sax.SAXException -> L83
            r1 = r7
            r2 = r8
            r4 = r11
            r0.attributeDecl(r1, r2, r3, r4, r5)     // Catch: org.xml.sax.SAXException -> L83
        L82:
            return
        L83:
            r6 = move-exception
            com.sun.org.apache.xerces.internal.xni.XNIException r7 = new com.sun.org.apache.xerces.internal.xni.XNIException
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser.attributeDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String[], java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.Augmentations):void");
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        int i = xMLString.length;
        if (i == 0) {
            return;
        }
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                documentHandler.characters(xMLString.f64120ch, xMLString.offset, i);
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                contentHandler.characters(xMLString.f64120ch, xMLString.offset, xMLString.length);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        try {
            LexicalHandler lexicalHandler = this.fLexicalHandler;
            if (lexicalHandler != null) {
                lexicalHandler.comment(xMLString.f64120ch, 0, xMLString.length);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.fInDTD = true;
        try {
            LexicalHandler lexicalHandler = this.fLexicalHandler;
            if (lexicalHandler != null) {
                lexicalHandler.startDTD(str, str2, str3);
            }
            if (this.fDeclHandler != null) {
                this.fDeclaredAttrs = new SymbolHash();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        try {
            DeclHandler declHandler = this.fDeclHandler;
            if (declHandler != null) {
                declHandler.elementDecl(str, str2);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        try {
            LexicalHandler lexicalHandler = this.fLexicalHandler;
            if (lexicalHandler != null) {
                lexicalHandler.endCDATA();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        this.fInDTD = false;
        try {
            LexicalHandler lexicalHandler = this.fLexicalHandler;
            if (lexicalHandler != null) {
                lexicalHandler.endDTD();
            }
            SymbolHash symbolHash = this.fDeclaredAttrs;
            if (symbolHash != null) {
                symbolHash.clear();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                documentHandler.endDocument();
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                contentHandler.endDocument();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                documentHandler.endElement(qName.rawname);
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                this.fAugmentations = augmentations;
                String str = qName.uri;
                if (str == null) {
                    str = "";
                }
                contentHandler.endElement(str, this.fNamespaces ? qName.localpart : "", qName.rawname);
                if (this.fNamespaces) {
                    endNamespaceMapping();
                }
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        endParameterEntity("[dtd]", augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        if (augmentations != null) {
            try {
                if (Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
                    return;
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
        LexicalHandler lexicalHandler = this.fLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endEntity(str);
        }
    }

    public final void endNamespaceMapping() throws SAXException {
        int declaredPrefixCount = this.fNamespaceContext.getDeclaredPrefixCount();
        if (declaredPrefixCount > 0) {
            for (int i = 0; i < declaredPrefixCount; i++) {
                this.fContentHandler.endPrefixMapping(this.fNamespaceContext.getDeclaredPrefixAt(i));
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        if (augmentations != null) {
            try {
                if (Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
                    return;
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
        LexicalHandler lexicalHandler = this.fLexicalHandler;
        if (lexicalHandler == null || !this.fLexicalHandlerParameterEntities) {
            return;
        }
        lexicalHandler.endEntity(str);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        try {
            if (this.fDeclHandler != null) {
                this.fDeclHandler.externalEntityDecl(str, xMLResourceIdentifier.getPublicId(), this.fResolveDTDURIs ? xMLResourceIdentifier.getExpandedSystemId() : xMLResourceIdentifier.getLiteralSystemId());
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        return (AttributePSVI) this.fAttributesProxy.fAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        return (AttributePSVI) this.fAttributesProxy.fAttributes.getAugmentations(str, str2).getItem("ATTRIBUTE_PSVI");
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        return this.fContentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    public DeclHandler getDeclHandler() throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.fDeclHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        Augmentations augmentations = this.fAugmentations;
        if (augmentations != null) {
            return (ElementPSVI) augmentations.getItem("ELEMENT_PSVI");
        }
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        EntityResolver entityResolver;
        try {
            XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            if (xMLEntityResolver == null) {
                return null;
            }
            if (xMLEntityResolver instanceof EntityResolverWrapper) {
                entityResolver = ((EntityResolverWrapper) xMLEntityResolver).getEntityResolver();
            } else {
                if (!(xMLEntityResolver instanceof EntityResolver2Wrapper)) {
                    return null;
                }
                entityResolver = ((EntityResolver2Wrapper) xMLEntityResolver).getEntityResolver();
            }
            return entityResolver;
        } catch (XMLConfigurationException unused) {
            return null;
        }
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        try {
            XMLErrorHandler xMLErrorHandler = (XMLErrorHandler) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/error-handler");
            if (xMLErrorHandler == null || !(xMLErrorHandler instanceof ErrorHandlerWrapper)) {
                return null;
            }
            return ((ErrorHandlerWrapper) xMLErrorHandler).getErrorHandler();
        } catch (XMLConfigurationException unused) {
            return null;
        }
    }

    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            if (str.startsWith("http://xml.org/sax/features/")) {
                int length = str.length() - 28;
                if (length == 18 && str.endsWith("namespace-prefixes")) {
                    return this.fConfiguration.getFeature(str);
                }
                if (length == 16 && str.endsWith("string-interning")) {
                    return true;
                }
                if (length == 13 && str.endsWith("is-standalone")) {
                    return this.fStandalone;
                }
                if (length == 7 && str.endsWith("xml-1.1")) {
                    return this.fConfiguration instanceof XML11Configurable;
                }
                if (length == 34 && str.endsWith("lexical-handler/parameter-entities")) {
                    return this.fLexicalHandlerParameterEntities;
                }
                if (length == 16 && str.endsWith("resolve-dtd-uris")) {
                    return this.fResolveDTDURIs;
                }
                if (length == 10 && str.endsWith("xmlns-uris")) {
                    return this.fXMLNSURIs;
                }
                if (length == 30 && str.endsWith("unicode-normalization-checking")) {
                    return false;
                }
                if (length == 20 && str.endsWith("use-entity-resolver2")) {
                    return this.fUseEntityResolver2;
                }
                if ((length == 15 && str.endsWith("use-attributes2")) || (length == 12 && str.endsWith("use-locator2"))) {
                    return true;
                }
            }
            return this.fConfiguration.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    public LexicalHandler getLexicalHandler() throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.fLexicalHandler;
    }

    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            if (str.startsWith("http://xml.org/sax/properties/")) {
                int length = str.length() - 30;
                if (length == 20 && str.endsWith("document-xml-version")) {
                    return this.fVersion;
                }
                if (length == 15 && str.endsWith("lexical-handler")) {
                    return getLexicalHandler();
                }
                if (length == 19 && str.endsWith("declaration-handler")) {
                    return getDeclHandler();
                }
                if (length == 8 && str.endsWith("dom-node")) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "dom-node-read-not-supported", null));
                }
            }
            return this.fConfiguration.getProperty(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{identifier}));
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                documentHandler.ignorableWhitespace(xMLString.f64120ch, xMLString.offset, xMLString.length);
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                contentHandler.ignorableWhitespace(xMLString.f64120ch, xMLString.offset, xMLString.length);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        try {
            DeclHandler declHandler = this.fDeclHandler;
            if (declHandler != null) {
                declHandler.internalEntityDecl(str, xMLString.toString());
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        try {
            if (this.fDTDHandler != null) {
                this.fDTDHandler.notationDecl(str, xMLResourceIdentifier.getPublicId(), this.fResolveDTDURIs ? xMLResourceIdentifier.getExpandedSystemId() : xMLResourceIdentifier.getLiteralSystemId());
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    public void parse(String str) throws SAXException, IOException {
        try {
            parse(new XMLInputSource(null, str, null));
        } catch (XMLParseException e) {
            Exception exception = e.getException();
            if (exception != null) {
                if (!(exception instanceof SAXException)) {
                    if (exception instanceof IOException) {
                        throw ((IOException) exception);
                    }
                    throw new SAXException(exception);
                }
                throw ((SAXException) exception);
            }
            LocatorImpl locatorImpl = new LocatorImpl() { // from class: com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser.1
                public String getEncoding() {
                    return null;
                }

                public String getXMLVersion() {
                    return AbstractSAXParser.this.fVersion;
                }
            };
            locatorImpl.setPublicId(e.getPublicId());
            locatorImpl.setSystemId(e.getExpandedSystemId());
            locatorImpl.setLineNumber(e.getLineNumber());
            locatorImpl.setColumnNumber(e.getColumnNumber());
            throw new SAXParseException(e.getMessage(), locatorImpl);
        } catch (XNIException e2) {
            Exception exception2 = e2.getException();
            if (exception2 != null) {
                if (!(exception2 instanceof SAXException)) {
                    if (exception2 instanceof IOException) {
                        throw ((IOException) exception2);
                    }
                    throw new SAXException(exception2);
                }
                throw ((SAXException) exception2);
            }
            throw new SAXException(e2.getMessage());
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                documentHandler.processingInstruction(str, xMLString.toString());
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                contentHandler.processingInstruction(str, xMLString.toString());
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.parsers.XMLParser
    public void reset() throws XNIException {
        super.reset();
        this.fInDTD = false;
        this.fVersion = "1.0";
        this.fStandalone = false;
        this.fNamespaces = this.fConfiguration.getFeature("http://xml.org/sax/features/namespaces");
        this.fNamespacePrefixes = this.fConfiguration.getFeature("http://xml.org/sax/features/namespace-prefixes");
        this.fAugmentations = null;
        this.fDeclaredAttrs = null;
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this.fContentHandler = contentHandler;
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
        this.fDTDHandler = dTDHandler;
    }

    public void setDeclHandler(DeclHandler declHandler) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (this.fParseInProgress) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-parsing-supported", new Object[]{DECLARATION_HANDLER}));
        }
        this.fDeclHandler = declHandler;
    }

    @Override // org.xml.sax.Parser
    public void setDocumentHandler(DocumentHandler documentHandler) {
        this.fDocumentHandler = documentHandler;
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
        try {
            XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            if (this.fUseEntityResolver2 && (entityResolver instanceof EntityResolver2)) {
                if (xMLEntityResolver instanceof EntityResolver2Wrapper) {
                    ((EntityResolver2Wrapper) xMLEntityResolver).setEntityResolver((EntityResolver2) entityResolver);
                } else {
                    this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", new EntityResolver2Wrapper((EntityResolver2) entityResolver));
                }
            } else if (xMLEntityResolver instanceof EntityResolverWrapper) {
                ((EntityResolverWrapper) xMLEntityResolver).setEntityResolver(entityResolver);
            } else {
                this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", new EntityResolverWrapper(entityResolver));
            }
        } catch (XMLConfigurationException unused) {
        }
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        try {
            XMLErrorHandler xMLErrorHandler = (XMLErrorHandler) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/error-handler");
            if (xMLErrorHandler instanceof ErrorHandlerWrapper) {
                ((ErrorHandlerWrapper) xMLErrorHandler).setErrorHandler(errorHandler);
            } else {
                this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", new ErrorHandlerWrapper(errorHandler));
            }
        } catch (XMLConfigurationException unused) {
        }
    }

    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            if (str.startsWith("http://xml.org/sax/features/")) {
                int length = str.length() - 28;
                if (length == 10 && str.endsWith("namespaces")) {
                    this.fConfiguration.setFeature(str, z);
                    this.fNamespaces = z;
                    return;
                }
                if (length == 18 && str.endsWith("namespace-prefixes")) {
                    this.fConfiguration.setFeature(str, z);
                    this.fNamespacePrefixes = z;
                    return;
                }
                if (length == 16 && str.endsWith("string-interning")) {
                    if (!z) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "false-not-supported", new Object[]{str}));
                    }
                    return;
                }
                if (length == 34 && str.endsWith("lexical-handler/parameter-entities")) {
                    this.fLexicalHandlerParameterEntities = z;
                    return;
                }
                if (length == 16 && str.endsWith("resolve-dtd-uris")) {
                    this.fResolveDTDURIs = z;
                    return;
                }
                if (length == 30 && str.endsWith("unicode-normalization-checking")) {
                    if (z) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "true-not-supported", new Object[]{str}));
                    }
                    return;
                }
                if (length == 10 && str.endsWith("xmlns-uris")) {
                    this.fXMLNSURIs = z;
                    return;
                }
                if (length == 20 && str.endsWith("use-entity-resolver2")) {
                    if (z != this.fUseEntityResolver2) {
                        this.fUseEntityResolver2 = z;
                        setEntityResolver(getEntityResolver());
                        return;
                    }
                    return;
                }
                if ((length == 13 && str.endsWith("is-standalone")) || ((length == 15 && str.endsWith("use-attributes2")) || ((length == 12 && str.endsWith("use-locator2")) || (length == 7 && str.endsWith("xml-1.1"))))) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-read-only", new Object[]{str}));
                }
            }
            this.fConfiguration.setFeature(str, z);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
        }
    }

    public void setLexicalHandler(LexicalHandler lexicalHandler) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (this.fParseInProgress) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-parsing-supported", new Object[]{"http://xml.org/sax/properties/lexical-handler"}));
        }
        this.fLexicalHandler = lexicalHandler;
    }

    @Override // org.xml.sax.Parser
    public void setLocale(Locale locale) throws SAXException {
        this.fConfiguration.setLocale(locale);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setProperty(java.lang.String r7, java.lang.Object r8) throws org.xml.sax.SAXNotRecognizedException, org.xml.sax.SAXNotSupportedException {
        /*
            r6 = this;
            java.lang.String r0 = "http://xml.org/sax/properties/"
            boolean r0 = r7.startsWith(r0)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            if (r0 == 0) goto L96
            int r0 = r7.length()     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            int r0 = r0 + (-30)
            r1 = 1
            r2 = 0
            r3 = 2
            java.lang.String r4 = "incompatible-class"
            r5 = 15
            if (r0 != r5) goto L3d
            java.lang.String r5 = "lexical-handler"
            boolean r5 = r7.endsWith(r5)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            if (r5 == 0) goto L3d
            org.xml.sax.ext.LexicalHandler r8 = (org.xml.sax.ext.LexicalHandler) r8     // Catch: java.lang.ClassCastException -> L25 com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r6.setLexicalHandler(r8)     // Catch: java.lang.ClassCastException -> L25 com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            return
        L25:
            org.xml.sax.SAXNotSupportedException r8 = new org.xml.sax.SAXNotSupportedException     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r0 = r6.fConfiguration     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.util.Locale r0 = r0.getLocale()     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r3[r2] = r7     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r7 = "org.xml.sax.ext.LexicalHandler"
            r3[r1] = r7     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r7 = com.sun.org.apache.xerces.internal.util.SAXMessageFormatter.formatMessage(r0, r4, r3)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r8.<init>(r7)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            throw r8     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
        L3d:
            r5 = 19
            if (r0 != r5) goto L67
            java.lang.String r5 = "declaration-handler"
            boolean r5 = r7.endsWith(r5)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            if (r5 == 0) goto L67
            org.xml.sax.ext.DeclHandler r8 = (org.xml.sax.ext.DeclHandler) r8     // Catch: java.lang.ClassCastException -> L4f com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r6.setDeclHandler(r8)     // Catch: java.lang.ClassCastException -> L4f com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            return
        L4f:
            org.xml.sax.SAXNotSupportedException r8 = new org.xml.sax.SAXNotSupportedException     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r0 = r6.fConfiguration     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.util.Locale r0 = r0.getLocale()     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r3[r2] = r7     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r7 = "org.xml.sax.ext.DeclHandler"
            r3[r1] = r7     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r7 = com.sun.org.apache.xerces.internal.util.SAXMessageFormatter.formatMessage(r0, r4, r3)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r8.<init>(r7)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            throw r8     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
        L67:
            r1 = 8
            if (r0 != r1) goto L73
            java.lang.String r1 = "dom-node"
            boolean r1 = r7.endsWith(r1)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            if (r1 != 0) goto L80
        L73:
            r1 = 20
            if (r0 != r1) goto L96
            java.lang.String r0 = "document-xml-version"
            boolean r0 = r7.endsWith(r0)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            if (r0 != 0) goto L80
            goto L96
        L80:
            org.xml.sax.SAXNotSupportedException r8 = new org.xml.sax.SAXNotSupportedException     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r0 = r6.fConfiguration     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.util.Locale r0 = r0.getLocale()     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r1 = "property-read-only"
            java.lang.Object[] r7 = new java.lang.Object[]{r7}     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            java.lang.String r7 = com.sun.org.apache.xerces.internal.util.SAXMessageFormatter.formatMessage(r0, r1, r7)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r8.<init>(r7)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            throw r8     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
        L96:
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r0 = r6.fConfiguration     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            r0.setProperty(r7, r8)     // Catch: com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException -> L9c
            return
        L9c:
            r7 = move-exception
            java.lang.String r8 = r7.getIdentifier()
            short r7 = r7.getType()
            if (r7 != 0) goto Lbd
            org.xml.sax.SAXNotRecognizedException r7 = new org.xml.sax.SAXNotRecognizedException
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r6 = r6.fConfiguration
            java.util.Locale r6 = r6.getLocale()
            java.lang.String r0 = "property-not-recognized"
            java.lang.Object[] r8 = new java.lang.Object[]{r8}
            java.lang.String r6 = com.sun.org.apache.xerces.internal.util.SAXMessageFormatter.formatMessage(r6, r0, r8)
            r7.<init>(r6)
            throw r7
        Lbd:
            org.xml.sax.SAXNotSupportedException r7 = new org.xml.sax.SAXNotSupportedException
            com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration r6 = r6.fConfiguration
            java.util.Locale r6 = r6.getLocale()
            java.lang.String r0 = "property-not-supported"
            java.lang.Object[] r8 = new java.lang.Object[]{r8}
            java.lang.String r6 = com.sun.org.apache.xerces.internal.util.SAXMessageFormatter.formatMessage(r6, r0, r8)
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser.setProperty(java.lang.String, java.lang.Object):void");
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        try {
            LexicalHandler lexicalHandler = this.fLexicalHandler;
            if (lexicalHandler != null) {
                lexicalHandler.startCDATA();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.fNamespaceContext = namespaceContext;
        try {
            DocumentHandler documentHandler = this.fDocumentHandler;
            if (documentHandler != null) {
                if (xMLLocator != null) {
                    documentHandler.setDocumentLocator(new LocatorProxy(xMLLocator));
                }
                this.fDocumentHandler.startDocument();
            }
            ContentHandler contentHandler = this.fContentHandler;
            if (contentHandler != null) {
                if (xMLLocator != null) {
                    contentHandler.setDocumentLocator(new LocatorProxy(xMLLocator));
                }
                this.fContentHandler.startDocument();
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        try {
            if (this.fDocumentHandler != null) {
                this.fAttributesProxy.setAttributes(xMLAttributes);
                this.fDocumentHandler.startElement(qName.rawname, this.fAttributesProxy);
            }
            if (this.fContentHandler != null) {
                if (this.fNamespaces) {
                    startNamespaceMapping();
                    int length = xMLAttributes.getLength();
                    if (!this.fNamespacePrefixes) {
                        for (int i = length - 1; i >= 0; i--) {
                            xMLAttributes.getName(i, this.fQName);
                            QName qName2 = this.fQName;
                            String str = qName2.prefix;
                            String str2 = XMLSymbols.PREFIX_XMLNS;
                            if (str == str2 || qName2.rawname == str2) {
                                xMLAttributes.removeAttributeAt(i);
                            }
                        }
                    } else if (!this.fXMLNSURIs) {
                        for (int i2 = length - 1; i2 >= 0; i2--) {
                            xMLAttributes.getName(i2, this.fQName);
                            QName qName3 = this.fQName;
                            String str3 = qName3.prefix;
                            String str4 = XMLSymbols.PREFIX_XMLNS;
                            if (str3 == str4 || qName3.rawname == str4) {
                                qName3.prefix = "";
                                qName3.uri = "";
                                qName3.localpart = "";
                                xMLAttributes.setName(i2, qName3);
                            }
                        }
                    }
                }
                this.fAugmentations = augmentations;
                String str5 = qName.uri;
                if (str5 == null) {
                    str5 = "";
                }
                String str6 = this.fNamespaces ? qName.localpart : "";
                this.fAttributesProxy.setAttributes(xMLAttributes);
                this.fContentHandler.startElement(str5, str6, qName.rawname, this.fAttributesProxy);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        startParameterEntity("[dtd]", null, null, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (augmentations != null) {
            try {
                if (Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
                    ContentHandler contentHandler = this.fContentHandler;
                    if (contentHandler != null) {
                        contentHandler.skippedEntity(str);
                    }
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
        LexicalHandler lexicalHandler = this.fLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startEntity(str);
        }
    }

    public final void startNamespaceMapping() throws SAXException {
        int declaredPrefixCount = this.fNamespaceContext.getDeclaredPrefixCount();
        if (declaredPrefixCount > 0) {
            for (int i = 0; i < declaredPrefixCount; i++) {
                String declaredPrefixAt = this.fNamespaceContext.getDeclaredPrefixAt(i);
                String uri = this.fNamespaceContext.getURI(declaredPrefixAt);
                ContentHandler contentHandler = this.fContentHandler;
                if (uri == null) {
                    uri = "";
                }
                contentHandler.startPrefixMapping(declaredPrefixAt, uri);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (augmentations != null) {
            try {
                if (Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
                    ContentHandler contentHandler = this.fContentHandler;
                    if (contentHandler != null) {
                        contentHandler.skippedEntity(str);
                    }
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
        LexicalHandler lexicalHandler = this.fLexicalHandler;
        if (lexicalHandler != null && this.fLexicalHandlerParameterEntities) {
            lexicalHandler.startEntity(str);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        try {
            if (this.fDTDHandler != null) {
                this.fDTDHandler.unparsedEntityDecl(str, xMLResourceIdentifier.getPublicId(), this.fResolveDTDURIs ? xMLResourceIdentifier.getExpandedSystemId() : xMLResourceIdentifier.getLiteralSystemId(), str2);
            }
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.fVersion = str;
        this.fStandalone = "yes".equals(str3);
    }

    public void parse(InputSource inputSource) throws SAXException, IOException {
        try {
            XMLInputSource xMLInputSource = new XMLInputSource(inputSource.getPublicId(), inputSource.getSystemId(), null);
            xMLInputSource.setByteStream(inputSource.getByteStream());
            xMLInputSource.setCharacterStream(inputSource.getCharacterStream());
            xMLInputSource.setEncoding(inputSource.getEncoding());
            parse(xMLInputSource);
        } catch (XMLParseException e) {
            Exception exception = e.getException();
            if (exception != null) {
                if (!(exception instanceof SAXException)) {
                    if (exception instanceof IOException) {
                        throw ((IOException) exception);
                    }
                    throw new SAXException(exception);
                }
                throw ((SAXException) exception);
            }
            LocatorImpl locatorImpl = new LocatorImpl() { // from class: com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser.2
                public String getEncoding() {
                    return null;
                }

                public String getXMLVersion() {
                    return AbstractSAXParser.this.fVersion;
                }
            };
            locatorImpl.setPublicId(e.getPublicId());
            locatorImpl.setSystemId(e.getExpandedSystemId());
            locatorImpl.setLineNumber(e.getLineNumber());
            locatorImpl.setColumnNumber(e.getColumnNumber());
            throw new SAXParseException(e.getMessage(), locatorImpl);
        } catch (XNIException e2) {
            Exception exception2 = e2.getException();
            if (exception2 != null) {
                if (!(exception2 instanceof SAXException)) {
                    if (exception2 instanceof IOException) {
                        throw ((IOException) exception2);
                    }
                    throw new SAXException(exception2);
                }
                throw ((SAXException) exception2);
            }
            throw new SAXException(e2.getMessage());
        }
    }
}
