package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.dom.DOMStringListImpl;
import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.util.DOMEntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.StringReader;
import java.util.Locale;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.Vector;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSParser;
import org.w3c.dom.ls.LSParserFilter;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes10.dex */
public class DOMParserImpl extends AbstractDOMParser implements LSParser, DOMConfiguration {
    protected static final boolean DEBUG = false;
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String PSVI_AUGMENT = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    protected static final String XMLSCHEMA = "http://apache.org/xml/features/validation/schema";
    protected static final String XMLSCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    private AbortHandler abortHandler;
    private boolean abortNow;
    private Thread currentThread;
    protected boolean fBusy;
    protected boolean fNamespaceDeclarations;
    private DOMStringList fRecognizedParameters;
    private String fSchemaLocation;
    private Vector fSchemaLocations;
    protected String fSchemaType;

    /* loaded from: classes10.dex */
    public class AbortHandler implements XMLDocumentHandler, XMLDTDHandler, XMLDTDContentModelHandler {
        private XMLDocumentSource documentSource;
        private XMLDTDContentModelSource dtdContentSource;
        private XMLDTDSource dtdSource;

        private AbortHandler() {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void any(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void element(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void empty(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void endAttlist(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endCDATA(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void endConditional(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void endContentModel(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void endDTD(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endDocument(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endElement(QName qName, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void endExternalSubset(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void endGroup(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public XMLDTDContentModelSource getDTDContentModelSource() {
            return this.dtdContentSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public XMLDTDSource getDTDSource() {
            return this.dtdSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public XMLDocumentSource getDocumentSource() {
            return this.documentSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void occurrence(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void pcdata(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void separator(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void setDTDContentModelSource(XMLDTDContentModelSource xMLDTDContentModelSource) {
            this.dtdContentSource = xMLDTDContentModelSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void setDTDSource(XMLDTDSource xMLDTDSource) {
            this.dtdSource = xMLDTDSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
            this.documentSource = xMLDocumentSource;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void startAttlist(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startCDATA(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void startConditional(short s, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void startContentModel(String str, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
        public void startGroup(Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
        public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            throw AbstractDOMParser.abort;
        }
    }

    public DOMParserImpl(String str, String str2) {
        this((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", str));
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

    private void restoreHandlers() {
        this.fConfiguration.setDocumentHandler(this);
        this.fConfiguration.setDTDHandler(this);
        this.fConfiguration.setDTDContentModelHandler(this);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser, org.w3c.dom.ls.LSParser
    public void abort() {
        if (this.fBusy) {
            this.fBusy = false;
            if (this.currentThread != null) {
                this.abortNow = true;
                this.fConfiguration.setDocumentHandler(this.abortHandler);
                this.fConfiguration.setDTDHandler(this.abortHandler);
                this.fConfiguration.setDTDContentModelHandler(this.abortHandler);
                if (this.currentThread == Thread.currentThread()) {
                    throw AbstractDOMParser.abort;
                }
                this.currentThread.interrupt();
            }
        }
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        if (obj == null) {
            return true;
        }
        if (!(obj instanceof Boolean)) {
            return str.equalsIgnoreCase("error-handler") ? obj instanceof DOMErrorHandler : str.equalsIgnoreCase("resource-resolver") ? obj instanceof LSResourceResolver : str.equalsIgnoreCase("schema-type") ? (obj instanceof String) && (obj.equals(Constants.NS_XMLSCHEMA) || obj.equals(Constants.NS_DTD)) : str.equalsIgnoreCase("schema-location") ? obj instanceof String : str.equalsIgnoreCase("http://apache.org/xml/properties/dom/document-class-name");
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
            this.fConfiguration.getFeature(str.toLowerCase(Locale.ENGLISH));
            return true;
        } catch (XMLConfigurationException unused) {
            return false;
        }
    }

    public XMLInputSource dom2xmlInputSource(LSInput lSInput) {
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
            return this.fSchemaLocation;
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
            return this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/dom/document-class-name")) {
            return this.fConfiguration.getProperty("http://apache.org/xml/properties/dom/document-class-name");
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.fRecognizedParameters == null) {
            Vector vector = new Vector();
            vector.add("namespaces");
            vector.add("cdata-sections");
            vector.add("canonical-form");
            vector.add("namespace-declarations");
            vector.add("split-cdata-sections");
            vector.add("entities");
            vector.add("validate-if-schema");
            vector.add("validate");
            vector.add("datatype-normalization");
            vector.add("charset-overrides-xml-encoding");
            vector.add("check-character-normalization");
            vector.add("supported-media-types-only");
            vector.add("ignore-unknown-character-denormalizations");
            vector.add("normalize-characters");
            vector.add("well-formed");
            vector.add("infoset");
            vector.add("disallow-doctype");
            vector.add("element-content-whitespace");
            vector.add("comments");
            vector.add("error-handler");
            vector.add("resource-resolver");
            vector.add("schema-location");
            vector.add("schema-type");
            this.fRecognizedParameters = new DOMStringListImpl(vector);
        }
        return this.fRecognizedParameters;
    }

    @Override // org.w3c.dom.ls.LSParser
    public Document parse(LSInput lSInput) throws LSException {
        XMLInputSource dom2xmlInputSource = dom2xmlInputSource(lSInput);
        if (this.fBusy) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        try {
            this.currentThread = Thread.currentThread();
            this.fBusy = true;
            parse(dom2xmlInputSource);
            this.fBusy = false;
            if (this.abortNow && this.currentThread.isInterrupted()) {
                this.abortNow = false;
                Thread.interrupted();
            }
        } catch (Exception e) {
            this.fBusy = false;
            if (this.abortNow && this.currentThread.isInterrupted()) {
                Thread.interrupted();
            }
            if (this.abortNow) {
                this.abortNow = false;
                restoreHandlers();
                return null;
            }
            if (e != AbstractDOMParser.abort) {
                if (!(e instanceof XMLParseException) && this.fErrorHandler != null) {
                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                    dOMErrorImpl.fException = e;
                    dOMErrorImpl.fMessage = e.getMessage();
                    dOMErrorImpl.fSeverity = (short) 3;
                    this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
                }
                throw new LSException((short) 81, e.getMessage());
            }
        }
        return getDocument();
    }

    @Override // org.w3c.dom.ls.LSParser
    public Document parseURI(String str) throws LSException {
        if (this.fBusy) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        XMLInputSource xMLInputSource = new XMLInputSource(null, str, null);
        try {
            this.currentThread = Thread.currentThread();
            this.fBusy = true;
            parse(xMLInputSource);
            this.fBusy = false;
            if (this.abortNow && this.currentThread.isInterrupted()) {
                this.abortNow = false;
                Thread.interrupted();
            }
        } catch (Exception e) {
            this.fBusy = false;
            if (this.abortNow && this.currentThread.isInterrupted()) {
                Thread.interrupted();
            }
            if (this.abortNow) {
                this.abortNow = false;
                restoreHandlers();
                return null;
            }
            if (e != AbstractDOMParser.abort) {
                if (!(e instanceof XMLParseException) && this.fErrorHandler != null) {
                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                    dOMErrorImpl.fException = e;
                    dOMErrorImpl.fMessage = e.getMessage();
                    dOMErrorImpl.fSeverity = (short) 3;
                    this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
                }
                throw new LSException((short) 81, e.getMessage());
            }
        }
        return getDocument();
    }

    @Override // org.w3c.dom.ls.LSParser
    public Node parseWithContext(LSInput lSInput, Node node, short s) throws DOMException, LSException {
        throw new DOMException((short) 9, "Not supported");
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser, com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.parsers.XMLParser
    public void reset() {
        super.reset();
        this.fNamespaceDeclarations = this.fConfiguration.getFeature("namespace-declarations");
        Stack stack = this.fSkippedElemStack;
        if (stack != null) {
            stack.removeAllElements();
        }
        this.fSchemaLocations.clear();
        this.fRejectedElement.clear();
        this.fFilterReject = false;
        this.fSchemaType = null;
    }

    @Override // org.w3c.dom.ls.LSParser
    public void setFilter(LSParserFilter lSParserFilter) {
        this.fDOMFilter = lSParserFilter;
        if (this.fSkippedElemStack == null) {
            this.fSkippedElemStack = new Stack();
        }
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        String str2;
        String str3 = "FEATURE_NOT_FOUND";
        if (!(obj instanceof Boolean)) {
            try {
                if (str.equalsIgnoreCase("error-handler")) {
                    if (obj instanceof DOMErrorHandler) {
                        DOMErrorHandlerWrapper dOMErrorHandlerWrapper = new DOMErrorHandlerWrapper((DOMErrorHandler) obj);
                        this.fErrorHandler = dOMErrorHandlerWrapper;
                        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", dOMErrorHandlerWrapper);
                    } else {
                        if (obj != null) {
                            throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                        }
                        DOMErrorHandlerWrapper dOMErrorHandlerWrapper2 = new DOMErrorHandlerWrapper((DOMErrorHandler) obj);
                        this.fErrorHandler = dOMErrorHandlerWrapper2;
                        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", dOMErrorHandlerWrapper2);
                    }
                }
                if (str.equalsIgnoreCase("resource-resolver")) {
                    if (!(obj instanceof LSResourceResolver) && obj != null) {
                        throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                    }
                    this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", new DOMEntityResolverWrapper((LSResourceResolver) obj));
                    return;
                }
                if (str.equalsIgnoreCase("schema-location")) {
                    if (!(obj instanceof String) && obj != null) {
                        throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                    }
                    if (obj == null) {
                        this.fSchemaLocation = null;
                        this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", null);
                        return;
                    }
                    this.fSchemaLocation = (String) obj;
                    StringTokenizer stringTokenizer = new StringTokenizer(this.fSchemaLocation, " \n\t\r");
                    if (!stringTokenizer.hasMoreTokens()) {
                        this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", obj);
                        return;
                    }
                    this.fSchemaLocations.clear();
                    this.fSchemaLocations.add(stringTokenizer.nextToken());
                    while (stringTokenizer.hasMoreTokens()) {
                        this.fSchemaLocations.add(stringTokenizer.nextToken());
                    }
                    this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", this.fSchemaLocations.toArray());
                    return;
                }
                if (!str.equalsIgnoreCase("schema-type")) {
                    if (!str.equalsIgnoreCase("http://apache.org/xml/properties/dom/document-class-name")) {
                        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
                    }
                    this.fConfiguration.setProperty("http://apache.org/xml/properties/dom/document-class-name", obj);
                    return;
                }
                if (!(obj instanceof String) && obj != null) {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
                if (obj == null) {
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", false);
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema-full-checking", false);
                    this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", null);
                    this.fSchemaType = null;
                    return;
                }
                String str4 = Constants.NS_XMLSCHEMA;
                if (obj.equals(str4)) {
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", true);
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema-full-checking", true);
                    this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", str4);
                    this.fSchemaType = str4;
                    return;
                }
                String str5 = Constants.NS_DTD;
                if (obj.equals(str5)) {
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", false);
                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema-full-checking", false);
                    this.fConfiguration.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", str5);
                    this.fSchemaType = str5;
                    return;
                }
                return;
            } catch (XMLConfigurationException unused) {
                return;
            }
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        try {
            if (str.equalsIgnoreCase("comments")) {
                this.fConfiguration.setFeature("http://apache.org/xml/features/include-comments", booleanValue);
            } else if (str.equalsIgnoreCase("datatype-normalization")) {
                this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema/normalized-value", booleanValue);
            } else if (str.equalsIgnoreCase("entities")) {
                this.fConfiguration.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", booleanValue);
            } else if (str.equalsIgnoreCase("disallow-doctype")) {
                this.fConfiguration.setFeature("http://apache.org/xml/features/disallow-doctype-decl", booleanValue);
            } else {
                try {
                    if (!str.equalsIgnoreCase("supported-media-types-only") && !str.equalsIgnoreCase("normalize-characters") && !str.equalsIgnoreCase("check-character-normalization") && !str.equalsIgnoreCase("canonical-form")) {
                        if (str.equalsIgnoreCase("namespaces")) {
                            this.fConfiguration.setFeature("http://xml.org/sax/features/namespaces", booleanValue);
                        } else {
                            str3 = "namespace-declarations";
                            if (str.equalsIgnoreCase("infoset")) {
                                if (booleanValue) {
                                    this.fConfiguration.setFeature("http://xml.org/sax/features/namespaces", true);
                                    this.fConfiguration.setFeature("namespace-declarations", true);
                                    this.fConfiguration.setFeature("http://apache.org/xml/features/include-comments", true);
                                    this.fConfiguration.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", true);
                                    this.fConfiguration.setFeature(DYNAMIC_VALIDATION, false);
                                    this.fConfiguration.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", false);
                                    this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema/normalized-value", false);
                                    this.fConfiguration.setFeature("http://apache.org/xml/features/create-cdata-nodes", false);
                                }
                            } else if (str.equalsIgnoreCase("cdata-sections")) {
                                this.fConfiguration.setFeature("http://apache.org/xml/features/create-cdata-nodes", booleanValue);
                            } else {
                                if (!str.equalsIgnoreCase("namespace-declarations")) {
                                    if (!str.equalsIgnoreCase("well-formed") && !str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
                                        if (str.equalsIgnoreCase("validate")) {
                                            this.fConfiguration.setFeature("http://xml.org/sax/features/validation", booleanValue);
                                            if (this.fSchemaType != Constants.NS_DTD) {
                                                this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", booleanValue);
                                                this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema-full-checking", booleanValue);
                                            }
                                            if (booleanValue) {
                                                this.fConfiguration.setFeature(DYNAMIC_VALIDATION, false);
                                            }
                                        } else if (str.equalsIgnoreCase("validate-if-schema")) {
                                            this.fConfiguration.setFeature(DYNAMIC_VALIDATION, booleanValue);
                                            if (booleanValue) {
                                                this.fConfiguration.setFeature("http://xml.org/sax/features/validation", false);
                                            }
                                        } else if (str.equalsIgnoreCase("element-content-whitespace")) {
                                            this.fConfiguration.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", booleanValue);
                                        } else if (str.equalsIgnoreCase("psvi")) {
                                            this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
                                            this.fConfiguration.setProperty("http://apache.org/xml/properties/dom/document-class-name", "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl");
                                        } else {
                                            this.fConfiguration.setFeature(str.toLowerCase(Locale.ENGLISH), booleanValue);
                                        }
                                    }
                                    throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                                }
                                this.fConfiguration.setFeature("namespace-declarations", booleanValue);
                            }
                        }
                    }
                    if (booleanValue) {
                        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                    }
                } catch (XMLConfigurationException unused2) {
                    throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", str2, new Object[]{str}));
                }
            }
        } catch (XMLConfigurationException unused3) {
            str2 = str3;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser, com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
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

    public DOMParserImpl(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fNamespaceDeclarations = true;
        this.fSchemaType = null;
        this.fBusy = false;
        this.abortNow = false;
        this.fSchemaLocations = new Vector();
        this.fSchemaLocation = null;
        this.abortHandler = new AbortHandler();
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

    public DOMParserImpl(SymbolTable symbolTable) {
        this((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }

    public DOMParserImpl(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
    }
}
