package org.apache.xerces.parsers;

import java.io.IOException;
import java.util.Locale;
import org.apache.xerces.impl.XMLDTDScannerImpl;
import org.apache.xerces.impl.XMLDocumentScannerImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.XMLNamespaceBinder;
import org.apache.xerces.impl.dtd.XMLDTDProcessor;
import org.apache.xerces.impl.dtd.XMLDTDValidator;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.impl.p115dv.DTDDVFactory;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDContentModelSource;
import org.apache.xerces.xni.parser.XMLDTDScanner;
import org.apache.xerces.xni.parser.XMLDocumentScanner;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLPullParserConfiguration;

/* loaded from: classes13.dex */
public class DTDConfiguration extends BasicParserConfiguration implements XMLPullParserConfiguration {
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String DATATYPE_VALIDATOR_FACTORY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    protected static final String DOCUMENT_SCANNER = "http://apache.org/xml/properties/internal/document-scanner";
    protected static final String DTD_PROCESSOR = "http://apache.org/xml/properties/internal/dtd-processor";
    protected static final String DTD_SCANNER = "http://apache.org/xml/properties/internal/dtd-scanner";
    protected static final String DTD_VALIDATOR = "http://apache.org/xml/properties/internal/validator/dtd";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String LOAD_EXTERNAL_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
    protected static final String LOCALE = "http://apache.org/xml/properties/locale";
    protected static final String NAMESPACE_BINDER = "http://apache.org/xml/properties/internal/namespace-binder";
    protected static final String NOTIFY_BUILTIN_REFS = "http://apache.org/xml/features/scanner/notify-builtin-refs";
    protected static final String NOTIFY_CHAR_REFS = "http://apache.org/xml/features/scanner/notify-char-refs";
    protected static final boolean PRINT_EXCEPTION_STACK_TRACE = false;
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";
    protected static final String WARN_ON_DUPLICATE_ENTITYDEF = "http://apache.org/xml/features/warn-on-duplicate-entitydef";
    protected static final String WARN_ON_UNDECLARED_ELEMDEF = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef";
    protected static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected XMLDTDProcessor fDTDProcessor;
    protected XMLDTDScanner fDTDScanner;
    protected XMLDTDValidator fDTDValidator;
    protected DTDDVFactory fDatatypeValidatorFactory;
    protected XMLEntityManager fEntityManager;
    protected XMLErrorReporter fErrorReporter;
    protected XMLGrammarPool fGrammarPool;
    protected XMLInputSource fInputSource;
    protected XMLLocator fLocator;
    protected XMLNamespaceBinder fNamespaceBinder;
    protected boolean fParseInProgress;
    protected XMLDocumentScanner fScanner;
    protected ValidationManager fValidationManager;

