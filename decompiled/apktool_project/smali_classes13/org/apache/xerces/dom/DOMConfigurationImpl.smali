.class public Lorg/apache/xerces/dom/DOMConfigurationImpl;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
.implements Lorg/w3c/dom/DOMConfiguration;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field public e:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field public f:Ljava/lang/String;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected final fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected features:S

.field public g:Lorg/w3c/dom/DOMStringList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 22

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    new-instance v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-direct {v2}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v2, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->f:Ljava/lang/String;

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

    const-string v4, "http://xml.org/sax/features/validation"

    const-string v5, "http://xml.org/sax/features/namespaces"

    const-string v6, "http://apache.org/xml/features/validation/schema"

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v8, "http://apache.org/xml/features/validation/dynamic"

    const-string v9, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v10, "http://apache.org/xml/features/validation/schema/element-default"

    const-string v11, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v12, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v13, "http://apache.org/xml/features/validate-annotations"

    const-string v14, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v15, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    const-string v16, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v17, "http://apache.org/xml/features/validation/balance-syntax-trees"

    const-string v18, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v19, "http://apache.org/xml/features/internal/parser-settings"

    const-string v20, "http://apache.org/xml/features/namespace-growth"

    const-string v21, "http://apache.org/xml/features/internal/tolerate-duplicates"

    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/dynamic"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://xml.org/sax/features/namespaces"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v5, "http://xml.org/sax/properties/xml-string"

    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v7, "http://apache.org/xml/properties/internal/error-handler"

    const-string v8, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v9, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v10, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v11, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v12, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v13, "http://apache.org/xml/properties/security-manager"

    const-string v14, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v15, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v16, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v17, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v18, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v19, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v20, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    filled-new-array/range {v5 .. v20}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    iget-short v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/2addr v1, v4

    int-to-short v1, v1

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    iput-short v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    if-nez p1, :cond_0

    new-instance v1, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v1}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1, v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->createValidationManager()Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    const-string v3, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v5, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5, v3, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v5, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iget-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "org.apache.xerces.impl.xs.XSMessageFormatter"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lorg/apache/xerces/dom/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/util/MessageFormatter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :catch_0
    if-eqz v2, :cond_2

    iget-object v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v3, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 2

    const-string v0, "FEATURE_NOT_FOUND"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, v0, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 2

    const-string v0, "FEATURE_NOT_SUPPORTED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, v0, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 2

    const-string v0, "TYPE_MISMATCH_ERR"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, v0, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

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

    if-eqz v0, :cond_d

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_b

    sget-object p1, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move p0, v1

    :cond_c
    :goto_3
    return p0

    :cond_d
    const-string p0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    instance-of p0, p2, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return p0

    :cond_e
    const-string p0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    instance-of p0, p2, Lorg/apache/xerces/util/SymbolTable;

    return p0

    :cond_f
    const-string p0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    instance-of p0, p2, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return p0

    :cond_10
    const-string p0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    instance-of p0, p2, Lorg/apache/xerces/util/SecurityManager;

    return p0

    :cond_11
    return v1
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
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
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public createValidationManager()Lorg/apache/xerces/impl/validation/ValidationManager;
    .locals 0

    new-instance p0, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {p0}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object p0
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->e:Lorg/apache/xerces/xni/XMLDocumentHandler;

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

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    if-eqz v0, :cond_7

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x8

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    if-nez v0, :cond_22

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

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

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

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

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    return-object p0

    :cond_19
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object p0

    if-eqz p0, :cond_1a

    instance-of p1, p0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz p1, :cond_1a

    check-cast p0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p0}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;

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

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->f:Ljava/lang/String;

    return-object p0

    :cond_1d
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->a(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_22
    :goto_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->g:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lorg/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->g:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->g:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    return-void
.end method

.method public final setDTDValidatorFactory(Ljava/lang/String;)V
    .locals 2

    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq p1, v1, :cond_1

    :goto_0
    iput-object v1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->e:Lorg/apache/xerces/xni/XMLDocumentHandler;

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

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v3, v3, 0x20

    goto :goto_2

    :cond_0
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x21

    goto :goto_2

    :goto_0
    iput-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_4

    :cond_1
    const-string v4, "datatype-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-short v4, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    if-eqz v3, :cond_2

    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v4, -0x3

    :goto_1
    int-to-short v4, v4

    iput-short v4, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    if-eqz v3, :cond_1c

    or-int/lit8 v3, v4, 0x40

    :goto_2
    int-to-short v3, v3

    goto :goto_0

    :cond_3
    const-string v4, "namespaces"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/2addr v3, v2

    goto :goto_2

    :cond_4
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_5
    const-string v4, "cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_6
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x9

    goto :goto_2

    :cond_7
    const-string v4, "entities"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v3, v3, 0x4

    goto :goto_2

    :cond_8
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x5

    goto :goto_2

    :cond_9
    const-string v4, "split-cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_a

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v3, v3, 0x10

    goto :goto_2

    :cond_a
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x11

    goto :goto_2

    :cond_b
    const-string v4, "validate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v3, :cond_c

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v3, v3, 0x40

    goto :goto_2

    :cond_c
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, -0x41

    goto :goto_2

    :cond_d
    const-string v4, "well-formed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v3, :cond_e

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v3, v3, 0x100

    goto :goto_2

    :cond_e
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, -0x101

    goto :goto_2

    :cond_f
    const-string v4, "namespace-declarations"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_10

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v3, v3, 0x200

    goto/16 :goto_2

    :cond_10
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, -0x201

    goto/16 :goto_2

    :cond_11
    const-string v4, "infoset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v3, :cond_1c

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v3, v3, 0x321

    int-to-short v3, v3

    and-int/lit8 v3, v3, -0xf

    int-to-short v3, v3

    iput-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    invoke-virtual {p0, v5, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_12
    const-string v4, "normalize-characters"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "canonical-form"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "validate-if-schema"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "check-character-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_3

    :cond_13
    const-string v4, "element-content-whitespace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v3, :cond_14

    goto :goto_4

    :cond_14
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->b(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_15
    const-string v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v3, :cond_16

    goto :goto_4

    :cond_16
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->b(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_17
    const-string v4, "psvi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v3, :cond_18

    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v3, v3, 0x80

    goto/16 :goto_2

    :cond_18
    iget-short v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, -0x81

    goto/16 :goto_2

    :cond_19
    move v3, v1

    goto :goto_5

    :cond_1a
    :goto_3
    if-nez v3, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->b(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_1c
    :goto_4
    move v3, v2

    :goto_5
    if-eqz v3, :cond_1d

    if-nez v0, :cond_38

    :cond_1d
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_1f

    if-nez p2, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_1f
    :goto_6
    iget-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    goto/16 :goto_e

    :cond_20
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    instance-of v0, p2, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v0, :cond_22

    if-nez p2, :cond_21

    goto :goto_7

    :cond_21
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_22
    :goto_7
    :try_start_0
    new-instance p1, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {p1, p2}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :cond_23
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_25

    if-nez p2, :cond_24

    goto :goto_8

    :cond_24
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_25
    :goto_8
    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    if-nez p2, :cond_26

    :try_start_1
    iput-object v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->f:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, p1, v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_26
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->f:Ljava/lang/String;

    const-string v4, " \n\t\r"

    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_28
    new-array v0, v2, [Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    aput-object p2, v0, v1

    :goto_a
    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_e

    :cond_29
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_2b

    if-nez p2, :cond_2a

    goto :goto_b

    :cond_2a
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_2b
    :goto_b
    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    if-nez p2, :cond_2c

    goto :goto_9

    :cond_2c
    :try_start_2
    sget-object v0, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_a

    :cond_2d
    sget-object v0, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_38

    goto :goto_a

    :cond_2e
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    instance-of v0, p2, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v0, :cond_30

    if-nez p2, :cond_2f

    goto :goto_c

    :cond_2f
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_30
    :goto_c
    :try_start_3
    check-cast p2, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_e

    :cond_31
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    instance-of v1, p2, Lorg/apache/xerces/util/SymbolTable;

    if-eqz v1, :cond_33

    :cond_32
    :goto_d
    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_33
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_34
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    instance-of v1, p2, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v1, :cond_32

    if-nez p2, :cond_35

    goto :goto_d

    :cond_35
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :cond_36
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    instance-of v1, p2, Lorg/apache/xerces/util/SecurityManager;

    if-nez v1, :cond_32

    if-nez p2, :cond_37

    goto :goto_d

    :cond_37
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->c(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0

    :catch_0
    :cond_38
    :goto_e
    return-void

    :cond_39
    invoke-static {p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->a(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object p0

    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
