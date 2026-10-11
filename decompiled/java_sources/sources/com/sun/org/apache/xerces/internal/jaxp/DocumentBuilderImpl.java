package com.sun.org.apache.xerces.internal.jaxp;

import com.sun.org.apache.xerces.internal.dom.DOMImplementationImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.dom.DocumentImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer;
import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.validation.Schema;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes10.dex */
public class DocumentBuilderImpl extends DocumentBuilder implements JAXPConstants {
    private static final String CREATE_CDATA_NODES_FEATURE = "http://apache.org/xml/features/create-cdata-nodes";
    private static final String CREATE_ENTITY_REF_NODES_FEATURE = "http://apache.org/xml/features/dom/create-entity-ref-nodes";
    private static final String INCLUDE_COMMENTS_FEATURE = "http://apache.org/xml/features/include-comments";
    private static final String INCLUDE_IGNORABLE_WHITESPACE = "http://apache.org/xml/features/dom/include-ignorable-whitespace";
    private static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    private static final String XINCLUDE_FEATURE = "http://apache.org/xml/features/xinclude";
    private static final String XMLSCHEMA_VALIDATION_FEATURE = "http://apache.org/xml/features/validation/schema";
    private DOMParser domParser;
    private final EntityResolver fInitEntityResolver;
    private final ErrorHandler fInitErrorHandler;
    private ValidationManager fSchemaValidationManager;
    private XMLComponent fSchemaValidator;
    private XMLComponentManager fSchemaValidatorComponentManager;
    private final Schema grammar;

    public DocumentBuilderImpl(DocumentBuilderFactoryImpl documentBuilderFactoryImpl, Hashtable hashtable, Hashtable hashtable2) throws SAXNotRecognizedException, SAXNotSupportedException {
        this(documentBuilderFactoryImpl, hashtable, hashtable2, false);
    }

    private void resetSchemaValidator() throws SAXException {
        try {
            this.fSchemaValidator.reset(this.fSchemaValidatorComponentManager);
        } catch (XMLConfigurationException e) {
            throw new SAXException(e);
        }
    }

