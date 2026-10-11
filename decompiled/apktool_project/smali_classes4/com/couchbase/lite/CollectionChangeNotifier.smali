.class final Lcom/couchbase/lite/CollectionChangeNotifier;
.super Lcom/couchbase/lite/internal/listener/ChangeNotifier;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/listener/ChangeNotifier<",
        "Lcom/couchbase/lite/CollectionChange;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final MAX_CHANGES:I = 0x3e8

.field private static final REQUESTED_CHANGES:I = 0x64


# instance fields
.field private c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "collection.getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer<",
            "Lcom/couchbase/lite/internal/core/C4DocumentChange;",
            ">;"
        }
    .end annotation
.end field

.field private final collection:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;-><init>()V

    const-string v0, "collection"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Collection;

    iput-object p1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    return-void
.end method

.method private collectionChanged()V
    .locals 9

    iget-object v0, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;

    iget-object v2, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v2}, Lcom/couchbase/lite/Collection;->isOpenLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x64

    invoke-interface {v1, v5}, Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;->getChanges(I)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-direct {p0, v2}, Lcom/couchbase/lite/CollectionChangeNotifier;->postChanges(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance v6, Lcom/couchbase/lite/j;

    invoke-direct {v6}, Lcom/couchbase/lite/j;-><init>()V

    invoke-static {v5, v6}, Lcom/couchbase/lite/internal/utils/Fn;->filterToList(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$NullablePredicate;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/couchbase/lite/internal/core/C4DocumentChange;

    invoke-virtual {v6}, Lcom/couchbase/lite/internal/core/C4DocumentChange;->isExternal()Z

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x3e8

    if-gt v7, v8, :cond_3

    if-eq v4, v6, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/couchbase/lite/CollectionChangeNotifier;->postChanges(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    new-instance v4, Lcom/sunia/HTREnginev2/t0e;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/t0e;-><init>()V

    invoke-static {v5, v4}, Lcom/couchbase/lite/internal/utils/Fn;->mapToList(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v6

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic f(Lcom/couchbase/lite/CollectionChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/CollectionChangeNotifier;->collectionChanged()V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4DocumentChange;)Z
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/CollectionChangeNotifier;->lambda$collectionChanged$1(Lcom/couchbase/lite/internal/core/C4DocumentChange;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$collectionChanged$1(Lcom/couchbase/lite/internal/core/C4DocumentChange;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$start$0(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/h;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/h;-><init>(Lcom/couchbase/lite/CollectionChangeNotifier;)V

    invoke-interface {p1, v0}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private postChanges(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/couchbase/lite/CollectionChange;

    iget-object v1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-direct {v0, v1, p1}, Lcom/couchbase/lite/CollectionChange;-><init>(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->postChange(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/CollectionChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CollectionChangeNotifier;->lambda$start$0(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run(Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer<",
            "Lcom/couchbase/lite/internal/core/C4DocumentChange;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/CollectionChangeNotifier;->collectionChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public start(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    new-instance v2, Lcom/couchbase/lite/i;

    invoke-direct {v2, p0, p1}, Lcom/couchbase/lite/i;-><init>(Lcom/couchbase/lite/CollectionChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Collection;->createCollectionObserver(Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/CollectionChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
