.class public Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6658af730705416L


# instance fields
.field private final m_freeStack:Ljava/util/Vector;

.field private final m_orig:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_orig:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public declared-synchronized freeInstance(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_orig:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstanceOrThrow()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_orig:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->m_freeStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
