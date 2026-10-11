.class public final Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;
.super Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadowedGrammarPool"
.end annotation


# instance fields
.field private fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    return-void
.end method

.method public containsGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->containsGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result p0

    return p0
.end method

.method public getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->containsGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method
