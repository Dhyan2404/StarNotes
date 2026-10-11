.class public Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;
.super Lorg/apache/xerces/parsers/BasicParserConfiguration;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field public static final f:Z


# instance fields
.field public e:Z

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected final fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

.field protected final fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected final fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected final fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12

    .line 4
    invoke-direct {p0, p1, p3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->e:Z

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v6, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    const-string v7, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v8, "http://apache.org/xml/features/generate-synthetic-annotations"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v5, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v6, "http://apache.org/xml/properties/internal/namespace-binder"

    const-string v7, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v8, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v9, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v10, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v11, "http://apache.org/xml/properties/locale"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz p2, :cond_0

    const-string p1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object p2, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance p2, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p2}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance p1, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object p3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance p1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object p3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object p3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {p1}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object p3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    const-string p1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {p3}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    const-string p1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p2, p1, p3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object p3

    if-nez p3, :cond_2

    new-instance p3, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {p3}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->e:Z

    if-nez v0, :cond_0

    const-string v0, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    new-instance v0, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->e:Z

    :cond_0
    return-void
.end method

.method public final addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V
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

    iput-boolean v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

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

    iput-boolean v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
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

    if-eqz v0, :cond_8

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

    const-string v0, "validation/validate-datatypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

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
    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configurePipeline()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    if-eq v0, v1, :cond_3

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, p0}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_5
    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_3

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, p0}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_5
    return-void
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

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
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

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->getLocale()Ljava/util/Locale;

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
    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

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
    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

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
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLVersionDetector;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configurePipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML10()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->a()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configureXML11Pipeline()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML11()V

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lorg/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
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
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 0

    return-void
.end method

.method public final resetXML10()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public final resetXML11()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->e:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
