.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
.end method

.method public abstract clear()V
.end method

.method public abstract lockPool()V
.end method

.method public abstract retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
.end method

.method public abstract retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
.end method

.method public abstract unlockPool()V
.end method
