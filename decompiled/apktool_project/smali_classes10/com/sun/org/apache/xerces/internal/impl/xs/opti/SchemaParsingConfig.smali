.class public Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;
.super Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field private static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

.field protected fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field protected fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fParseInProgress:Z

.field protected fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

.field protected fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 11

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v6, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    const-string v7, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v8, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 6
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

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

    .line 17
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz p2, :cond_0

    const-string p1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 22
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 24
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 25
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    .line 26
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 28
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    .line 29
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 31
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    .line 32
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 34
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    .line 35
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    .line 37
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 39
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    .line 40
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 41
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p2, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_2

    .line 43
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    .line 44
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 45
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
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

    const-string v0, "validation/validate-datatypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

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
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configurePipeline()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    :cond_0
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

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

    .line 14
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->parse(Z)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 19
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 21
    throw p1

    :catch_2
    move-exception p1

    .line 22
    throw p1

    :catch_3
    move-exception p1

    .line 23
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 25
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    .line 26
    throw p1

    .line 27
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    const-string p1, "FWK005 parse may not be called while parsing."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->reset()V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 6
    throw p0

    :catch_2
    move-exception p0

    .line 7
    throw p0

    :catch_3
    move-exception p0

    .line 8
    throw p0

    .line 9
    :cond_0
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

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

    .line 10
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_5
    move-exception p0

    .line 11
    throw p0

    :catch_6
    move-exception p0

    .line 12
    throw p0

    :catch_7
    move-exception p0

    .line 13
    throw p0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->configurePipeline()V

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 0

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

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method
