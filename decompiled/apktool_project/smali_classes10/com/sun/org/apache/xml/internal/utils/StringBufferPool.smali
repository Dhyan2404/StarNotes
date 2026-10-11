.class public Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_stringBufPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    const-class v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->m_stringBufPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 2

    const-class v0, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->m_stringBufPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    .locals 2

    const-class v0, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->m_stringBufPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
