.class public Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_poolTable:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->init()V

    return-void
.end method

.method private declared-synchronized init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getPool(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPool(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_POOL_EXISTS"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePool(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->getPool(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->setPoolEnabled(Z)V

    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->hasActiveConnections()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->m_poolTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
