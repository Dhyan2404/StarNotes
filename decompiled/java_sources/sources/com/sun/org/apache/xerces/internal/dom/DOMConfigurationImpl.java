package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.msg.XMLMessageFormatter;
import com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.util.DOMEntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.MessageFormatter;
import com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Vector;
import org.apache.xerces.impl.dtd.DTDGrammar;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes10.dex */
public class DOMConfigurationImpl extends ParserConfigurationSettings implements XMLParserConfiguration, DOMConfiguration {
    protected static final short CDATA = 8;
    protected static final short COMMENTS = 32;
    protected static final String DTD_VALIDATOR_FACTORY_PROPERTY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    protected static final short DTNORMALIZATION = 2;
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final short ENTITIES = 4;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final short INFOSET_FALSE_PARAMS = 14;
    protected static final short INFOSET_MASK = 815;
    protected static final short INFOSET_TRUE_PARAMS = 801;
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final short NAMESPACES = 1;
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final short NSDECL = 512;
    protected static final short PSVI = 128;
    protected static final String SCHEMA = "http://apache.org/xml/features/validation/schema";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SEND_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final short SPLITCDATA = 16;
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final short VALIDATE = 64;
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final short WELLFORMED = 256;
    protected static final String XERCES_NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String XERCES_VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String XML_STRING = "http://xml.org/sax/properties/xml-string";
    protected ArrayList fComponents;
    XMLDocumentHandler fDocumentHandler;
    protected final DOMErrorHandlerWrapper fErrorHandlerWrapper;
    protected XMLErrorReporter fErrorReporter;
    protected Locale fLocale;
    private DOMStringList fRecognizedParameters;
    protected SymbolTable fSymbolTable;
    protected ValidationManager fValidationManager;
    protected short features;

