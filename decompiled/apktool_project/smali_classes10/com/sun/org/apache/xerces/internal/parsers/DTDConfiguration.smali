.class public Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field protected fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

.field protected fParseInProgress:Z

.field protected fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 4
    invoke-direct {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fParseInProgress:Z

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    .line 6
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v4, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v6, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v7, "http://apache.org/xml/properties/internal/document-scanner"

    const-string v8, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v9, "http://apache.org/xml/properties/internal/dtd-processor"

    const-string v10, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v11, "http://apache.org/xml/properties/internal/namespace-binder"

    const-string v12, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v13, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v14, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v15, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v16, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 10
    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    .line 12
    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createEntityManager()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createErrorReporter()Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 18
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 19
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createDocumentScanner()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    const-string v2, "http://apache.org/xml/properties/internal/document-scanner"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    if-eqz v2, :cond_1

    .line 24
    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 25
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createDTDScanner()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-eqz v1, :cond_2

    const-string v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    if-eqz v2, :cond_2

    .line 28
    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 29
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createDTDProcessor()Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    if-eqz v1, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/dtd-processor"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 33
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createDTDValidator()Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v1, :cond_4

    const-string v2, "http://apache.org/xml/properties/internal/validator/dtd"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 36
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createNamespaceBinder()Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    if-eqz v1, :cond_5

    const-string v2, "http://apache.org/xml/properties/internal/namespace-binder"

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 39
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createDatatypeValidatorFactory()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    if-eqz v1, :cond_6

    const-string v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->createValidationManager()Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v1, :cond_7

    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_7
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_8

    .line 44
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    .line 45
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v3, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 46
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 47
    :cond_8
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V
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
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method public configureDTDPipeline()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configurePipeline()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    const-string v1, "http://xml.org/sax/features/namespaces"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->configureDTDPipeline()V

    return-void
.end method

.method public createDTDProcessor()Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;-><init>()V

    return-object p0
.end method

.method public createDTDScanner()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>()V

    return-object p0
.end method

.method public createDTDValidator()Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;-><init>()V

    return-object p0
.end method

.method public createDatatypeValidatorFactory()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentScanner()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;-><init>()V

    return-object p0
.end method

.method public createEntityManager()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    return-object p0
.end method

.method public createErrorReporter()Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    return-object p0
.end method

.method public createNamespaceBinder()Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;-><init>()V

    return-object p0
.end method

.method public createValidationManager()Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

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
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fParseInProgress:Z

    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 19
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->cleanup()V

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
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 25
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->cleanup()V

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
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->reset()V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
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
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

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

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->reset()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->configurePipeline()V

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->reset()V

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

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method
