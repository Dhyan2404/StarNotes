.class public Lcom/couchbase/lite/ResultSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/couchbase/lite/Result;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final columnNames:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/couchbase/lite/ResultContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isAllEnumerated:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final query:Lcom/couchbase/lite/AbstractQuery;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/ResultSet;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/AbstractQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/AbstractQuery;",
            "Lcom/couchbase/lite/internal/core/C4QueryEnumerator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/ResultSet;->lock:Ljava/lang/Object;

    const-string v0, "query"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/AbstractQuery;

    iput-object v0, p0, Lcom/couchbase/lite/ResultSet;->query:Lcom/couchbase/lite/AbstractQuery;

    const-string v0, "columns"

    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    iput-object p3, p0, Lcom/couchbase/lite/ResultSet;->columnNames:Ljava/util/Map;

    new-instance p3, Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractQuery;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Lcom/couchbase/lite/ResultContext;-><init>(Lcom/couchbase/lite/AbstractDatabase;Lcom/couchbase/lite/ResultSet;)V

    iput-object p3, p0, Lcom/couchbase/lite/ResultSet;->context:Lcom/couchbase/lite/ResultContext;

    iput-object p2, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    return-void
.end method


# virtual methods
.method public allResults()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->next()Lcom/couchbase/lite/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/ResultSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultContext;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->close()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Could not obtain db lock"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getColumnCount()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->columnNames:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->columnNames:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getColumnNames()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->columnNames:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getQuery()Lcom/couchbase/lite/AbstractQuery;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->query:Lcom/couchbase/lite/AbstractQuery;

    return-object p0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/ResultSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/couchbase/lite/Result;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public next()Lcom/couchbase/lite/Result;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/ResultSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/couchbase/lite/ResultSet;->isAllEnumerated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->next()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/couchbase/lite/ResultSet;->isAllEnumerated:Z
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :cond_1
    :try_start_3
    new-instance v1, Lcom/couchbase/lite/Result;

    iget-object v3, p0, Lcom/couchbase/lite/ResultSet;->context:Lcom/couchbase/lite/ResultContext;

    iget-object p0, p0, Lcom/couchbase/lite/ResultSet;->c4enum:Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    invoke-direct {v1, v3, p0}, Lcom/couchbase/lite/Result;-><init>(Lcom/couchbase/lite/ResultContext;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;)V
    :try_end_3
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/couchbase/lite/ResultSet;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Error enumerating query"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    :goto_0
    :try_start_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
