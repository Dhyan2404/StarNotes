.class public final Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronizedGrammarPool"
.end annotation


# instance fields
.field private fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public lockPool()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->lockPool()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unlockPool()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->unlockPool()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
