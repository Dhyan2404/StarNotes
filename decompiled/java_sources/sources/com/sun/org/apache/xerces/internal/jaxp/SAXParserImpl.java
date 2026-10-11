package com.sun.org.apache.xerces.internal.jaxp;

import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.PSVIProvider;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.xml.parsers.SAXParser;
import javax.xml.validation.Schema;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class SAXParserImpl extends SAXParser implements JAXPConstants, PSVIProvider {
    private static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String NAMESPACE_PREFIXES_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    private static final String XINCLUDE_FEATURE = "http://apache.org/xml/features/xinclude";
    private static final String XMLSCHEMA_VALIDATION_FEATURE = "http://apache.org/xml/features/validation/schema";
    private final EntityResolver fInitEntityResolver;
    private final ErrorHandler fInitErrorHandler;
    private ValidationManager fSchemaValidationManager;
    private XMLComponent fSchemaValidator;
    private XMLComponentManager fSchemaValidatorComponentManager;
    private final Schema grammar;
    private String schemaLanguage;
    private JAXPSAXParser xmlReader;

    public SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable) throws SAXException {
        this(sAXParserFactoryImpl, hashtable, false);
    }

    private void setFeatures(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable != null) {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                this.xmlReader.setFeature0(str, ((Boolean) hashtable.get(str)).booleanValue());
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        return this.xmlReader.getAttributePSVI(i);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        return this.xmlReader.getAttributePSVIByName(str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        return this.xmlReader.getElementPSVI();
    }

    @Override // javax.xml.parsers.SAXParser
    public Parser getParser() throws SAXException {
        return this.xmlReader;
    }

    @Override // javax.xml.parsers.SAXParser
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.xmlReader.getProperty(str);
    }

    @Override // javax.xml.parsers.SAXParser
    public Schema getSchema() {
        return this.grammar;
    }

    @Override // javax.xml.parsers.SAXParser
    public XMLReader getXMLReader() {
        return this.xmlReader;
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isNamespaceAware() {
        try {
            return this.xmlReader.getFeature("http://xml.org/sax/features/namespaces");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isValidating() {
        try {
            return this.xmlReader.getFeature("http://xml.org/sax/features/validation");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isXIncludeAware() {
        try {
            return this.xmlReader.getFeature("http://apache.org/xml/features/xinclude");
        } catch (SAXException unused) {
            return false;
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public void reset() {
        try {
            this.xmlReader.restoreInitState();
        } catch (SAXException unused) {
        }
        this.xmlReader.setContentHandler(null);
        this.xmlReader.setDTDHandler(null);
        ErrorHandler errorHandler = this.xmlReader.getErrorHandler();
        ErrorHandler errorHandler2 = this.fInitErrorHandler;
        if (errorHandler != errorHandler2) {
            this.xmlReader.setErrorHandler(errorHandler2);
        }
        EntityResolver entityResolver = this.xmlReader.getEntityResolver();
        EntityResolver entityResolver2 = this.fInitEntityResolver;
        if (entityResolver != entityResolver2) {
            this.xmlReader.setEntityResolver(entityResolver2);
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        this.xmlReader.setProperty(str, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [javax.xml.validation.Schema] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator] */
    public SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable, boolean z) throws SAXException {
        JAXPValidatorComponent jAXPValidatorComponent;
        this.schemaLanguage = null;
        JAXPSAXParser jAXPSAXParser = new JAXPSAXParser(this);
        this.xmlReader = jAXPSAXParser;
        jAXPSAXParser.setFeature0("http://xml.org/sax/features/namespaces", sAXParserFactoryImpl.isNamespaceAware());
        this.xmlReader.setFeature0("http://xml.org/sax/features/namespace-prefixes", !sAXParserFactoryImpl.isNamespaceAware());
        if (sAXParserFactoryImpl.isXIncludeAware()) {
            this.xmlReader.setFeature0("http://apache.org/xml/features/xinclude", true);
        }
        if (z) {
            this.xmlReader.setProperty0("http://apache.org/xml/properties/security-manager", new SecurityManager());
        }
        setFeatures(hashtable);
        if (sAXParserFactoryImpl.isValidating()) {
            DefaultValidationErrorHandler defaultValidationErrorHandler = new DefaultValidationErrorHandler();
            this.fInitErrorHandler = defaultValidationErrorHandler;
            this.xmlReader.setErrorHandler(defaultValidationErrorHandler);
        } else {
            this.fInitErrorHandler = this.xmlReader.getErrorHandler();
        }
        this.xmlReader.setFeature0("http://xml.org/sax/features/validation", sAXParserFactoryImpl.isValidating());
        ?? schema = sAXParserFactoryImpl.getSchema();
        this.grammar = schema;
        if (schema != 0) {
            XMLParserConfiguration xMLParserConfiguration = this.xmlReader.getXMLParserConfiguration();
            if (schema instanceof XSGrammarPoolContainer) {
                ?? xMLSchemaValidator = new XMLSchemaValidator();
                ValidationManager validationManager = new ValidationManager();
                this.fSchemaValidationManager = validationManager;
                UnparsedEntityHandler unparsedEntityHandler = new UnparsedEntityHandler(validationManager);
                xMLParserConfiguration.setDTDHandler(unparsedEntityHandler);
                unparsedEntityHandler.setDTDHandler(this.xmlReader);
                this.xmlReader.setDTDSource(unparsedEntityHandler);
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
            jAXPValidatorComponent.setDocumentHandler(this.xmlReader);
            this.xmlReader.setDocumentSource(jAXPValidatorComponent);
            this.fSchemaValidator = jAXPValidatorComponent;
        }
        this.fInitEntityResolver = this.xmlReader.getEntityResolver();
    }

    /* loaded from: classes10.dex */
    public static class JAXPSAXParser extends com.sun.org.apache.xerces.internal.parsers.SAXParser {
        private HashMap fInitFeatures = new HashMap();
        private HashMap fInitProperties = new HashMap();
        private SAXParserImpl fSAXParser;

        public JAXPSAXParser() {
        }

        private void resetSchemaValidator() throws SAXException {
            try {
                this.fSAXParser.fSchemaValidator.reset(this.fSAXParser.fSchemaValidatorComponentManager);
            } catch (XMLConfigurationException e) {
                throw new SAXException(e);
            }
        }

        private void setSchemaValidatorFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.fSAXParser.fSchemaValidator.setFeature(str, z);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
        }

        private void setSchemaValidatorProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.fSAXParser.fSchemaValidator.setProperty(str, obj);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                return super.getFeature(str);
            }
            try {
                return super.getProperty("http://apache.org/xml/properties/security-manager") != null;
            } catch (SAXException unused) {
                return false;
            }
        }

        public boolean getFeature0(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getFeature(str);
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (this.fSAXParser == null || !"http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                return super.getProperty(str);
            }
            return this.fSAXParser.schemaLanguage;
        }

        public Object getProperty0(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getProperty(str);
        }

        public XMLParserConfiguration getXMLParserConfiguration() {
            return this.fConfiguration;
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.Parser, org.xml.sax.XMLReader
        public void parse(InputSource inputSource) throws SAXException, IOException {
            SAXParserImpl sAXParserImpl = this.fSAXParser;
            if (sAXParserImpl != null && sAXParserImpl.fSchemaValidator != null) {
                if (this.fSAXParser.fSchemaValidationManager != null) {
                    this.fSAXParser.fSchemaValidationManager.reset();
                }
                resetSchemaValidator();
            }
            super.parse(inputSource);
        }

        public synchronized void restoreInitState() throws SAXNotRecognizedException, SAXNotSupportedException {
            if (!this.fInitFeatures.isEmpty()) {
                for (Map.Entry entry : this.fInitFeatures.entrySet()) {
                    super.setFeature((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                }
                this.fInitFeatures.clear();
            }
            if (!this.fInitProperties.isEmpty()) {
                for (Map.Entry entry2 : this.fInitProperties.entrySet()) {
                    super.setProperty((String) entry2.getKey(), entry2.getValue());
                }
                this.fInitProperties.clear();
            }
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            SecurityManager securityManager;
            if (str == null) {
                throw new NullPointerException();
            }
            if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                if (!this.fInitFeatures.containsKey(str)) {
                    this.fInitFeatures.put(str, super.getFeature(str) ? Boolean.TRUE : Boolean.FALSE);
                }
                SAXParserImpl sAXParserImpl = this.fSAXParser;
                if (sAXParserImpl != null && sAXParserImpl.fSchemaValidator != null) {
                    setSchemaValidatorFeature(str, z);
                }
                super.setFeature(str, z);
                return;
            }
            if (z) {
                try {
                    securityManager = new SecurityManager();
                } catch (SAXNotRecognizedException e) {
                    if (z) {
                        throw e;
                    }
                } catch (SAXNotSupportedException e2) {
                    if (z) {
                        throw e2;
                    }
                }
            } else {
                securityManager = null;
            }
            setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        }

        public void setFeature0(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setFeature(str, z);
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (this.fSAXParser != null) {
                if ("http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                    if (this.fSAXParser.grammar != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{str}));
                    }
                    if ("http://www.w3.org/2001/XMLSchema".equals(obj)) {
                        if (this.fSAXParser.isValidating()) {
                            this.fSAXParser.schemaLanguage = "http://www.w3.org/2001/XMLSchema";
                            setFeature("http://apache.org/xml/features/validation/schema", true);
                            if (!this.fInitProperties.containsKey("http://java.sun.com/xml/jaxp/properties/schemaLanguage")) {
                                this.fInitProperties.put("http://java.sun.com/xml/jaxp/properties/schemaLanguage", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage"));
                            }
                            super.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
                        }
                    } else {
                        if (obj != null) {
                            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-not-supported", null));
                        }
                        this.fSAXParser.schemaLanguage = null;
                        setFeature("http://apache.org/xml/features/validation/schema", false);
                    }
                    return;
                }
                if ("http://java.sun.com/xml/jaxp/properties/schemaSource".equals(str)) {
                    if (this.fSAXParser.grammar != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{str}));
                    }
                    String str2 = (String) getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
                    if (str2 == null || !"http://www.w3.org/2001/XMLSchema".equals(str2)) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "jaxp-order-not-supported", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://java.sun.com/xml/jaxp/properties/schemaSource"}));
                    }
                    if (!this.fInitProperties.containsKey("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
                        this.fInitProperties.put("http://java.sun.com/xml/jaxp/properties/schemaSource", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource"));
                    }
                    super.setProperty(str, obj);
                    return;
                }
            }
            if (!this.fInitProperties.containsKey(str)) {
                this.fInitProperties.put(str, super.getProperty(str));
            }
            SAXParserImpl sAXParserImpl = this.fSAXParser;
            if (sAXParserImpl != null && sAXParserImpl.fSchemaValidator != null) {
                setSchemaValidatorProperty(str, obj);
            }
            super.setProperty(str, obj);
        }

        public void setProperty0(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setProperty(str, obj);
        }

        public JAXPSAXParser(SAXParserImpl sAXParserImpl) {
            this.fSAXParser = sAXParserImpl;
        }

        @Override // com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser, org.xml.sax.Parser, org.xml.sax.XMLReader
        public void parse(String str) throws SAXException, IOException {
            SAXParserImpl sAXParserImpl = this.fSAXParser;
            if (sAXParserImpl != null && sAXParserImpl.fSchemaValidator != null) {
                if (this.fSAXParser.fSchemaValidationManager != null) {
                    this.fSAXParser.fSchemaValidationManager.reset();
                }
                resetSchemaValidator();
            }
            super.parse(str);
        }
    }
}
