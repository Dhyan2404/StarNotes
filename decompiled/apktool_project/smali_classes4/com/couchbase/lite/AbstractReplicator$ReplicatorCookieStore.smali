.class Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/replicator/CBLCookieStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/AbstractReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplicatorCookieStore"
.end annotation


# instance fields
.field private final db:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;->db:Lcom/couchbase/lite/Database;

    return-void
.end method


# virtual methods
.method public getCookies(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v1}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->getCookies(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCookies(Ljava/net/URI;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractDatabase;->setCookies(Ljava/net/URI;Ljava/util/List;Z)V

    return-void
.end method
