.class public Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;
.source "SourceFile"


# static fields
.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field protected fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v1, "http://apache.org/xml/features/validation/schema/element-default"

    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v3, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v4, "http://apache.org/xml/features/validate-annotations"

    const-string v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v6, "http://apache.org/xml/features/validation/schema"

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 5
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string p1, "http://apache.org/xml/features/validation/schema/element-default"

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/generate-synthetic-annotations"

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/validate-annotations"

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string p2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 13
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkFeature(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
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
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->checkFeature(Ljava/lang/String;)V

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
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public configurePipeline()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->configurePipeline()V

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_1
    return-void
.end method
