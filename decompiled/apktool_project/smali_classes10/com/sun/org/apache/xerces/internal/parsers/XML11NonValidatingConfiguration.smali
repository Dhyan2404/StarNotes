.class public Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;
.super Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLPullParserConfiguration;
.implements Lcom/sun/org/apache/xerces/internal/parsers/XML11Configurable;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected fCommonComponents:Ljava/util/ArrayList;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

.field protected fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

.field protected fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field protected fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field protected fVersionDetector:Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

.field protected fXML11DatatypeFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 4
    invoke-direct {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 6
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 8
    iput-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 9
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    .line 10
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    .line 11
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    .line 12
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    .line 13
    iput-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://xml.org/sax/features/validation"

    const-string v6, "http://xml.org/sax/features/namespaces"

    const-string v7, "http://xml.org/sax/features/external-general-entities"

    const-string v8, "http://xml.org/sax/features/external-parameter-entities"

    const-string v9, "http://apache.org/xml/features/internal/parser-settings"

    .line 21
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "http://xml.org/sax/properties/xml-string"

    const-string v7, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v8, "http://apache.org/xml/properties/internal/error-handler"

    const-string v9, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v10, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v11, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v12, "http://apache.org/xml/properties/internal/document-scanner"

    const-string v13, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v14, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v15, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v16, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v17, "http://xml.org/sax/properties/xml-string"

    const-string v18, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 29
    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 31
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 32
    :goto_0
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 33
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_1

    .line 35
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 37
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addCommonComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 39
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 40
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    .line 41
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addCommonComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 43
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    .line 44
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 46
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    .line 47
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 49
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    .line 50
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    .line 52
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;-><init>()V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

    .line 54
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 55
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    .line 56
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 57
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 58
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    iput-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    return-void
.end method

.method private initXML11Components()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xerces.internal.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addCommonComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    return-void
.end method

.method public addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    return-void
.end method

.method public addRecognizedParamsAndSetDefaults(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 8

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_3

    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addXML11Component(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    return-void
.end method

.method public checkFeature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
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
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

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
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

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
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

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
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
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
    const-string v0, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string v0, "schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const-string v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configurePipeline()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://apache.org/xml/properties/internal/document-scanner"

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_2

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    if-eq v0, v1, :cond_6

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://apache.org/xml/properties/internal/document-scanner"

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_2

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    if-eq v0, v1, :cond_6

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    return-void
.end method

.method public getDTDContentModelHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 8
    throw p1

    :catch_2
    move-exception p1

    .line 9
    throw p1

    :catch_3
    move-exception p1

    .line 10
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 12
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->cleanup()V

    .line 13
    throw p1

    .line 14
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    const-string p1, "FWK005 parse may not be called while parsing."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->reset()V

    .line 17
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 18
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->resetCommon()V

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->determineDocVersion(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->initXML11Components()V

    .line 21
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->configureXML11Pipeline()V

    .line 22
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->resetXML11()V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->configurePipeline()V

    .line 24
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->reset()V

    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 26
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->startDocumentParsing(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;S)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 29
    throw p0

    :catch_2
    move-exception p0

    .line 30
    throw p0

    :catch_3
    move-exception p0

    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_1
    :try_start_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z

    move-result p0
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return p0

    :catch_4
    move-exception p0

    .line 33
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_5
    move-exception p0

    .line 34
    throw p0

    :catch_6
    move-exception p0

    .line 35
    throw p0

    :catch_7
    move-exception p0

    .line 36
    throw p0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetCommon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetXML11()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v3, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
