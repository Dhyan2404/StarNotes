package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSMessageFormatter;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.util.DOMEntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import java.util.HashMap;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class XMLSchemaValidatorComponentManager extends ParserConfigurationSettings implements XMLComponentManager {
    private static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    private static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    private static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    private static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    private static final String SCHEMA_VALIDATOR = "http://apache.org/xml/properties/internal/validator/schema";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    private static final String VALIDATION = "http://xml.org/sax/features/validation";
    private static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    private static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private final HashMap fComponents;
    private boolean fConfigUpdated = true;
    private XMLEntityManager fEntityManager;
    private ErrorHandler fErrorHandler;
    private XMLErrorReporter fErrorReporter;
    private NamespaceContext fNamespaceContext;
    private LSResourceResolver fResourceResolver;
    private XMLSchemaValidator fSchemaValidator;
    private boolean fUseGrammarPoolOnly;
    private ValidationManager fValidationManager;

    public XMLSchemaValidatorComponentManager(XSGrammarPoolContainer xSGrammarPoolContainer) {
        HashMap hashMap = new HashMap();
        this.fComponents = hashMap;
        this.fErrorHandler = null;
        this.fResourceResolver = null;
        XMLEntityManager xMLEntityManager = new XMLEntityManager();
        this.fEntityManager = xMLEntityManager;
        hashMap.put("http://apache.org/xml/properties/internal/entity-manager", xMLEntityManager);
        XMLErrorReporter xMLErrorReporter = new XMLErrorReporter();
        this.fErrorReporter = xMLErrorReporter;
        hashMap.put("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        NamespaceSupport namespaceSupport = new NamespaceSupport();
        this.fNamespaceContext = namespaceSupport;
        hashMap.put("http://apache.org/xml/properties/internal/namespace-context", namespaceSupport);
        XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
        this.fSchemaValidator = xMLSchemaValidator;
        hashMap.put("http://apache.org/xml/properties/internal/validator/schema", xMLSchemaValidator);
        ValidationManager validationManager = new ValidationManager();
        this.fValidationManager = validationManager;
        hashMap.put("http://apache.org/xml/properties/internal/validation-manager", validationManager);
        hashMap.put("http://apache.org/xml/properties/internal/entity-resolver", null);
        hashMap.put("http://apache.org/xml/properties/internal/error-handler", null);
        hashMap.put("http://apache.org/xml/properties/security-manager", null);
        hashMap.put("http://apache.org/xml/properties/internal/symbol-table", new SymbolTable());
        hashMap.put("http://apache.org/xml/properties/internal/grammar-pool", xSGrammarPoolContainer.getGrammarPool());
        this.fUseGrammarPoolOnly = xSGrammarPoolContainer.isFullyComposed();
        this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        addRecognizedParamsAndSetDefaults(this.fEntityManager);
        addRecognizedParamsAndSetDefaults(this.fErrorReporter);
        addRecognizedParamsAndSetDefaults(this.fSchemaValidator);
    }

    private void setFeatureDefaults(XMLComponent xMLComponent, String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                Boolean featureDefault = xMLComponent.getFeatureDefault(str);
                if (featureDefault != null && !this.fFeatures.containsKey(str)) {
                    this.fFeatures.put(str, featureDefault);
                    this.fConfigUpdated = true;
                }
            }
        }
    }

    private void setPropertyDefaults(XMLComponent xMLComponent, String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                Object propertyDefault = xMLComponent.getPropertyDefault(str);
                if (propertyDefault != null && !this.fProperties.containsKey(str)) {
                    this.fProperties.put(str, propertyDefault);
                    this.fConfigUpdated = true;
                }
            }
        }
    }

    public void addRecognizedParamsAndSetDefaults(XMLComponent xMLComponent) {
        String[] recognizedFeatures = xMLComponent.getRecognizedFeatures();
        addRecognizedFeatures(recognizedFeatures);
        String[] recognizedProperties = xMLComponent.getRecognizedProperties();
        addRecognizedProperties(recognizedProperties);
        setFeatureDefaults(xMLComponent, recognizedFeatures);
        setPropertyDefaults(xMLComponent, recognizedProperties);
    }

    public ErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
    public boolean getFeature(String str) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(str)) {
            return this.fConfigUpdated;
        }
        if ("http://xml.org/sax/features/validation".equals(str) || "http://apache.org/xml/features/validation/schema".equals(str)) {
            return true;
        }
        return "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only".equals(str) ? this.fUseGrammarPoolOnly : "http://javax.xml.XMLConstants/feature/secure-processing".equals(str) ? getProperty("http://apache.org/xml/properties/security-manager") != null : super.getFeature(str);
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        Object obj = this.fComponents.get(str);
        if (obj != null) {
            return obj;
        }
        if (this.fComponents.containsKey(str)) {
            return null;
        }
        return super.getProperty(str);
    }

    public LSResourceResolver getResourceResolver() {
        return this.fResourceResolver;
    }

    public void reset() throws XNIException {
        this.fNamespaceContext.reset();
        this.fValidationManager.reset();
        this.fEntityManager.reset(this);
        this.fErrorReporter.reset(this);
        this.fSchemaValidator.reset(this);
        this.fConfigUpdated = false;
    }

    public void restoreInitialState() {
        this.fConfigUpdated = true;
        this.fFeatures.clear();
        this.fProperties.clear();
        this.fComponents.put("http://apache.org/xml/properties/internal/entity-resolver", null);
        this.fComponents.put("http://apache.org/xml/properties/internal/error-handler", null);
        XMLEntityManager xMLEntityManager = this.fEntityManager;
        setFeatureDefaults(xMLEntityManager, xMLEntityManager.getRecognizedFeatures());
        XMLEntityManager xMLEntityManager2 = this.fEntityManager;
        setPropertyDefaults(xMLEntityManager2, xMLEntityManager2.getRecognizedProperties());
        XMLErrorReporter xMLErrorReporter = this.fErrorReporter;
        setFeatureDefaults(xMLErrorReporter, xMLErrorReporter.getRecognizedFeatures());
        XMLErrorReporter xMLErrorReporter2 = this.fErrorReporter;
        setPropertyDefaults(xMLErrorReporter2, xMLErrorReporter2.getRecognizedProperties());
        XMLSchemaValidator xMLSchemaValidator = this.fSchemaValidator;
        setFeatureDefaults(xMLSchemaValidator, xMLSchemaValidator.getRecognizedFeatures());
        XMLSchemaValidator xMLSchemaValidator2 = this.fSchemaValidator;
        setPropertyDefaults(xMLSchemaValidator2, xMLSchemaValidator2.getRecognizedProperties());
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandler = errorHandler;
        setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler != null ? new ErrorHandlerWrapper(errorHandler) : new ErrorHandlerWrapper(DraconianErrorHandler.getInstance()));
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(str)) {
            throw new XMLConfigurationException((short) 1, str);
        }
        if (!z && ("http://xml.org/sax/features/validation".equals(str) || "http://apache.org/xml/features/validation/schema".equals(str))) {
            throw new XMLConfigurationException((short) 1, str);
        }
        if ("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only".equals(str) && z != this.fUseGrammarPoolOnly) {
            throw new XMLConfigurationException((short) 1, str);
        }
        this.fConfigUpdated = true;
        if ("http://javax.xml.XMLConstants/feature/secure-processing".equals(str)) {
            setProperty("http://apache.org/xml/properties/security-manager", z ? new SecurityManager() : null);
            return;
        }
        this.fEntityManager.setFeature(str, z);
        this.fErrorReporter.setFeature(str, z);
        this.fSchemaValidator.setFeature(str, z);
        super.setFeature(str, z);
    }

    @Override // com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings, com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if ("http://apache.org/xml/properties/internal/entity-manager".equals(str) || "http://apache.org/xml/properties/internal/error-reporter".equals(str) || "http://apache.org/xml/properties/internal/namespace-context".equals(str) || "http://apache.org/xml/properties/internal/validator/schema".equals(str) || "http://apache.org/xml/properties/internal/symbol-table".equals(str) || "http://apache.org/xml/properties/internal/validation-manager".equals(str) || "http://apache.org/xml/properties/internal/grammar-pool".equals(str)) {
            throw new XMLConfigurationException((short) 1, str);
        }
        this.fConfigUpdated = true;
        this.fEntityManager.setProperty(str, obj);
        this.fErrorReporter.setProperty(str, obj);
        this.fSchemaValidator.setProperty(str, obj);
        if ("http://apache.org/xml/properties/internal/entity-resolver".equals(str) || "http://apache.org/xml/properties/internal/error-handler".equals(str) || "http://apache.org/xml/properties/security-manager".equals(str)) {
            this.fComponents.put(str, obj);
        } else {
            super.setProperty(str, obj);
        }
    }

    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fResourceResolver = lSResourceResolver;
        setProperty("http://apache.org/xml/properties/internal/entity-resolver", new DOMEntityResolverWrapper(lSResourceResolver));
    }
}
