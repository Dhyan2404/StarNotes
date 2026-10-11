.class final Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field private final fParentComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

.field private final fUseGrammarPoolOnly:Z

.field private final fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    :try_start_0
    const-string p0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz p0, :cond_0

    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-object p0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