    private void setDocumentBuilderFactoryAttributes(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable == null) {
            return;
        }
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            Object obj = hashtable.get(str);
            if (obj instanceof Boolean) {
                this.domParser.setFeature(str, ((Boolean) obj).booleanValue());
            } else if ("http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                if ("http://www.w3.org/2001/XMLSchema".equals(obj) && isValidating()) {
                    this.domParser.setFeature("http://apache.org/xml/features/validation/schema", true);
                    this.domParser.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
                }
            } else if (!"http://java.sun.com/xml/jaxp/properties/schemaSource".equals(str)) {
                this.domParser.setProperty(str, obj);
            } else if (isValidating()) {
                String str2 = (String) hashtable.get("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
                if (str2 == null || !"http://www.w3.org/2001/XMLSchema".equals(str2)) {
                    throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "jaxp-order-not-supported", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://java.sun.com/xml/jaxp/properties/schemaSource"}));
                }
                this.domParser.setProperty(str, obj);
            } else {
                continue;
            }
        }
    }

    private void setFeatures(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable != null) {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                this.domParser.setFeature(str, ((Boolean) hashtable.get(str)).booleanValue());
            }
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public DOMImplementation getDOMImplementation() {
        return DOMImplementationImpl.getDOMImplementation();
    }

    public DOMParser getDOMParser() {
        return this.domParser;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Schema getSchema() {
        return this.grammar;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isNamespaceAware() {
        try {
            return this.domParser.getFeature("http://xml.org/sax/features/namespaces");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isValidating() {
        try {
            return this.domParser.getFeature("http://xml.org/sax/features/validation");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isXIncludeAware() {
        try {
            return this.domParser.getFeature("http://apache.org/xml/features/xinclude");
        } catch (SAXException unused) {
            return false;
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document newDocument() {
        return new DocumentImpl();
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document parse(InputSource inputSource) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "jaxp-null-input-source", null));
        }
        if (this.fSchemaValidator != null) {
            ValidationManager validationManager = this.fSchemaValidationManager;
            if (validationManager != null) {
                validationManager.reset();
            }
            resetSchemaValidator();
        }
        this.domParser.parse(inputSource);
        return this.domParser.getDocument();
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void reset() {
        ErrorHandler errorHandler = this.domParser.getErrorHandler();
        ErrorHandler errorHandler2 = this.fInitErrorHandler;
        if (errorHandler != errorHandler2) {
            this.domParser.setErrorHandler(errorHandler2);
        }
        EntityResolver entityResolver = this.domParser.getEntityResolver();
        EntityResolver entityResolver2 = this.fInitEntityResolver;
        if (entityResolver != entityResolver2) {
            this.domParser.setEntityResolver(entityResolver2);
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setEntityResolver(EntityResolver entityResolver) {
        this.domParser.setEntityResolver(entityResolver);
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.domParser.setErrorHandler(errorHandler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator] */
    /* JADX WARN: Type inference failed for: r5v1, types: [javax.xml.validation.Schema] */
    public DocumentBuilderImpl(DocumentBuilderFactoryImpl documentBuilderFactoryImpl, Hashtable hashtable, Hashtable hashtable2, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        JAXPValidatorComponent jAXPValidatorComponent;
        this.domParser = null;
        this.domParser = new DOMParser();
        if (documentBuilderFactoryImpl.isValidating()) {
            DefaultValidationErrorHandler defaultValidationErrorHandler = new DefaultValidationErrorHandler();
            this.fInitErrorHandler = defaultValidationErrorHandler;
            setErrorHandler(defaultValidationErrorHandler);
        } else {
            this.fInitErrorHandler = this.domParser.getErrorHandler();
        }
        this.domParser.setFeature("http://xml.org/sax/features/validation", documentBuilderFactoryImpl.isValidating());
        this.domParser.setFeature("http://xml.org/sax/features/namespaces", documentBuilderFactoryImpl.isNamespaceAware());
        this.domParser.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", !documentBuilderFactoryImpl.isIgnoringElementContentWhitespace());
        this.domParser.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", !documentBuilderFactoryImpl.isExpandEntityReferences());
        this.domParser.setFeature("http://apache.org/xml/features/include-comments", !documentBuilderFactoryImpl.isIgnoringComments());
        this.domParser.setFeature("http://apache.org/xml/features/create-cdata-nodes", !documentBuilderFactoryImpl.isCoalescing());
        if (documentBuilderFactoryImpl.isXIncludeAware()) {
            this.domParser.setFeature("http://apache.org/xml/features/xinclude", true);
        }
        if (z) {
            this.domParser.setProperty("http://apache.org/xml/properties/security-manager", new SecurityManager());
        }
        ?? schema = documentBuilderFactoryImpl.getSchema();
        this.grammar = schema;
        if (schema != 0) {
            XMLParserConfiguration xMLParserConfiguration = this.domParser.getXMLParserConfiguration();
            if (schema instanceof XSGrammarPoolContainer) {
                ?? xMLSchemaValidator = new XMLSchemaValidator();
                ValidationManager validationManager = new ValidationManager();
                this.fSchemaValidationManager = validationManager;
                UnparsedEntityHandler unparsedEntityHandler = new UnparsedEntityHandler(validationManager);
                xMLParserConfiguration.setDTDHandler(unparsedEntityHandler);
                unparsedEntityHandler.setDTDHandler(this.domParser);
                this.domParser.setDTDSource(unparsedEntityHandler);
                this.fSchemaValidatorComponentManager = new SchemaValidatorConfiguration(xMLParserConfiguration, (XSGrammarPoolContainer) schema, this.fSchemaValidationManager);
                jAXPValidatorComponent = xMLSchemaValidator;
            } else {
                JAXPValidatorComponent jAXPValidatorComponent2 = new JAXPValidatorComponent(schema.newValidatorHandler());
                this.fSchemaValidatorComponentManager = xMLParserConfiguration;
                jAXPValidatorComponent = jAXPValidatorComponent2;
            }
            xMLParserConfiguration.addRecognizedFeatures(jAXPValidatorComponent.getRecognizedFeatures());
            xMLParserConfiguration.addRecognizedProperties(jAXPValidatorComponent.getRecognizedProperties());
            xMLParserConfiguration.setDocumentHandler(jAXPValidatorComponent);
            jAXPValidatorComponent.setDocumentHandler(this.domParser);
            this.domParser.setDocumentSource(jAXPValidatorComponent);
            this.fSchemaValidator = jAXPValidatorComponent;
        }
        setFeatures(hashtable2);
        setDocumentBuilderFactoryAttributes(hashtable);
        this.fInitEntityResolver = this.domParser.getEntityResolver();
    }
}
