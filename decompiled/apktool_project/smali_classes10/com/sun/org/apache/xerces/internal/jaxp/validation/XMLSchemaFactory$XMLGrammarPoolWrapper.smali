.class Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLGrammarPoolWrapper"
.end annotation


# instance fields
.field private fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method public getGrammarPool()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public lockPool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public setGrammarPool(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-void
.end method

.method public unlockPool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
