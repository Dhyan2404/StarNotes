.class public Lcom/couchbase/lite/internal/core/C4DocumentObserver;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
    }
.end annotation


# static fields
.field protected static final BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4DocumentObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
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

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4DocumentObserver;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4DocumentObserver;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;JJLjava/lang/Runnable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p4, p5}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->impl:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;

    iput-wide p2, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->token:J

    iput-object p6, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->listener:Ljava/lang/Runnable;

    return-void
.end method

.method public static callback(JJLjava/lang/String;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v1, p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "C4CollectionDocObserver.callback @0x%x: %s (5d)"

    invoke-static {v0, p3, p2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {p2, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->listener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/yy;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yy;-><init>(Lcom/couchbase/lite/internal/core/C4DocumentObserver;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4DocumentObserver;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->lambda$closePeer$0(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$0(Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->BOUND_OBSERVERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->impl:Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4DocumentObserver$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V

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

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4DocumentObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