    public DOMConfigurationImpl() {
        this(null, null);
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
                return (obj instanceof String) && obj.equals(Constants.NS_XMLSCHEMA);
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
                return obj instanceof SymbolTable;
            }
            if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/grammar-pool")) {
                return obj instanceof XMLGrammarPool;
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

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        if (str.startsWith("http://xml.org/sax/properties/") && str.length() - 30 == 10 && str.endsWith("xml-string")) {
            throw new XMLConfigurationException((short) 1, str);
        }
        super.checkProperty(str);
    }

    public ValidationManager createValidationManager() {
        return new ValidationManager();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public XMLDTDHandler getDTDHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public XMLEntityResolver getEntityResolver() {
        return (XMLEntityResolver) this.fProperties.get("http://apache.org/xml/properties/internal/entity-resolver");
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public XMLErrorHandler getErrorHandler() {
        return (XMLErrorHandler) this.fProperties.get("http://apache.org/xml/properties/internal/error-handler");
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
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
            return getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
            return getProperty("http://apache.org/xml/properties/internal/symbol-table");
        }
        if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/grammar-pool")) {
            return getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.fRecognizedParameters == null) {
            Vector vector = new Vector();
            vector.add("comments");
            vector.add("datatype-normalization");
            vector.add("cdata-sections");
            vector.add("entities");
            vector.add("split-cdata-sections");
            vector.add("namespaces");
            vector.add("validate");
            vector.add("infoset");
            vector.add("normalize-characters");
            vector.add("canonical-form");
            vector.add("validate-if-schema");
            vector.add("check-character-normalization");
            vector.add("well-formed");
            vector.add("namespace-declarations");
            vector.add("element-content-whitespace");
            vector.add("error-handler");
            vector.add("schema-type");
            vector.add("schema-location");
            vector.add("resource-resolver");
            vector.add("http://apache.org/xml/properties/internal/grammar-pool");
            vector.add("http://apache.org/xml/properties/internal/symbol-table");
            vector.add("http://apache.org/xml/features/validation/schema/augment-psvi");
            this.fRecognizedParameters = new DOMStringListImpl(vector);
        }
        return this.fRecognizedParameters;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
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

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        if (xMLEntityResolver != null) {
            this.fProperties.put("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        if (xMLErrorHandler != null) {
            this.fProperties.put("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        super.setFeature(str, z);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setLocale(Locale locale) throws XNIException {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        boolean z = obj instanceof Boolean;
        boolean z2 = true;
        if (z) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (str.equalsIgnoreCase("comments")) {
                this.features = (short) (booleanValue ? this.features | 32 : this.features & (-33));
            } else if (str.equalsIgnoreCase("datatype-normalization")) {
                setFeature("http://apache.org/xml/features/validation/schema/normalized-value", booleanValue);
                short s = this.features;
                short s2 = (short) (booleanValue ? s | 2 : s & (-3));
                this.features = s2;
                if (booleanValue) {
                    this.features = (short) (s2 | 64);
                }
            } else if (str.equalsIgnoreCase("namespaces")) {
                this.features = (short) (booleanValue ? this.features | 1 : this.features & (-2));
            } else if (str.equalsIgnoreCase("cdata-sections")) {
                this.features = (short) (booleanValue ? this.features | 8 : this.features & (-9));
            } else if (str.equalsIgnoreCase("entities")) {
                this.features = (short) (booleanValue ? this.features | 4 : this.features & (-5));
            } else if (str.equalsIgnoreCase("split-cdata-sections")) {
                this.features = (short) (booleanValue ? this.features | 16 : this.features & (-17));
            } else if (str.equalsIgnoreCase("validate")) {
                this.features = (short) (booleanValue ? this.features | 64 : this.features & (-65));
            } else if (str.equalsIgnoreCase("well-formed")) {
                this.features = (short) (booleanValue ? this.features | 256 : this.features & (-257));
            } else if (str.equalsIgnoreCase("namespace-declarations")) {
                this.features = (short) (booleanValue ? this.features | 512 : this.features & (-513));
            } else if (str.equalsIgnoreCase("infoset")) {
                if (booleanValue) {
                    this.features = (short) (((short) (this.features | INFOSET_TRUE_PARAMS)) & (-15));
                    setFeature("http://apache.org/xml/features/validation/schema/normalized-value", false);
                }
            } else if (str.equalsIgnoreCase("normalize-characters") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("check-character-normalization")) {
                if (booleanValue) {
                    throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                }
            } else if (str.equalsIgnoreCase("element-content-whitespace")) {
                if (!booleanValue) {
                    throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                }
            } else if (str.equalsIgnoreCase("http://apache.org/xml/features/validation/schema/augment-psvi")) {
                if (!booleanValue) {
                    throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                }
            } else if (str.equalsIgnoreCase("psvi")) {
                this.features = (short) (booleanValue ? this.features | 128 : this.features & DTDGrammar.f112101e1);
            } else {
                z2 = false;
            }
        }
        if (z2 && z) {
            return;
        }
        if (str.equalsIgnoreCase("error-handler")) {
            if (!(obj instanceof DOMErrorHandler) && obj != null) {
                throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
            }
            this.fErrorHandlerWrapper.setErrorHandler((DOMErrorHandler) obj);
            setErrorHandler(this.fErrorHandlerWrapper);
            return;
        }
        try {
            if (str.equalsIgnoreCase("resource-resolver")) {
                if (obj instanceof LSResourceResolver) {
                    setEntityResolver(new DOMEntityResolverWrapper((LSResourceResolver) obj));
                }
                if (obj == null) {
                    setEntityResolver(new DOMEntityResolverWrapper((LSResourceResolver) obj));
                } else {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
            }
            if (str.equalsIgnoreCase("schema-location")) {
                if (!(obj instanceof String) && obj != null) {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
                setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", obj);
            } else {
                if (!str.equalsIgnoreCase("schema-type")) {
                    if (str.equalsIgnoreCase("http://apache.org/xml/properties/internal/symbol-table")) {
                        if (!(obj instanceof SymbolTable)) {
                            throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                        }
                        setProperty("http://apache.org/xml/properties/internal/symbol-table", obj);
                        return;
                    } else {
                        if (!str.equalsIgnoreCase("http://apache.org/xml/properties/internal/grammar-pool")) {
                            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
                        }
                        if (!(obj instanceof XMLGrammarPool)) {
                            throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                        }
                        setProperty("http://apache.org/xml/properties/internal/grammar-pool", obj);
                        return;
                    }
                }
                if (!(obj instanceof String) && obj != null) {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
                if (obj == null) {
                    setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", null);
                } else {
                    String str2 = Constants.NS_XMLSCHEMA;
                    if (obj.equals(str2)) {
                        setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", str2);
                    } else {
                        String str3 = Constants.NS_DTD;
                        if (obj.equals(str3)) {
                            setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", str3);
                        }
                    }
                }
            }
        } catch (XMLConfigurationException unused) {
        }
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
    }

    public DOMConfigurationImpl(SymbolTable symbolTable) {
        this(symbolTable, null);
    }

    public DOMConfigurationImpl(SymbolTable symbolTable, XMLComponentManager xMLComponentManager) {
        super(xMLComponentManager);
        MessageFormatter messageFormatter;
        this.features = (short) 0;
        this.fErrorHandlerWrapper = new DOMErrorHandlerWrapper();
        this.fRecognizedFeatures = new ArrayList();
        this.fRecognizedProperties = new ArrayList();
        this.fFeatures = new HashMap();
        this.fProperties = new HashMap();
        addRecognizedFeatures(new String[]{"http://xml.org/sax/features/validation", "http://xml.org/sax/features/namespaces", "http://apache.org/xml/features/validation/schema", "http://apache.org/xml/features/validation/schema-full-checking", DYNAMIC_VALIDATION, "http://apache.org/xml/features/validation/schema/normalized-value", "http://apache.org/xml/features/validation/schema/augment-psvi"});
        setFeature("http://xml.org/sax/features/validation", false);
        setFeature("http://apache.org/xml/features/validation/schema", false);
        setFeature("http://apache.org/xml/features/validation/schema-full-checking", false);
        setFeature(DYNAMIC_VALIDATION, false);
        setFeature("http://apache.org/xml/features/validation/schema/normalized-value", false);
        setFeature("http://xml.org/sax/features/namespaces", true);
        setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
        addRecognizedProperties(new String[]{XML_STRING, "http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/internal/grammar-pool", "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage", DTD_VALIDATOR_FACTORY_PROPERTY});
        this.features = (short) (((short) (((short) (((short) (((short) (((short) (((short) (this.features | 1)) | 4)) | 32)) | 8)) | 16)) | 256)) | 512);
        this.fSymbolTable = symbolTable == null ? new SymbolTable() : symbolTable;
        this.fComponents = new ArrayList();
        setProperty("http://apache.org/xml/properties/internal/symbol-table", this.fSymbolTable);
        XMLErrorReporter xMLErrorReporter = new XMLErrorReporter();
        this.fErrorReporter = xMLErrorReporter;
        setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        addComponent(this.fErrorReporter);
        setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, DTDDVFactory.getInstance());
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
                messageFormatter = (MessageFormatter) ObjectFactory.newInstance("com.sun.org.apache.xerces.internal.impl.xs.XSMessageFormatter", ObjectFactory.findClassLoader(), true);
            } catch (Exception unused) {
                messageFormatter = null;
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
