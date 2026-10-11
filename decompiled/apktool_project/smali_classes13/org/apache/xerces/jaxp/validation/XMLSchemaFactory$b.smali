.class public Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public b(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method

.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method public lockPool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
