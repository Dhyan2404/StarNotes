.class public final Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;
.super Lcom/couchbase/lite/internal/core/C4DocumentObserver;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JJLjava/lang/Runnable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/couchbase/lite/internal/core/C4DocumentObserver;-><init>(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JJLjava/lang/Runnable;)V

    return-void
.end method

.method public static newObserver(JLjava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;->newObserver(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JLjava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;

    move-result-object p0

    return-object p0
.end method

.method public static newObserver(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JLjava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;
    .locals 11
    .param p0    # Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v8

    .line 3
    new-instance v10, Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;

    move-object v1, p0

    move-wide v2, v8

    move-wide v4, p1

    move-object v6, p3

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;->nCreate(JJLjava/lang/String;)J

    move-result-wide v5

    move-object v1, v10

    move-object v2, p0

    move-wide v3, v8

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;-><init>(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JJLjava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0, v8, v9, v10}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v10
.end method
