.class public interface abstract Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
.end method

.method public abstract clear()V
.end method

.method public abstract lockPool()V
.end method

.method public abstract retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
.end method

.method public abstract retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
.end method

.method public abstract unlockPool()V
.end method