    public DTDConfiguration() {
        this(null, null, null);
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration, org.apache.xerces.util.ParserConfigurationSettings
    public void checkFeature(String str) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/")) {
            int length = str.length() - 31;
            if (length == 18 && str.endsWith("validation/dynamic")) {
                return;
            }
            if (length == 35 && str.endsWith("validation/default-attribute-values")) {
                throw new XMLConfigurationException((short) 1, str);
            }
            if (length == 34 && str.endsWith("validation/validate-content-models")) {
                throw new XMLConfigurationException((short) 1, str);
            }
            if (length == 30 && str.endsWith("nonvalidating/load-dtd-grammar")) {
                return;
            }
            if (length == 31 && str.endsWith("nonvalidating/load-external-dtd")) {
                return;
            }
            if (length == 29 && str.endsWith("validation/validate-datatypes")) {
                throw new XMLConfigurationException((short) 1, str);
            }
        }
        super.checkFeature(str);
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration, org.apache.xerces.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/") && str.length() - 33 == 20 && str.endsWith("internal/dtd-scanner")) {
            return;
        }
        super.checkProperty(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLPullParserConfiguration
    public void cleanup() {
        this.fEntityManager.closeReaders();
    }

    public void configureDTDPipeline() {
        XMLDTDContentModelHandler xMLDTDContentModelHandler;
        XMLDTDContentModelSource xMLDTDContentModelSource;
        XMLDTDScanner xMLDTDScanner = this.fDTDScanner;
        if (xMLDTDScanner != null) {
            this.fProperties.put(DTD_SCANNER, xMLDTDScanner);
            XMLDTDProcessor xMLDTDProcessor = this.fDTDProcessor;
            if (xMLDTDProcessor != null) {
                this.fProperties.put(DTD_PROCESSOR, xMLDTDProcessor);
                this.fDTDScanner.setDTDHandler(this.fDTDProcessor);
                this.fDTDProcessor.setDTDSource(this.fDTDScanner);
                this.fDTDProcessor.setDTDHandler(this.fDTDHandler);
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                if (xMLDTDHandler != null) {
                    xMLDTDHandler.setDTDSource(this.fDTDProcessor);
                }
                this.fDTDScanner.setDTDContentModelHandler(this.fDTDProcessor);
                this.fDTDProcessor.setDTDContentModelSource(this.fDTDScanner);
                this.fDTDProcessor.setDTDContentModelHandler(this.fDTDContentModelHandler);
                xMLDTDContentModelHandler = this.fDTDContentModelHandler;
                if (xMLDTDContentModelHandler == null) {
                    return;
                } else {
                    xMLDTDContentModelSource = this.fDTDProcessor;
                }
            } else {
                this.fDTDScanner.setDTDHandler(this.fDTDHandler);
                XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
                if (xMLDTDHandler2 != null) {
                    xMLDTDHandler2.setDTDSource(this.fDTDScanner);
                }
                this.fDTDScanner.setDTDContentModelHandler(this.fDTDContentModelHandler);
                xMLDTDContentModelHandler = this.fDTDContentModelHandler;
                if (xMLDTDContentModelHandler == null) {
                    return;
                } else {
                    xMLDTDContentModelSource = this.fDTDScanner;
                }
            }
            xMLDTDContentModelHandler.setDTDContentModelSource(xMLDTDContentModelSource);
        }
    }

    public void configurePipeline() {
        XMLDocumentSource xMLDocumentSource;
        XMLNamespaceBinder xMLNamespaceBinder;
        XMLDocumentSource xMLDocumentSource2;
        XMLDTDValidator xMLDTDValidator = this.fDTDValidator;
        if (xMLDTDValidator != null) {
            this.fScanner.setDocumentHandler(xMLDTDValidator);
            if (this.fFeatures.get("http://xml.org/sax/features/namespaces") == Boolean.TRUE) {
                this.fDTDValidator.setDocumentHandler(this.fNamespaceBinder);
                this.fDTDValidator.setDocumentSource(this.fScanner);
                this.fNamespaceBinder.setDocumentHandler(this.fDocumentHandler);
                xMLNamespaceBinder = this.fNamespaceBinder;
                xMLDocumentSource2 = this.fDTDValidator;
                xMLNamespaceBinder.setDocumentSource(xMLDocumentSource2);
                xMLDocumentSource = this.fNamespaceBinder;
            } else {
                this.fDTDValidator.setDocumentHandler(this.fDocumentHandler);
                this.fDTDValidator.setDocumentSource(this.fScanner);
                xMLDocumentSource = this.fDTDValidator;
            }
        } else if (this.fFeatures.get("http://xml.org/sax/features/namespaces") == Boolean.TRUE) {
            this.fScanner.setDocumentHandler(this.fNamespaceBinder);
            this.fNamespaceBinder.setDocumentHandler(this.fDocumentHandler);
            xMLNamespaceBinder = this.fNamespaceBinder;
            xMLDocumentSource2 = this.fScanner;
            xMLNamespaceBinder.setDocumentSource(xMLDocumentSource2);
            xMLDocumentSource = this.fNamespaceBinder;
        } else {
            this.fScanner.setDocumentHandler(this.fDocumentHandler);
            xMLDocumentSource = this.fScanner;
        }
        this.fLastComponent = xMLDocumentSource;
        configureDTDPipeline();
    }

    public XMLDTDProcessor createDTDProcessor() {
        return new XMLDTDProcessor();
    }

    public XMLDTDScanner createDTDScanner() {
        return new XMLDTDScannerImpl();
    }

    public XMLDTDValidator createDTDValidator() {
        return new XMLDTDValidator();
    }

    public DTDDVFactory createDatatypeValidatorFactory() {
        return DTDDVFactory.getInstance();
    }

    public XMLDocumentScanner createDocumentScanner() {
        return new XMLDocumentScannerImpl();
    }

    public XMLEntityManager createEntityManager() {
        return new XMLEntityManager();
    }

    public XMLErrorReporter createErrorReporter() {
        return new XMLErrorReporter();
    }

    public XMLNamespaceBinder createNamespaceBinder() {
        return new XMLNamespaceBinder();
    }

    public ValidationManager createValidationManager() {
        return new ValidationManager();
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings, org.apache.xerces.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        return "http://apache.org/xml/properties/locale".equals(str) ? getLocale() : super.getProperty(str);
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration, org.apache.xerces.xni.parser.XMLParserConfiguration
    public void parse(XMLInputSource xMLInputSource) throws XNIException, IOException {
        if (this.fParseInProgress) {
            throw new XNIException("FWK005 parse may not be called while parsing.");
        }
        this.fParseInProgress = true;
        try {
            try {
                try {
                    try {
                        try {
                            setInputSource(xMLInputSource);
                            parse(true);
                        } catch (RuntimeException e) {
                            throw e;
                        }
                    } catch (IOException e2) {
                        throw e2;
                    }
                } catch (Exception e3) {
                    throw new XNIException(e3);
                }
            } catch (XNIException e4) {
                throw e4;
            }
        } finally {
            this.fParseInProgress = false;
            cleanup();
        }
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration
    public void reset() throws XNIException {
        ValidationManager validationManager = this.fValidationManager;
        if (validationManager != null) {
            validationManager.reset();
        }
        configurePipeline();
        super.reset();
    }

    @Override // org.apache.xerces.xni.parser.XMLPullParserConfiguration
    public void setInputSource(XMLInputSource xMLInputSource) throws XMLConfigurationException, IOException {
        this.fInputSource = xMLInputSource;
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration, org.apache.xerces.xni.parser.XMLParserConfiguration
    public void setLocale(Locale locale) throws XNIException {
        super.setLocale(locale);
        this.fErrorReporter.setLocale(locale);
    }

    @Override // org.apache.xerces.parsers.BasicParserConfiguration, org.apache.xerces.util.ParserConfigurationSettings
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if ("http://apache.org/xml/properties/locale".equals(str)) {
            setLocale((Locale) obj);
        }
        super.setProperty(str, obj);
    }

    public DTDConfiguration(SymbolTable symbolTable) {
        this(symbolTable, null, null);
    }

    @Override // org.apache.xerces.xni.parser.XMLPullParserConfiguration
    public boolean parse(boolean z) throws XNIException, IOException {
        if (this.fInputSource != null) {
            try {
                reset();
                this.fScanner.setInputSource(this.fInputSource);
                this.fInputSource = null;
            } catch (IOException e) {
                throw e;
            } catch (XNIException e2) {
                throw e2;
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception e4) {
                throw new XNIException(e4);
            }
        }
        try {
            return this.fScanner.scanDocument(z);
        } catch (IOException e5) {
            throw e5;
        } catch (XNIException e6) {
            throw e6;
        } catch (RuntimeException e7) {
            throw e7;
        } catch (Exception e8) {
            throw new XNIException(e8);
        }
    }

    public DTDConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public DTDConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLComponentManager);
        this.fParseInProgress = false;
        addRecognizedFeatures(new String[]{"http://apache.org/xml/features/continue-after-fatal-error", "http://apache.org/xml/features/nonvalidating/load-external-dtd"});
        setFeature("http://apache.org/xml/features/continue-after-fatal-error", false);
        setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", true);
        addRecognizedProperties(new String[]{"http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager", DOCUMENT_SCANNER, DTD_SCANNER, DTD_PROCESSOR, DTD_VALIDATOR, NAMESPACE_BINDER, "http://apache.org/xml/properties/internal/grammar-pool", DATATYPE_VALIDATOR_FACTORY, "http://apache.org/xml/properties/internal/validation-manager", "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://apache.org/xml/properties/locale"});
        this.fGrammarPool = xMLGrammarPool;
        if (xMLGrammarPool != null) {
            setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
        }
        XMLEntityManager createEntityManager = createEntityManager();
        this.fEntityManager = createEntityManager;
        setProperty("http://apache.org/xml/properties/internal/entity-manager", createEntityManager);
        addComponent(this.fEntityManager);
        XMLErrorReporter createErrorReporter = createErrorReporter();
        this.fErrorReporter = createErrorReporter;
        createErrorReporter.setDocumentLocator(this.fEntityManager.getEntityScanner());
        setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        addComponent(this.fErrorReporter);
        XMLDocumentScanner createDocumentScanner = createDocumentScanner();
        this.fScanner = createDocumentScanner;
        setProperty(DOCUMENT_SCANNER, createDocumentScanner);
        XMLDocumentScanner xMLDocumentScanner = this.fScanner;
        if (xMLDocumentScanner instanceof XMLComponent) {
            addComponent((XMLComponent) xMLDocumentScanner);
        }
        XMLDTDScanner createDTDScanner = createDTDScanner();
        this.fDTDScanner = createDTDScanner;
        if (createDTDScanner != null) {
            setProperty(DTD_SCANNER, createDTDScanner);
            XMLDTDScanner xMLDTDScanner = this.fDTDScanner;
            if (xMLDTDScanner instanceof XMLComponent) {
                addComponent((XMLComponent) xMLDTDScanner);
            }
        }
        XMLDTDProcessor createDTDProcessor = createDTDProcessor();
        this.fDTDProcessor = createDTDProcessor;
        if (createDTDProcessor != null) {
            setProperty(DTD_PROCESSOR, createDTDProcessor);
            addComponent(this.fDTDProcessor);
        }
        XMLDTDValidator createDTDValidator = createDTDValidator();
        this.fDTDValidator = createDTDValidator;
        if (createDTDValidator != null) {
            setProperty(DTD_VALIDATOR, createDTDValidator);
            addComponent(this.fDTDValidator);
        }
        XMLNamespaceBinder createNamespaceBinder = createNamespaceBinder();
        this.fNamespaceBinder = createNamespaceBinder;
        if (createNamespaceBinder != null) {
            setProperty(NAMESPACE_BINDER, createNamespaceBinder);
            addComponent(this.fNamespaceBinder);
        }
        DTDDVFactory createDatatypeValidatorFactory = createDatatypeValidatorFactory();
        this.fDatatypeValidatorFactory = createDatatypeValidatorFactory;
        if (createDatatypeValidatorFactory != null) {
            setProperty(DATATYPE_VALIDATOR_FACTORY, createDatatypeValidatorFactory);
        }
        ValidationManager createValidationManager = createValidationManager();
        this.fValidationManager = createValidationManager;
        if (createValidationManager != null) {
            setProperty("http://apache.org/xml/properties/internal/validation-manager", createValidationManager);
        }
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
        }
        try {
            setLocale(Locale.getDefault());
        } catch (XNIException unused) {
        }
    }
}
