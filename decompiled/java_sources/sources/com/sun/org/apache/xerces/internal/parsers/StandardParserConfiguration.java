package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;

/* loaded from: classes10.dex */
public class StandardParserConfiguration extends DTDConfiguration {
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String SCHEMA_AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    protected static final String SCHEMA_VALIDATOR = "http://apache.org/xml/properties/internal/validator/schema";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String XMLSCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String XMLSCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    protected XMLSchemaValidator fSchemaValidator;

    public StandardParserConfiguration() {
        this(null, null, null);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.DTDConfiguration, com.sun.org.apache.xerces.internal.parsers.BasicParserConfiguration, com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings
    public void checkFeature(String str) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/")) {
            int length = str.length() - 31;
            if (length == 17 && str.endsWith("validation/schema")) {
                return;
            }
            if (length == 31 && str.endsWith("validation/schema-full-checking")) {
                return;
            }
            if (length == 34 && str.endsWith("validation/schema/normalized-value")) {
                return;
            }
            if (length == 33 && str.endsWith("validation/schema/element-default")) {
                return;
            }
        }
        super.checkFeature(str);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.DTDConfiguration, com.sun.org.apache.xerces.internal.parsers.BasicParserConfiguration, com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 30 && str.endsWith("schema/external-schemaLocation")) {
                return;
            }
            if (length == 41 && str.endsWith("schema/external-noNamespaceSchemaLocation")) {
                return;
            }
        }
        if (str.startsWith("http://java.sun.com/xml/jaxp/properties/") && str.length() - 40 == 12 && str.endsWith("schemaSource")) {
            return;
        }
        super.checkProperty(str);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.DTDConfiguration
    public void configurePipeline() {
        super.configurePipeline();
        if (getFeature("http://apache.org/xml/features/validation/schema")) {
            if (this.fSchemaValidator == null) {
                XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
                this.fSchemaValidator = xMLSchemaValidator;
                this.fProperties.put("http://apache.org/xml/properties/internal/validator/schema", xMLSchemaValidator);
                addComponent(this.fSchemaValidator);
                if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
                    this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
                }
            }
            XMLSchemaValidator xMLSchemaValidator2 = this.fSchemaValidator;
            this.fLastComponent = xMLSchemaValidator2;
            this.fNamespaceBinder.setDocumentHandler(xMLSchemaValidator2);
            this.fSchemaValidator.setDocumentHandler(this.fDocumentHandler);
            this.fSchemaValidator.setDocumentSource(this.fNamespaceBinder);
        }
    }

    public StandardParserConfiguration(SymbolTable symbolTable) {
        this(symbolTable, null, null);
    }

    public StandardParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public StandardParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        addRecognizedFeatures(new String[]{"http://apache.org/xml/features/validation/schema/normalized-value", "http://apache.org/xml/features/validation/schema/element-default", "http://apache.org/xml/features/validation/schema/augment-psvi", "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, "http://apache.org/xml/features/validation/schema", "http://apache.org/xml/features/validation/schema-full-checking"});
        setFeature("http://apache.org/xml/features/validation/schema/element-default", true);
        setFeature("http://apache.org/xml/features/validation/schema/normalized-value", true);
        setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
        setFeature("http://apache.org/xml/features/generate-synthetic-annotations", false);
        setFeature(VALIDATE_ANNOTATIONS, false);
        setFeature(HONOUR_ALL_SCHEMALOCATIONS, false);
        addRecognizedProperties(new String[]{SCHEMA_LOCATION, SCHEMA_NONS_LOCATION});
    }
}
