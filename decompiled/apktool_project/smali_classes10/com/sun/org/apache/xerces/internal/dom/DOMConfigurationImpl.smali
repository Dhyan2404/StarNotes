.class public Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;
.super Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;
.implements Lorg/w3c/dom/DOMConfiguration;


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected final fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field protected features:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 12

    .line 3
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 p2, 0x0

    .line 4
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/validation"

    const-string v2, "http://xml.org/sax/features/namespaces"

    const-string v3, "http://apache.org/xml/features/validation/schema"

    const-string v4, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v5, "http://apache.org/xml/features/validation/dynamic"

    const-string v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 10
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string v0, "http://xml.org/sax/features/validation"

    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/validation/schema"

    .line 13
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 14
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 16
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string p2, "http://xml.org/sax/features/namespaces"

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string p2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 18
    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/properties/xml-string"

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v6, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v7, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v8, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v11, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 19
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    .line 21
    iget-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/2addr p2, v0

    int-to-short p2, p2

    or-int/lit8 p2, p2, 0x4

    int-to-short p2, p2

    or-int/lit8 p2, p2, 0x20

    int-to-short p2, p2

    or-int/lit8 p2, p2, 0x8

    int-to-short p2, p2

    or-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    or-int/lit16 p2, p2, 0x100

    int-to-short p2, p2

    or-int/lit16 p2, p2, 0x200

    int-to-short p2, p2

    .line 22
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    const-string p1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 26
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    const-string p1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 30
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    const-string p2, "http://apache.org/xml/properties/internal/entity-manager"

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 34
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->createValidationManager()Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    const-string p2, "http://apache.org/xml/properties/internal/validation-manager"

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 37
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 39
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    const-string p1, "com.sun.org.apache.xerces.internal.impl.xs.XSMessageFormatter"

    .line 41
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 43
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "element-content-whitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    :cond_6
    :goto_2
    return p0

    :cond_7
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of p0, p2, Lorg/w3c/dom/DOMErrorHandler;

    return p0

    :cond_8
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of p0, p2, Lorg/w3c/dom/ls/LSResourceResolver;

    return p0

    :cond_9
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of p0, p2, Ljava/lang/String;

    return p0

    :cond_a
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_b

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move p0, v1

    :goto_3
    return p0

    :cond_c
    const-string p0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    instance-of p0, p2, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return p0

    :cond_d
    const-string p0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    instance-of p0, p2, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return p0

    :cond_e
    return v1
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public createValidationManager()Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

    return-object p0
.end method

.method public getDTDContentModelHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

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

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/2addr p0, v1

    if-eqz p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_10

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 p0, p0, 0x32f

    const/16 p1, 0x321

    if-ne p0, p1, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_b

    :cond_14
    const-string v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_15
    const-string v0, "psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_16

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object p0

    :cond_17
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_18
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    return-object p0

    :cond_19
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    move-result-object p0

    if-eqz p0, :cond_1a

    instance-of p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    if-eqz p1, :cond_1a

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0

    :cond_1b
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_20
    :goto_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v1, 0x8

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const/4 v3, 0x1

    if-eqz v0, :cond_1c

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "comments"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v4, v4, 0x20

    goto :goto_0

    :cond_0
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x21

    :goto_0
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_1
    const-string v5, "datatype-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    if-eqz v5, :cond_3

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-short v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    if-eqz v4, :cond_2

    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v5, v5, -0x3

    :goto_1
    int-to-short v5, v5

    iput-short v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    if-eqz v4, :cond_1c

    or-int/lit8 v4, v5, 0x40

    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_3
    const-string v5, "namespaces"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/2addr v4, v3

    goto :goto_2

    :cond_4
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x2

    :goto_2
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_5
    const-string v5, "cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/2addr v4, v1

    goto :goto_3

    :cond_6
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x9

    :goto_3
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_7
    const-string v5, "entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v4, :cond_8

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v4, v4, 0x4

    goto :goto_4

    :cond_8
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x5

    :goto_4
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_9
    const-string v5, "split-cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v4, :cond_a

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v4, v4, 0x10

    goto :goto_5

    :cond_a
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x11

    :goto_5
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_b
    const-string v5, "validate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v4, :cond_c

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v4, v4, 0x40

    goto :goto_6

    :cond_c
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, -0x41

    :goto_6
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_d
    const-string v5, "well-formed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v4, :cond_e

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v4, v4, 0x100

    goto :goto_7

    :cond_e
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, -0x101

    :goto_7
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_f
    const-string v5, "namespace-declarations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-eqz v4, :cond_10

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v4, v4, 0x200

    goto :goto_8

    :cond_10
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, -0x201

    :goto_8
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_b

    :cond_11
    const-string v5, "infoset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_12

    if-eqz v4, :cond_1c

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v4, v4, 0x321

    int-to-short v4, v4

    and-int/lit8 v4, v4, -0xf

    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    invoke-virtual {p0, v6, v7}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_12
    const-string v5, "normalize-characters"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x9

    const-string v8, "FEATURE_NOT_SUPPORTED"

    if-nez v5, :cond_1a

    const-string v5, "canonical-form"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "validate-if-schema"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "check-character-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_a

    :cond_13
    const-string v5, "element-content-whitespace"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v4, :cond_14

    goto :goto_b

    :cond_14
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v8, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v6, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_15
    const-string v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v4, :cond_16

    goto :goto_b

    :cond_16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v8, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v6, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_17
    const-string v5, "psvi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v4, :cond_18

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v4, v4, 0x80

    goto :goto_9

    :cond_18
    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, -0x81

    :goto_9
    int-to-short v4, v4

    iput-short v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    goto :goto_b

    :cond_19
    move v3, v7

    goto :goto_b

    :cond_1a
    :goto_a
    if-nez v4, :cond_1b

    goto :goto_b

    :cond_1b
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v8, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v6, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1c
    :goto_b
    if-eqz v3, :cond_1d

    if-nez v0, :cond_2e

    :cond_1d
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x11

    const-string v4, "TYPE_MISMATCH_ERR"

    if-eqz v0, :cond_20

    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_1f

    if-nez p2, :cond_1e

    goto :goto_c

    :cond_1e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1f
    :goto_c
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V

    goto/16 :goto_10

    :cond_20
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    instance-of v0, p2, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v0, :cond_22

    if-nez p2, :cond_21

    goto :goto_d

    :cond_21
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_22
    :goto_d
    :try_start_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    check-cast p2, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :cond_23
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_25

    if-nez p2, :cond_24

    goto :goto_e

    :cond_24
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_25
    :goto_e
    :try_start_1
    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10

    :cond_26
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_28

    if-nez p2, :cond_27

    goto :goto_f

    :cond_27
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_28
    :goto_f
    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    if-nez p2, :cond_29

    const/4 p2, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_29
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_2a
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    :cond_2b
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    instance-of v1, p2, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eqz v1, :cond_2c

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_2c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2d
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    instance-of v1, p2, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_0
    :cond_2e
    :goto_10
    return-void

    :cond_2f
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_30
    const-string p0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
