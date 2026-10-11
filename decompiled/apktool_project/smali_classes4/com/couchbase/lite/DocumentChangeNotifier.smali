.class final Lcom/couchbase/lite/DocumentChangeNotifier;
.super Lcom/couchbase/lite/internal/listener/ChangeNotifier;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/listener/ChangeNotifier<",
        "Lcom/couchbase/lite/DocumentChange;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private c4Observer:Lcom/couchbase/lite/internal/core/C4DocumentObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final collection:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final docID:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->docID:Ljava/lang/String;

    return-void
.end method

.method private documentChanged()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/DocumentChange;

    iget-object v1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    iget-object v2, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->docID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/DocumentChange;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->postChange(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/DocumentChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/DocumentChangeNotifier;->documentChanged()V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/DocumentChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/DocumentChangeNotifier;->lambda$start$0(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method private synthetic lambda$start$0(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/s;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/s;-><init>(Lcom/couchbase/lite/DocumentChangeNotifier;)V

    invoke-interface {p1, v0}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 4
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

    iget-object v0, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->collection:Lcom/couchbase/lite/Collection;

    iget-object v2, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->docID:Ljava/lang/String;

    new-instance v3, Lcom/couchbase/lite/t;

    invoke-direct {v3, p0, p1}, Lcom/couchbase/lite/t;-><init>(Lcom/couchbase/lite/DocumentChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/Collection;->createDocumentObserver(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/DocumentChangeNotifier;->c4Observer:Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
