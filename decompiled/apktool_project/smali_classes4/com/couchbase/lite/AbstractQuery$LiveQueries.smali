.class Lcom/couchbase/lite/AbstractQuery$LiveQueries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/AbstractQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveQueries"
.end annotation


# instance fields
.field private final liveQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/ListenerToken;",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final onFirst:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final onLast:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    iput-object p1, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->onFirst:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->onLast:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getTokens()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/ListenerToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isLive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

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

.method public isLive(Lcom/couchbase/lite/ListenerToken;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public liveCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Lcom/couchbase/lite/ListenerToken;Lcom/couchbase/lite/internal/core/C4QueryObserver;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4QueryObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->onFirst:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Lcom/couchbase/lite/ListenerToken;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4QueryObserver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->close()V

    :cond_0
    iget-object p1, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->onLast:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/listener/ChangeListenerToken<",
            "Lcom/couchbase/lite/QueryChange;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveQueries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->enable()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
