.class public final Lcom/sunia/HTREnginev2/v5m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field public static final i:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field public static final j:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final k:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field public static final l:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field public static final m:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final n:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final o:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field public final e:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field public final f:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field public final g:Z

.field public final h:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v5m;->e:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {p2}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/v5m;->f:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p2}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/v5m;->g:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/v5m;->h:Lorg/apache/xerces/impl/validation/ValidationManager;

    :try_start_0
    const-string p0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLErrorReporter;

    if-eqz p0, :cond_0

    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    new-instance p2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {p2}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/v5m;->e:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/v5m;->g:Z

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
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v5m;->f:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object p0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v5m;->h:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/v5m;->e:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
