.class public final Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;
.super Lorg/apache/xerces/util/XMLGrammarPoolImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadowedGrammarPool"
.end annotation


# instance fields
.field public b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    return-void
.end method

.method public containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result p0

    return p0
.end method

.method public getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method
