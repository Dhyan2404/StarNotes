package org.apache.xerces.parsers;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Stack;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DOMStringListImpl;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.parsers.AbstractDOMParser;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMErrorHandlerWrapper;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDContentModelSource;
import org.apache.xerces.xni.parser.XMLDTDSource;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSParser;
import org.w3c.dom.ls.LSParserFilter;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes13.dex */
public class DOMParserImpl extends AbstractDOMParser implements LSParser, DOMConfiguration {
    protected static final boolean DEBUG = false;
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String NAMESPACE_GROWTH = "http://apache.org/xml/features/namespace-growth";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String PSVI_AUGMENT = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String TOLERATE_DUPLICATES = "http://apache.org/xml/features/internal/tolerate-duplicates";
    protected static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    protected static final String XMLSCHEMA = "http://apache.org/xml/features/validation/schema";
    protected static final String XMLSCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected boolean fBusy;
    protected boolean fNamespaceDeclarations;
    protected String fSchemaType;

    /* renamed from: m */
    public boolean f113359m;

    /* renamed from: n */
    public Thread f113360n;

    /* renamed from: o */
    public String f113361o;

    /* renamed from: p */
    public DOMStringList f113362p;

    /* renamed from: q */
    public boolean f113363q;

    /* renamed from: r */
    public C20073a f113364r;

    /* renamed from: org.apache.xerces.parsers.DOMParserImpl$a */
    /* loaded from: classes13.dex */
    public static final class C20073a implements XMLDocumentHandler, XMLDTDHandler, XMLDTDContentModelHandler {

        /* renamed from: e */
        public XMLDocumentSource f113365e;

        /* renamed from: f */
        public XMLDTDContentModelSource f113366f;

        /* renamed from: g */
        public XMLDTDSource f113367g;

