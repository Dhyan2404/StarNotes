.class public Lorg/apache/xerces/parsers/XML11DTDConfiguration;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lorg/apache/xerces/parsers/XML11Configurable;


# static fields
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

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field public e:Z

.field protected fCommonComponents:Ljava/util/ArrayList;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

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

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 21

    .line 4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    iput-boolean v3, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iput-boolean v3, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->e:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v6, "http://xml.org/sax/features/validation"

    const-string v7, "http://xml.org/sax/features/namespaces"

    const-string v8, "http://xml.org/sax/features/external-general-entities"

    const-string v9, "http://xml.org/sax/features/external-parameter-entities"

    const-string v10, "http://apache.org/xml/features/internal/parser-settings"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v17, "http://xml.org/sax/properties/xml-string"

    const-string v18, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v19, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v20, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    filled-new-array/range {v6 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    iput-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v4, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    iget-object v1, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v1}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v1, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v4, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v2, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    iget-object v2, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v2, v4, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v3, v0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->e:Z

    if-nez v0, :cond_0

    const-string v0, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    new-instance v0, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->e:Z

    :cond_0
    return-void
.end method

.method public addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method

.method public addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

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

    iput-boolean v3, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

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

    iput-boolean v3, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method

.method public checkFeature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

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

    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_5

    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-ne v0, v1, :cond_6

    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_8

    const-string v1, "validation/validate-datatypes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    const/16 v1, 0x18

    if-ne v0, v1, :cond_a

    const-string v0, "internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v0, "internal/dtd-scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const-string v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configurePipeline()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDSource;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

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

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_4

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_7

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v0, v1, :cond_8

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

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

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_4

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v0, :cond_7

    new-instance v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v0, v1, :cond_8

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

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

    iget-boolean p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

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
    iget-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

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
    iput-boolean v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

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
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLVersionDetector;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->resetCommon()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->configurePipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->reset()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->a()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->configureXML11Pipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->resetXML11()V

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lorg/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
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
    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

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

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

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

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-lt v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

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

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-lt v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
