.class public Lorg/apache/xerces/parsers/StandardParserConfiguration;
.super Lorg/apache/xerces/parsers/DTDConfiguration;
.source "SourceFile"


# static fields
.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field protected fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 15

    .line 4
    move-object v0, p0

    invoke-direct/range {p0 .. p3}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v2, "http://apache.org/xml/features/validation/schema/element-default"

    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v5, "http://apache.org/xml/features/validate-annotations"

    const-string v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v7, "http://apache.org/xml/features/namespace-growth"

    const-string v8, "http://apache.org/xml/features/internal/tolerate-duplicates"

    const-string v9, "http://apache.org/xml/features/validation/schema"

    const-string v10, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v11, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    const-string v12, "http://apache.org/xml/features/validation/id-idref-checking"

    const-string v13, "http://apache.org/xml/features/validation/identity-constraint-checking"

    const-string v14, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string v1, "http://apache.org/xml/features/validation/schema/element-default"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    const-string v3, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v4, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v5, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkFeature(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    sub-int/2addr v0, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_0

    const-string v2, "validation/schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v1, "validation/schema-full-checking"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    const-string v1, "validation/schema/normalized-value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    const-string v0, "validation/schema/element-default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/DTDConfiguration;->checkFeature(Ljava/lang/String;)V

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

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string v1, "schema/external-schemaLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    const-string v0, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const-string v0, "schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/DTDConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public configurePipeline()V
    .locals 3

    invoke-super {p0}, Lorg/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v2, p0, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_1
    return-void
.end method