        public C20073a() {
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void any(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void element(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void empty(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endAttlist(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void endCDATA(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endConditional(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void endContentModel(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endDTD(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void endDocument(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void endElement(QName qName, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endExternalSubset(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void endGroup(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public XMLDTDContentModelSource getDTDContentModelSource() {
            return this.f113366f;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public XMLDTDSource getDTDSource() {
            return this.f113367g;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public XMLDocumentSource getDocumentSource() {
            return this.f113365e;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void occurrence(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void pcdata(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void separator(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void setDTDContentModelSource(XMLDTDContentModelSource xMLDTDContentModelSource) {
            this.f113366f = xMLDTDContentModelSource;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void setDTDSource(XMLDTDSource xMLDTDSource) {
            this.f113367g = xMLDTDSource;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
            this.f113365e = xMLDocumentSource;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startAttlist(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void startCDATA(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startConditional(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void startContentModel(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
        public void startGroup(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        @Override // org.apache.xerces.xni.XMLDocumentHandler
        public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.Abort.INSTANCE;
        }

        public /* synthetic */ C20073a(C20078a c20078a) {
            this();
        }
    }

    /* renamed from: org.apache.xerces.parsers.DOMParserImpl$b */
    /* loaded from: classes13.dex */
    public static final class C20074b implements LSParserFilter {

        /* renamed from: a */
        public static final C20074b f113368a = new C20074b();

        @Override // org.w3c.dom.ls.LSParserFilter
        public short acceptNode(Node node) {
            return (short) 1;
        }

        @Override // org.w3c.dom.ls.LSParserFilter
        public int getWhatToShow() {
            return -1;
        }

        @Override // org.w3c.dom.ls.LSParserFilter
        public short startElement(Element element) {
            return (short) 1;
        }
    }

    public DOMParserImpl(String str, String str2) {
        this((XMLParserConfiguration) ObjectFactory.m70533a("org.apache.xerces.xni.parser.XMLParserConfiguration", str));
        if (str2 != null) {
            String str3 = Constants.NS_DTD;
            if (str2.equals(str3)) {
                this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", str3);
                this.fSchemaType = str3;
            } else {
                Object obj = Constants.NS_XMLSCHEMA;
                if (str2.equals(obj)) {
                    this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", obj);
                }
            }
        }
    }

    /* renamed from: p */
    public static DOMException m70527p(String str) {
        return new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    /* renamed from: q */
    public static DOMException m70528q(String str) {
        return new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
    }

    /* renamed from: r */
    public static DOMException m70529r() {
        throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
    }

    /* renamed from: s */
    public static DOMException m70530s(String str) {
        return new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
    }

    @Override // org.apache.xerces.parsers.AbstractDOMParser, org.w3c.dom.ls.LSParser
    public void abort() {
        if (this.fBusy) {
            this.fBusy = false;
            if (this.f113360n != null) {
                this.f113359m = true;
                if (this.f113364r == null) {
                    this.f113364r = new C20073a(null);
                }
                this.fConfiguration.setDocumentHandler(this.f113364r);
                this.fConfiguration.setDTDHandler(this.f113364r);
                this.fConfiguration.setDTDContentModelHandler(this.f113364r);
                if (this.f113360n == Thread.currentThread()) {
                    throw AbstractDOMParser.Abort.INSTANCE;
                }
                this.f113360n.interrupt();
            }
        }
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        String str2 = TOLERATE_DUPLICATES;
        if (obj == null) {
            return true;
        }
        if (!(obj instanceof Boolean)) {
            if (str.equalsIgnoreCase("error-handler")) {
                return obj instanceof DOMErrorHandler;
            }
            if (str.equalsIgnoreCase("resource-resolver")) {
                return obj instanceof LSResourceResolver;
            }
            if (str.equalsIgnoreCase("schema-type")) {
                return (obj instanceof String) && (obj.equals(Constants.NS_XMLSCHEMA) || obj.equals(Constants.NS_DTD));
            }
            if (str.equalsIgnoreCase("schema-location")) {
                return obj instanceof String;
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/dom/document-class-name")) {
                return true;
            }
            try {
                this.fConfiguration.getProperty(str.toLowerCase(Locale.ENGLISH));
                return true;
            } catch (XMLConfigurationException unused) {
                return false;
            }
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (str.equalsIgnoreCase("supported-media-types-only") || str.equalsIgnoreCase("normalize-characters") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("canonical-form")) {
            return !booleanValue;
        }
        if (str.equalsIgnoreCase("well-formed") || str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
            return booleanValue;
        }
        if (str.equalsIgnoreCase("cdata-sections") || str.equalsIgnoreCase("charset-overrides-xml-encoding") || str.equalsIgnoreCase("comments") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("disallow-doctype") || str.equalsIgnoreCase("entities") || str.equalsIgnoreCase("infoset") || str.equalsIgnoreCase("namespaces") || str.equalsIgnoreCase("namespace-declarations") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("element-content-whitespace") || str.equalsIgnoreCase("xml-declaration")) {
            return true;
        }
        try {
            if (str.equalsIgnoreCase(HONOUR_ALL_SCHEMALOCATIONS)) {
                str2 = HONOUR_ALL_SCHEMALOCATIONS;
            } else if (str.equalsIgnoreCase(NAMESPACE_GROWTH)) {
                str2 = NAMESPACE_GROWTH;
            } else if (!str.equalsIgnoreCase(TOLERATE_DUPLICATES)) {
                str2 = str.toLowerCase(Locale.ENGLISH);
            }
            this.fConfiguration.getFeature(str2);
            return true;
        } catch (XMLConfigurationException unused2) {
            return false;
        }
    }

    @Override // org.w3c.dom.ls.LSParser
    public boolean getAsync() {
        return false;
    }

    @Override // org.w3c.dom.ls.LSParser
    public boolean getBusy() {
        return this.fBusy;
    }

    @Override // org.w3c.dom.ls.LSParser
    public DOMConfiguration getDomConfig() {
        return this;
    }

    @Override // org.w3c.dom.ls.LSParser
    public LSParserFilter getFilter() {
        if (this.f113363q) {
            return null;
        }
        return this.fDOMFilter;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        if (str.equalsIgnoreCase("comments")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/include-comments") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("datatype-normalization")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/validation/schema/normalized-value") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("entities")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespaces")) {
            return this.fConfiguration.getFeature("http://xml.org/sax/features/namespaces") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("validate")) {
            return this.fConfiguration.getFeature("http://xml.org/sax/features/validation") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("validate-if-schema")) {
            return this.fConfiguration.getFeature(DYNAMIC_VALIDATION) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("element-content-whitespace")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("disallow-doctype")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/disallow-doctype-decl") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("infoset")) {
            return this.fConfiguration.getFeature("http://xml.org/sax/features/namespaces") && this.fConfiguration.getFeature("namespace-declarations") && this.fConfiguration.getFeature("http://apache.org/xml/features/include-comments") && this.fConfiguration.getFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace") && !this.fConfiguration.getFeature(DYNAMIC_VALIDATION) && !this.fConfiguration.getFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes") && !this.fConfiguration.getFeature("http://apache.org/xml/features/validation/schema/normalized-value") && !this.fConfiguration.getFeature("http://apache.org/xml/features/create-cdata-nodes") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("cdata-sections")) {
            return this.fConfiguration.getFeature("http://apache.org/xml/features/create-cdata-nodes") ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("normalize-characters")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespace-declarations") || str.equalsIgnoreCase("well-formed") || str.equalsIgnoreCase("ignore-unknown-character-denormalizations") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("supported-media-types-only") || str.equalsIgnoreCase("split-cdata-sections") || str.equalsIgnoreCase("charset-overrides-xml-encoding")) {
            return this.fConfiguration.getFeature(str.toLowerCase(Locale.ENGLISH)) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("error-handler")) {
            DOMErrorHandlerWrapper dOMErrorHandlerWrapper = this.fErrorHandler;
            if (dOMErrorHandlerWrapper != null) {
                return dOMErrorHandlerWrapper.getErrorHandler();
            }
            return null;
        }
        if (str.equalsIgnoreCase("resource-resolver")) {
            try {
                XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
                if (xMLEntityResolver != null && (xMLEntityResolver instanceof DOMEntityResolverWrapper)) {
                    return ((DOMEntityResolverWrapper) xMLEntityResolver).getEntityResolver();
                }
            } catch (XMLConfigurationException unused) {
            }
            return null;
        }
        if (str.equalsIgnoreCase("schema-type")) {
            return this.fConfiguration.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
        }
        if (str.equalsIgnoreCase("schema-location")) {
            return this.f113361o;
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
            return this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/dom/document-class-name")) {
            return this.fConfiguration.getProperty("http://apache.org/xml/properties/dom/document-class-name");
        }
        String str2 = HONOUR_ALL_SCHEMALOCATIONS;
        if (!str.equalsIgnoreCase(HONOUR_ALL_SCHEMALOCATIONS)) {
            str2 = NAMESPACE_GROWTH;
            if (!str.equals(NAMESPACE_GROWTH)) {
                str2 = TOLERATE_DUPLICATES;
                if (!str.equals(TOLERATE_DUPLICATES)) {
                    str2 = str.toLowerCase(Locale.ENGLISH);
                }
            }
        }
        try {
            try {
                return this.fConfiguration.getFeature(str2) ? Boolean.TRUE : Boolean.FALSE;
            } catch (XMLConfigurationException unused2) {
                throw m70527p(str);
            }
        } catch (XMLConfigurationException unused3) {
            return this.fConfiguration.getProperty(str2);
        }
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.f113362p == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("namespaces");
            arrayList.add("cdata-sections");
            arrayList.add("canonical-form");
            arrayList.add("namespace-declarations");
            arrayList.add("split-cdata-sections");
            arrayList.add("entities");
            arrayList.add("validate-if-schema");
            arrayList.add("validate");
            arrayList.add("datatype-normalization");
            arrayList.add("charset-overrides-xml-encoding");
            arrayList.add("check-character-normalization");
            arrayList.add("supported-media-types-only");
            arrayList.add("ignore-unknown-character-denormalizations");
            arrayList.add("normalize-characters");
            arrayList.add("well-formed");
            arrayList.add("infoset");
            arrayList.add("disallow-doctype");
            arrayList.add("element-content-whitespace");
            arrayList.add("comments");
            arrayList.add("error-handler");
            arrayList.add("resource-resolver");
            arrayList.add("schema-location");
            arrayList.add("schema-type");
            this.f113362p = new DOMStringListImpl(arrayList);
        }
        return this.f113362p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public XMLInputSource m70531o(LSInput lSInput) {
        if (lSInput.getCharacterStream() != null) {
            return new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getCharacterStream(), "UTF-16");
        }
        if (lSInput.getByteStream() != null) {
            return new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getByteStream(), lSInput.getEncoding());
        }
        if (lSInput.getStringData() != null && lSInput.getStringData().length() > 0) {
            return new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), new StringReader(lSInput.getStringData()), "UTF-16");
        }
        if ((lSInput.getSystemId() != null && lSInput.getSystemId().length() > 0) || (lSInput.getPublicId() != null && lSInput.getPublicId().length() > 0)) {
            return new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI());
        }
        if (this.fErrorHandler != null) {
            DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
            dOMErrorImpl.fType = "no-input-specified";
            dOMErrorImpl.fMessage = "no-input-specified";
            dOMErrorImpl.fSeverity = (short) 3;
            this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
        }
        throw new LSException((short) 81, "no-input-specified");
    }

    @Override // org.w3c.dom.ls.LSParser
    public Document parse(LSInput lSInput) throws LSException {
        XMLInputSource m70531o = m70531o(lSInput);
        if (this.fBusy) {
            throw m70529r();
        }
        try {
            this.f113360n = Thread.currentThread();
            this.fBusy = true;
            parse(m70531o);
            this.fBusy = false;
            if (this.f113359m && this.f113360n.isInterrupted()) {
                this.f113359m = false;
                Thread.interrupted();
            }
        } catch (Exception e) {
            this.fBusy = false;
            if (this.f113359m && this.f113360n.isInterrupted()) {
                Thread.interrupted();
            }
            if (this.f113359m) {
                this.f113359m = false;
                m70532t();
                return null;
            }
            if (e != AbstractDOMParser.Abort.INSTANCE) {
                if (!(e instanceof XMLParseException) && this.fErrorHandler != null) {
                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                    dOMErrorImpl.fException = e;
                    dOMErrorImpl.fMessage = e.getMessage();
                    dOMErrorImpl.fSeverity = (short) 3;
                    this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
                }
                throw ((LSException) DOMUtil.createLSException((short) 81, e).fillInStackTrace());
            }
        }
        Document document = getDocument();
        dropDocumentReferences();
        return document;
    }

    @Override // org.w3c.dom.ls.LSParser
    public Document parseURI(String str) throws LSException {
        if (this.fBusy) {
            throw m70529r();
        }
        XMLInputSource xMLInputSource = new XMLInputSource(null, str, null);
        try {
            this.f113360n = Thread.currentThread();
            this.fBusy = true;
            parse(xMLInputSource);
            this.fBusy = false;
            if (this.f113359m && this.f113360n.isInterrupted()) {
                this.f113359m = false;
                Thread.interrupted();
            }
        } catch (Exception e) {
            this.fBusy = false;
            if (this.f113359m && this.f113360n.isInterrupted()) {
                Thread.interrupted();
            }
            if (this.f113359m) {
                this.f113359m = false;
                m70532t();
                return null;
            }
            if (e != AbstractDOMParser.Abort.INSTANCE) {
                if (!(e instanceof XMLParseException) && this.fErrorHandler != null) {
                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                    dOMErrorImpl.fException = e;
                    dOMErrorImpl.fMessage = e.getMessage();
                    dOMErrorImpl.fSeverity = (short) 3;
                    this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
                }
                throw ((LSException) DOMUtil.createLSException((short) 81, e).fillInStackTrace());
            }
        }
        Document document = getDocument();
        dropDocumentReferences();
        return document;
    }

    @Override // org.w3c.dom.ls.LSParser
    public Node parseWithContext(LSInput lSInput, Node node, short s) throws DOMException, LSException {
        throw new DOMException((short) 9, "Not supported");
    }

    @Override // org.apache.xerces.parsers.AbstractDOMParser, org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.parsers.XMLParser
    public void reset() {
        super.reset();
        this.fNamespaceDeclarations = this.fConfiguration.getFeature("namespace-declarations");
        if (this.f113363q) {
            this.fDOMFilter = null;
            this.f113363q = false;
        }
        Stack stack = this.fSkippedElemStack;
        if (stack != null) {
            stack.removeAllElements();
        }
        this.fRejectedElementDepth = 0;
        this.fFilterReject = false;
        this.fSchemaType = null;
    }

    @Override // org.w3c.dom.ls.LSParser
    public void setFilter(LSParserFilter lSParserFilter) {
        if (this.fBusy && lSParserFilter == null && this.fDOMFilter != null) {
            this.f113363q = true;
            lSParserFilter = C20074b.f113368a;
        }
        this.fDOMFilter = lSParserFilter;
        if (this.fSkippedElemStack == null) {
            this.fSkippedElemStack = new Stack();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:?, code lost:
    
        return;
     */
    @Override // org.w3c.dom.DOMConfiguration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setParameter(java.lang.String r19, java.lang.Object r20) throws org.w3c.dom.DOMException {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.DOMParserImpl.setParameter(java.lang.String, java.lang.Object):void");
    }

    @Override // org.apache.xerces.parsers.AbstractDOMParser, org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) {
        if (!this.fNamespaceDeclarations && this.fNamespaceAware) {
            for (int length = xMLAttributes.getLength() - 1; length >= 0; length--) {
                String str = XMLSymbols.PREFIX_XMLNS;
                if (str == xMLAttributes.getPrefix(length) || str == xMLAttributes.getQName(length)) {
                    xMLAttributes.removeAttributeAt(length);
                }
            }
        }
        super.startElement(qName, xMLAttributes, augmentations);
    }

    /* renamed from: t */
    public final void m70532t() {
        this.fConfiguration.setDocumentHandler(this);
        this.fConfiguration.setDTDHandler(this);
        this.fConfiguration.setDTDContentModelHandler(this);
    }

    public DOMParserImpl(SymbolTable symbolTable) {
        this((XMLParserConfiguration) ObjectFactory.m70533a("org.apache.xerces.xni.parser.XMLParserConfiguration", "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }

    public DOMParserImpl(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this((XMLParserConfiguration) ObjectFactory.m70533a("org.apache.xerces.xni.parser.XMLParserConfiguration", "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
    }

    public DOMParserImpl(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fNamespaceDeclarations = true;
        this.fSchemaType = null;
        this.fBusy = false;
        this.f113359m = false;
        this.f113361o = null;
        this.f113363q = false;
        this.f113364r = null;
        this.fConfiguration.addRecognizedFeatures(new String[]{"canonical-form", "cdata-sections", "charset-overrides-xml-encoding", "infoset", "namespace-declarations", "split-cdata-sections", "supported-media-types-only", "certified", "well-formed", "ignore-unknown-character-denormalizations"});
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/defer-node-expansion", false);
        this.fConfiguration.setFeature("namespace-declarations", true);
        this.fConfiguration.setFeature("well-formed", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/include-comments", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", true);
        this.fConfiguration.setFeature("http://xml.org/sax/features/namespaces", true);
        this.fConfiguration.setFeature(DYNAMIC_VALIDATION, false);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", false);
        this.fConfiguration.setFeature("http://apache.org/xml/features/create-cdata-nodes", false);
        this.fConfiguration.setFeature("canonical-form", false);
        this.fConfiguration.setFeature("charset-overrides-xml-encoding", true);
        this.fConfiguration.setFeature("split-cdata-sections", true);
        this.fConfiguration.setFeature("supported-media-types-only", false);
        this.fConfiguration.setFeature("ignore-unknown-character-denormalizations", true);
        this.fConfiguration.setFeature("certified", true);
        try {
            this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema/normalized-value", false);
        } catch (XMLConfigurationException unused) {
        }
    }
}
