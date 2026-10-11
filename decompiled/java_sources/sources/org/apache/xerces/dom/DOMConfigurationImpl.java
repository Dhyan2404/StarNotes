package org.apache.xerces.dom;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.impl.p115dv.DTDDVFactory;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMErrorHandlerWrapper;
import org.apache.xerces.util.MessageFormatter;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes13.dex */
public class DOMConfigurationImpl extends ParserConfigurationSettings implements XMLParserConfiguration, DOMConfiguration {
    protected static final String BALANCE_SYNTAX_TREES = "http://apache.org/xml/features/validation/balance-syntax-trees";
    protected static final short CDATA = 8;
    protected static final short COMMENTS = 32;
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String DTD_VALIDATOR_FACTORY_PROPERTY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    protected static final String DTD_VALIDATOR_PROPERTY = "http://apache.org/xml/properties/internal/validator/dtd";
    protected static final short DTNORMALIZATION = 2;
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final short ENTITIES = 4;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final short INFOSET_FALSE_PARAMS = 14;
    protected static final short INFOSET_MASK = 815;
    protected static final short INFOSET_TRUE_PARAMS = 801;
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final short NAMESPACES = 1;
    protected static final String NAMESPACE_GROWTH = "http://apache.org/xml/features/namespace-growth";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final short NSDECL = 512;
    protected static final short PSVI = 128;
    protected static final String SCHEMA = "http://apache.org/xml/features/validation/schema";
    protected static final String SCHEMA_DV_FACTORY = "http://apache.org/xml/properties/internal/validation/schema/dv-factory";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String SEND_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final short SPLITCDATA = 16;
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String TOLERATE_DUPLICATES = "http://apache.org/xml/features/internal/tolerate-duplicates";
    protected static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    protected static final short VALIDATE = 64;
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";
    protected static final short WELLFORMED = 256;
    protected static final String XERCES_NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String XERCES_VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String XML11_DATATYPE_VALIDATOR_FACTORY = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl";
    protected static final String XML_STRING = "http://xml.org/sax/properties/xml-string";

    /* renamed from: e */
    public XMLDocumentHandler f111867e;

    /* renamed from: f */
    public String f111868f;
    protected ArrayList fComponents;
    protected DTDDVFactory fCurrentDVFactory;
    protected DTDDVFactory fDatatypeValidatorFactory;
    protected final DOMErrorHandlerWrapper fErrorHandlerWrapper;
    protected XMLErrorReporter fErrorReporter;
    protected Locale fLocale;
    protected SymbolTable fSymbolTable;
    protected ValidationManager fValidationManager;
    protected DTDDVFactory fXML11DatatypeFactory;
    protected short features;

    /* renamed from: g */
    public DOMStringList f111869g;

    public DOMConfigurationImpl() {
        this(null, null);
    }

    /* renamed from: a */
    public static DOMException m69739a(String str) {
        return new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    /* renamed from: b */
    public static DOMException m69740b(String str) {
        return new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
    }

    /* renamed from: c */
    public static DOMException m69741c(String str) {
        return new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
    }

    public void addComponent(XMLComponent xMLComponent) {
        if (this.fComponents.contains(xMLComponent)) {
            return;
        }
        this.fComponents.add(xMLComponent);
        addRecognizedFeatures(xMLComponent.getRecognizedFeatures());
        addRecognizedProperties(xMLComponent.getRecognizedProperties());
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
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
            if (str.equalsIgnoreCase("schema-location")) {
                return obj instanceof String;
            }
            if (str.equalsIgnoreCase("schema-type")) {
                return (obj instanceof String) && (obj.equals(Constants.NS_XMLSCHEMA) || obj.equals(Constants.NS_DTD));
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/entity-resolver")) {
                return obj instanceof XMLEntityResolver;
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
                return obj instanceof SymbolTable;
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/grammar-pool")) {
                return obj instanceof XMLGrammarPool;
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/security-manager")) {
                return obj instanceof SecurityManager;
            }
            return false;
        }
        if (str.equalsIgnoreCase("comments") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("cdata-sections") || str.equalsIgnoreCase("entities") || str.equalsIgnoreCase("split-cdata-sections") || str.equalsIgnoreCase("namespaces") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("well-formed") || str.equalsIgnoreCase("infoset") || str.equalsIgnoreCase("namespace-declarations")) {
            return true;
        }
        if (str.equalsIgnoreCase("normalize-characters") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("check-character-normalization")) {
            return true ^ obj.equals(Boolean.TRUE);
        }
        if (str.equalsIgnoreCase("element-content-whitespace") || str.equalsIgnoreCase("http://apache.org/xml/features/validation/schema/augment-psvi")) {
            return obj.equals(Boolean.TRUE);
        }
        return false;
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        if (str.startsWith("http://xml.org/sax/properties/") && str.length() - 30 == 10 && str.endsWith("xml-string")) {
            throw new XMLConfigurationException((short) 1, str);
        }
        super.checkProperty(str);
    }

