.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarLoader;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xs/XSLoader;
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

.field private fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

.field private fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field private fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fExternalNoNSSchema:Ljava/lang/String;

.field private fExternalSchemas:Ljava/lang/String;

.field private fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

.field private fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field private fIsCheckedFully:Z

.field private fJAXPCache:Ljava/util/Hashtable;

.field private fJAXPProcessed:Z

.field private fJAXPSource:Ljava/lang/Object;

.field private fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

.field private fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field private fResourceResolver:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

.field private fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

.field private fSettingsChanged:Z

.field private fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fUserEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field private fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v7, "http://apache.org/xml/features/validate-annotations"

    const-string v8, "http://apache.org/xml/features/honour-all-schemaLocations"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v6, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v7, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v8, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v10, "http://apache.org/xml/properties/security-manager"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    const/4 v2, 0x0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 7

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 7
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    .line 15
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 17
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    .line 18
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fResourceResolver:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    .line 23
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    .line 26
    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    .line 27
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 28
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    .line 30
    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p2

    if-nez p2, :cond_2

    .line 31
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    if-eqz p3, :cond_3

    .line 34
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string p2, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string p2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    if-nez p4, :cond_4

    .line 36
    new-instance p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;-><init>()V

    .line 37
    :cond_4
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    if-nez p5, :cond_5

    .line 38
    new-instance p5, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-direct {p5, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V

    .line 39
    :cond_5
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    .line 40
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;-><init>()V

    if-nez p6, :cond_6

    .line 41
    new-instance p6, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    invoke-direct {p6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;)V

    .line 42
    :cond_6
    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    .line 43
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    .line 44
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    .line 45
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    .line 46
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    return-void
.end method

.method private initGrammarBucket()V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_1

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    aget-object v4, v0, v2

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v4, "GrammarConflict"

    const/4 v5, 0x0

    const-string v6, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v3, p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SchemaLocation"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v1, v3, p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v1, v3, p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :try_start_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {p0, p1, v2, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    invoke-virtual {p2, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v1, p1, p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    :goto_1
    return-void
.end method

.method private processJAXPSchemaSource(Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/InputStream;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-short v2, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/InputStream;

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->fullSchemaChecking(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    :cond_6
    return-void

    :cond_7
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_9

    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_9

    const-class v3, Ljava/io/File;

    if-eq v1, v3, :cond_9

    const-class v3, Ljava/io/InputStream;

    if-eq v1, v3, :cond_9

    const-class v3, Lorg/xml/sax/InputSource;

    if-ne v1, v3, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"http://java.sun.com/xml/jaxp/properties/schemaSource\" property cannot have an array of type {"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}. Possible types of the array supported are Object, String, File, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InputStream, InputSource."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_12

    aget-object v4, v0, v3

    instance-of v5, v4, Ljava/io/InputStream;

    if-nez v5, :cond_a

    instance-of v5, v4, Lorg/xml/sax/InputSource;

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-short v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_c
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v5, v4, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->parseSchema(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {v5, v6, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->fullSchemaChecking(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_d
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v3

    instance-of v6, v5, Ljava/io/InputStream;

    if-nez v6, :cond_e

    instance-of v6, v5, Lorg/xml/sax/InputSource;

    if-eqz v6, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto :goto_2

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " When using array of Objects as the value of SCHEMA_SOURCE property , no two Schemas should share the same targetNamespace. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_12
    return-void
.end method

.method public static resolveDocument(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getContextType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fromInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;->getFirstLocation()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    aget-object p1, v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setLiteralSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0
.end method

.method private static saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 7

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v6

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 3

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    invoke-virtual {p1, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private xsdToXMLInputSource(Ljava/lang/Object;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 11

    instance-of v0, p1, Ljava/lang/String;

    const-string v1, "schema_reference.4"

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0, v4, p1, v4, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    move-object p0, v4

    :goto_0
    if-nez p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {p0, v4, p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/xml/sax/InputSource;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p1

    check-cast v9, Ljava/io/InputStream;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    :cond_3
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/io/File;

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    goto :goto_1

    :catch_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    move-object v9, v4

    :goto_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"http://java.sun.com/xml/jaxp/properties/schemaSource\" property cannot have a value of type {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}. Possible types of the value supported are String, File, InputStream, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "InputSource OR an array of these types."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    instance-of p0, p2, Ljava/lang/Boolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const-string p0, "validate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string p0, "error-handler"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return p2

    :cond_4
    :goto_1
    return v0
.end method

.method public dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    const-string v5, "UTF-16"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-16"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fResourceResolver:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "FEATURE_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public load(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;->toXSModel()Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    const/4 v1, 0x3

    .line 6
    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setLiteralSystemId(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {v2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammars()[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v1

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    .line 14
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->fullSchemaChecking(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_0
    return-object p1
.end method

.method public loadGrammar([Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadInputList(Lcom/sun/org/apache/xerces/internal/xs/LSInputList;)Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 5

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/LSInputList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-array v2, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    :try_start_0
    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xs/LSInputList;->item(I)Lorg/w3c/dom/ls/LSInput;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0
.end method

.method public loadSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->processJAXPSchemaSource(Ljava/util/Hashtable;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->parseSchema(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0
.end method

.method public loadURI(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {v1, v0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;->toXSModel()Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public loadURIList(Lcom/sun/org/apache/xerces/internal/xs/StringList;)Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 6

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/StringList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-array v2, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    :try_start_0
    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0
.end method

.method public reportDOMFatalError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p1, 0x3

    iput-short p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->reset()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->reset()V

    :try_start_0
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->reset()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V

    :goto_2
    :try_start_2
    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    :goto_3
    :try_start_3
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    :goto_4
    :try_start_4
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_5
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    :try_start_5
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v3, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    :goto_7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void

    :cond_2
    :goto_8
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v1, 0x9

    const-string v2, "FEATURE_NOT_SUPPORTED"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_2

    :try_start_1
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;-><init>(Lorg/w3c/dom/DOMErrorHandler;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    :try_start_2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    check-cast p2, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fResourceResolver:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    :cond_4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p2

    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_5
    :goto_0
    return-void
.end method
