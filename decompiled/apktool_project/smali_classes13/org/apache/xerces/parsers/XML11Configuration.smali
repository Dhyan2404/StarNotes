.class public Lorg/apache/xerces/parsers/XML11Configuration;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lorg/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field public e:Z

.field protected final fCommonComponents:Ljava/util/ArrayList;

.field protected final fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected final fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected final fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected final fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected final fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected final fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

.field protected final fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

.field protected fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

.field protected fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

.field protected fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 28

    .line 4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    iput-boolean v2, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iput-boolean v2, v0, Lorg/apache/xerces/parsers/XML11Configuration;->e:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v6, "http://xml.org/sax/features/validation"

    const-string v7, "http://xml.org/sax/features/namespaces"

    const-string v8, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v9, "http://apache.org/xml/features/validation/schema/element-default"

    const-string v10, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v11, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v12, "http://apache.org/xml/features/validate-annotations"

    const-string v13, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v14, "http://apache.org/xml/features/namespace-growth"

    const-string v15, "http://apache.org/xml/features/internal/tolerate-duplicates"

    const-string v16, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    const-string v17, "http://apache.org/xml/features/validation/id-idref-checking"

    const-string v18, "http://apache.org/xml/features/validation/identity-constraint-checking"

    const-string v19, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    const-string v20, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    const-string v21, "http://apache.org/xml/features/validation/schema"

    const-string v22, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v23, "http://xml.org/sax/features/external-general-entities"

    const-string v24, "http://xml.org/sax/features/external-parameter-entities"

    const-string v25, "http://apache.org/xml/features/internal/parser-settings"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v7, "http://apache.org/xml/properties/internal/error-handler"

    const-string v8, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v9, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v10, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v11, "http://apache.org/xml/properties/internal/document-scanner"

    const-string v12, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v13, "http://apache.org/xml/properties/internal/dtd-processor"

    const-string v14, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v15, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v16, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v17, "http://apache.org/xml/properties/internal/validator/schema"

    const-string v18, "http://xml.org/sax/properties/xml-string"

    const-string v19, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v20, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v21, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v22, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v23, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v24, "http://apache.org/xml/properties/locale"

    const-string v25, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    const-string v26, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    const-string v27, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    filled-new-array/range {v6 .. v27}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v3, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    iput-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v4, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    iget-object v1, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v1}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v4, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v3, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    iget-object v3, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v2, v0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method

.method public addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method

.method public addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 8

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v4, v2

    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    array-length v0, v1

    if-lt v2, v0, :cond_3

    goto :goto_3

    :cond_3
    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->e:Z

    if-nez v0, :cond_0

    const-string v0, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    new-instance v0, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->e:Z

    :cond_0
    return-void
.end method

.method public checkFeature(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    sub-int/2addr v0, v1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x23

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    const-string v4, "validation/validate-content-models"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v4, 0x1e

    if-ne v0, v4, :cond_5

    const-string v4, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    if-ne v0, v1, :cond_6

    const-string v4, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    const/16 v4, 0x1d

    if-ne v0, v4, :cond_8

    const-string v4, "validation/validate-datatypes"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    const/16 v4, 0x11

    if-ne v0, v4, :cond_9

    const-string v4, "validation/schema"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    return-void

    :cond_9
    if-ne v0, v1, :cond_a

    const-string v1, "validation/schema-full-checking"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    if-ne v0, v2, :cond_b

    const-string v1, "validation/schema/normalized-value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/16 v1, 0x21

    if-ne v0, v1, :cond_c

    const-string v1, "validation/schema/element-default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    :cond_c
    const/16 v1, 0x18

    if-ne v0, v1, :cond_e

    const-string v0, "internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_e
    :goto_3
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    const-string v2, "internal/dtd-scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v2, "schema/external-schemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x29

    if-ne v0, v2, :cond_2

    const-string v0, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    const-string v0, "schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    const-string v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configurePipeline()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDSource;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v4, :cond_4

    iput-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_7

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v0, v4, :cond_8

    iput-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_a
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_b
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_c
    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v4, :cond_4

    iput-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v0, :cond_7

    new-instance v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v0, v4, :cond_8

    iput-object v4, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_a
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_b
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_c
    return-void
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->cleanup()V

    throw p1

    :cond_0
    new-instance p0, Lorg/apache/xerces/xni/XNIException;

    const-string p1, "FWK005 parse may not be called while parsing."

    invoke-direct {p0, p1}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLVersionDetector;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->resetCommon()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->reset()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->b()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->resetXML11()V

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lorg/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return v2

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    move-exception p0

    throw p0

    :cond_2
    :goto_1
    :try_start_1
    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z

    move-result p0
    :try_end_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return p0

    :catch_4
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_5
    move-exception p0

    throw p0

    :catch_6
    move-exception p0

    throw p0

    :catch_7
    move-exception p0

    throw p0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetCommon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetXML11()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-lt v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-lt v1, v2, :cond_1

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