    public ValidationManager createValidationManager() {
        return new ValidationManager();
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public XMLDTDHandler getDTDHandler() {
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public XMLDocumentHandler getDocumentHandler() {
        return this.f111867e;
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public XMLEntityResolver getEntityResolver() {
        return (XMLEntityResolver) this.fProperties.get("http://apache.org/xml/properties/internal/entity-resolver");
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public XMLErrorHandler getErrorHandler() {
        return (XMLErrorHandler) this.fProperties.get("http://apache.org/xml/properties/internal/error-handler");
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings, org.apache.xerces.xni.parser.XMLComponentManager
    public boolean getFeature(String str) throws XMLConfigurationException {
        if (str.equals("http://apache.org/xml/features/internal/parser-settings")) {
            return true;
        }
        return super.getFeature(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public Locale getLocale() {
        return this.fLocale;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        if (str.equalsIgnoreCase("comments")) {
            return (this.features & 32) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespaces")) {
            return (this.features & 1) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("datatype-normalization")) {
            return (this.features & 2) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("cdata-sections")) {
            return (this.features & 8) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("entities")) {
            return (this.features & 4) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("split-cdata-sections")) {
            return (this.features & 16) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("validate")) {
            return (this.features & 64) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("well-formed")) {
            return (this.features & 256) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespace-declarations")) {
            return (this.features & 512) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("infoset")) {
            return (this.features & INFOSET_MASK) == 801 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("normalize-characters") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("check-character-normalization")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/features/validation/schema/augment-psvi")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("psvi")) {
            return (this.features & 128) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("element-content-whitespace")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("error-handler")) {
            return this.fErrorHandlerWrapper.getErrorHandler();
        }
        if (str.equalsIgnoreCase("resource-resolver")) {
            XMLEntityResolver entityResolver = getEntityResolver();
            if (entityResolver == null || !(entityResolver instanceof DOMEntityResolverWrapper)) {
                return null;
            }
            return ((DOMEntityResolverWrapper) entityResolver).getEntityResolver();
        }
        if (str.equalsIgnoreCase("schema-type")) {
            return getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
        }
        if (str.equalsIgnoreCase("schema-location")) {
            return this.f111868f;
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/entity-resolver")) {
            return getEntityResolver();
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
            return getProperty("http://apache.org/xml/properties/internal/symbol-table");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/grammar-pool")) {
            return getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/security-manager")) {
            return getProperty("http://apache.org/xml/properties/security-manager");
        }
        throw m69739a(str);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.f111869g == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("comments");
            arrayList.add("datatype-normalization");
            arrayList.add("cdata-sections");
            arrayList.add("entities");
            arrayList.add("split-cdata-sections");
            arrayList.add("namespaces");
            arrayList.add("validate");
            arrayList.add("infoset");
            arrayList.add("normalize-characters");
            arrayList.add("canonical-form");
            arrayList.add("validate-if-schema");
            arrayList.add("check-character-normalization");
            arrayList.add("well-formed");
            arrayList.add("namespace-declarations");
            arrayList.add("element-content-whitespace");
            arrayList.add("error-handler");
            arrayList.add("schema-type");
            arrayList.add("schema-location");
            arrayList.add("resource-resolver");
            arrayList.add("http://apache.org/xml/properties/internal/entity-resolver");
            arrayList.add("http://apache.org/xml/properties/internal/grammar-pool");
            arrayList.add("http://apache.org/xml/properties/security-manager");
            arrayList.add("http://apache.org/xml/properties/internal/symbol-table");
            arrayList.add("http://apache.org/xml/features/validation/schema/augment-psvi");
            this.f111869g = new DOMStringListImpl(arrayList);
        }
        return this.f111869g;
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void parse(XMLInputSource xMLInputSource) throws XNIException, IOException {
    }

    public void reset() throws XNIException {
        ValidationManager validationManager = this.fValidationManager;
        if (validationManager != null) {
            validationManager.reset();
        }
        int size = this.fComponents.size();
        for (int i = 0; i < size; i++) {
            ((XMLComponent) this.fComponents.get(i)).reset(this);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
    }

    public final void setDTDValidatorFactory(String str) {
        DTDDVFactory dTDDVFactory;
        if (SerializerConstants.XMLVERSION11.equals(str)) {
            DTDDVFactory dTDDVFactory2 = this.fCurrentDVFactory;
            dTDDVFactory = this.fXML11DatatypeFactory;
            if (dTDDVFactory2 == dTDDVFactory) {
                return;
            }
        } else {
            DTDDVFactory dTDDVFactory3 = this.fCurrentDVFactory;
            dTDDVFactory = this.fDatatypeValidatorFactory;
            if (dTDDVFactory3 == dTDDVFactory) {
                return;
            }
        }
        this.fCurrentDVFactory = dTDDVFactory;
        setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, dTDDVFactory);
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.f111867e = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.fProperties.put("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        if (xMLErrorHandler != null) {
            this.fProperties.put("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
        }
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        super.setFeature(str, z);
    }

    @Override // org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setLocale(Locale locale) throws XNIException {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0171  */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.String[]] */
    @Override // org.w3c.dom.DOMConfiguration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setParameter(java.lang.String r7, java.lang.Object r8) throws org.w3c.dom.DOMException {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.DOMConfigurationImpl.setParameter(java.lang.String, java.lang.Object):void");
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
    }

    public DOMConfigurationImpl(SymbolTable symbolTable) {
        this(symbolTable, null);
    }

    public DOMConfigurationImpl(SymbolTable symbolTable, XMLComponentManager xMLComponentManager) {
        super(xMLComponentManager);
        this.features = (short) 0;
        this.fErrorHandlerWrapper = new DOMErrorHandlerWrapper();
        MessageFormatter messageFormatter = null;
        this.f111868f = null;
        this.fRecognizedFeatures = new ArrayList();
        this.fRecognizedProperties = new ArrayList();
        this.fFeatures = new HashMap();
        this.fProperties = new HashMap();
        addRecognizedFeatures(new String[]{"http://xml.org/sax/features/validation", "http://xml.org/sax/features/namespaces", "http://apache.org/xml/features/validation/schema", "http://apache.org/xml/features/validation/schema-full-checking", DYNAMIC_VALIDATION, "http://apache.org/xml/features/validation/schema/normalized-value", "http://apache.org/xml/features/validation/schema/element-default", "http://apache.org/xml/features/validation/schema/augment-psvi", "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only", "http://apache.org/xml/features/disallow-doctype-decl", BALANCE_SYNTAX_TREES, WARN_ON_DUPLICATE_ATTDEF, "http://apache.org/xml/features/internal/parser-settings", NAMESPACE_GROWTH, TOLERATE_DUPLICATES});
        setFeature("http://xml.org/sax/features/validation", false);
        setFeature("http://apache.org/xml/features/validation/schema", false);
        setFeature("http://apache.org/xml/features/validation/schema-full-checking", false);
        setFeature(DYNAMIC_VALIDATION, false);
        setFeature("http://apache.org/xml/features/validation/schema/normalized-value", false);
        setFeature("http://apache.org/xml/features/validation/schema/element-default", false);
        setFeature("http://xml.org/sax/features/namespaces", true);
        setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
        setFeature("http://apache.org/xml/features/generate-synthetic-annotations", false);
        setFeature(VALIDATE_ANNOTATIONS, false);
        setFeature(HONOUR_ALL_SCHEMALOCATIONS, false);
        setFeature("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only", false);
        setFeature("http://apache.org/xml/features/disallow-doctype-decl", false);
        setFeature(BALANCE_SYNTAX_TREES, false);
        setFeature(WARN_ON_DUPLICATE_ATTDEF, false);
        setFeature("http://apache.org/xml/features/internal/parser-settings", true);
        setFeature(NAMESPACE_GROWTH, false);
        setFeature(TOLERATE_DUPLICATES, false);
        addRecognizedProperties(new String[]{XML_STRING, "http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/internal/grammar-pool", "http://apache.org/xml/properties/security-manager", "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage", SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, DTD_VALIDATOR_PROPERTY, DTD_VALIDATOR_FACTORY_PROPERTY, SCHEMA_DV_FACTORY});
        this.features = (short) (((short) (((short) (((short) (((short) (((short) (((short) (this.features | 1)) | 4)) | 32)) | 8)) | 16)) | 256)) | 512);
        this.fSymbolTable = symbolTable == null ? new SymbolTable() : symbolTable;
        this.fComponents = new ArrayList();
        setProperty("http://apache.org/xml/properties/internal/symbol-table", this.fSymbolTable);
        XMLErrorReporter xMLErrorReporter = new XMLErrorReporter();
        this.fErrorReporter = xMLErrorReporter;
        setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        addComponent(this.fErrorReporter);
        this.fDatatypeValidatorFactory = DTDDVFactory.getInstance();
        this.fXML11DatatypeFactory = DTDDVFactory.getInstance(XML11_DATATYPE_VALIDATOR_FACTORY);
        DTDDVFactory dTDDVFactory = this.fDatatypeValidatorFactory;
        this.fCurrentDVFactory = dTDDVFactory;
        setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, dTDDVFactory);
        XMLComponent xMLEntityManager = new XMLEntityManager();
        setProperty("http://apache.org/xml/properties/internal/entity-manager", xMLEntityManager);
        addComponent(xMLEntityManager);
        ValidationManager createValidationManager = createValidationManager();
        this.fValidationManager = createValidationManager;
        setProperty("http://apache.org/xml/properties/internal/validation-manager", createValidationManager);
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
        }
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            try {
                messageFormatter = (MessageFormatter) ObjectFactory.m69764h("org.apache.xerces.impl.xs.XSMessageFormatter", ObjectFactory.m69760d(), true);
            } catch (Exception unused) {
            }
            if (messageFormatter != null) {
                this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", messageFormatter);
            }
        }
        try {
            setLocale(Locale.getDefault());
        } catch (XNIException unused2) {
        }
    }
}
