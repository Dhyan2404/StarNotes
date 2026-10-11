.class public final Lcom/couchbase/lite/internal/core/C4CollectionObserver;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/core/C4NativePeer;",
        "Lcom/couchbase/lite/internal/listener/ChangeNotifier$C4ChangeProducer<",
        "Lcom/couchbase/lite/internal/core/C4DocumentChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4CollectionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final listener:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final token:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;JJLjava/lang/Runnable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p4, p5}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->impl:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;

    iput-wide p2, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->token:J

    iput-object p6, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->listener:Ljava/lang/Runnable;

    return-void
.end method

.method public static callback(J)V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "C4CollectionObserver.callback @%x"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->listener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/gx;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gx;-><init>(Lcom/couchbase/lite/internal/core/C4CollectionObserver;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4CollectionObserver;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4CollectionObserver;ILjava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->lambda$getChanges$0(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->impl:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getChanges$0(ILjava/lang/Long;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->impl:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;->nGetChanges(JI)[Lcom/couchbase/lite/internal/core/C4DocumentChange;

    move-result-object p0

    array-length p1, p0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static newObserver(JLjava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 1
    .param p2    # Ljava/lang/Runnable;
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
    sget-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->newObserver(Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;JLjava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-result-object p0

    return-object p0
.end method

.method public static newObserver(Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;JLjava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 10
    .param p0    # Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
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
    sget-object v0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v8

    .line 3
    invoke-interface {p0, v8, v9, p1, p2}, Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;->nCreate(JJ)J

    move-result-wide v5

    .line 4
    new-instance p1, Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-object v1, p1

    move-object v2, p0

    move-wide v3, v8

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;-><init>(Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;JJLjava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0, v8, v9, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getChanges(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/core/C4DocumentChange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hx;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hx;-><init>(Lcom/couchbase/lite/internal/core/C4CollectionObserver;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
