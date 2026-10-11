.class public final Lcom/couchbase/lite/internal/core/C4QueryObserver;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final QUERY_OBSERVER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c4QueryEnumeratorFactory:Lcom/couchbase/lite/internal/utils/Fn$Function;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/Fn$Function<",
            "Ljava/lang/Long;",
            "Lcom/couchbase/lite/internal/core/C4QueryEnumerator;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final token:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->QUERY_OBSERVER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLcom/couchbase/lite/internal/utils/Fn$Function;JLcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/utils/Fn$Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;",
            "J",
            "Lcom/couchbase/lite/internal/utils/Fn$Function<",
            "Ljava/lang/Long;",
            "Lcom/couchbase/lite/internal/core/C4QueryEnumerator;",
            ">;J",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->impl:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->c4QueryEnumeratorFactory:Lcom/couchbase/lite/internal/utils/Fn$Function;

    iput-wide p5, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->token:J

    iput-object p7, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->callback:Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/yz;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryObserver;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)Lcom/couchbase/lite/internal/core/C4QueryObserver;
    .locals 2
    .param p0    # Lcom/couchbase/lite/internal/core/C4Query;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    new-instance v1, Lcom/sunia/HTREnginev2/zz;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zz;-><init>()V

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->create(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;Lcom/couchbase/lite/internal/utils/Fn$Function;Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)Lcom/couchbase/lite/internal/core/C4QueryObserver;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;Lcom/couchbase/lite/internal/utils/Fn$Function;Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)Lcom/couchbase/lite/internal/core/C4QueryObserver;
    .locals 11
    .param p0    # Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Query;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;",
            "Lcom/couchbase/lite/internal/utils/Fn$Function<",
            "Ljava/lang/Long;",
            "Lcom/couchbase/lite/internal/core/C4QueryEnumerator;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Query;",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->QUERY_OBSERVER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v9

    .line 3
    new-instance v1, Lcom/sunia/HTREnginev2/xz;

    invoke-direct {v1, p0, v9, v10}, Lcom/sunia/HTREnginev2/xz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;J)V

    invoke-virtual {p2, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4
    new-instance p2, Lcom/couchbase/lite/internal/core/C4QueryObserver;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    move-wide v6, v9

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/couchbase/lite/internal/core/C4QueryObserver;-><init>(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLcom/couchbase/lite/internal/utils/Fn$Function;JLcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)V

    .line 5
    invoke-virtual {v0, v9, v10, p2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object p2
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->lambda$create$0(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4QueryObserver;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->impl:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$create$0(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;->nCreate(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static onQueryChanged(JJIILjava/lang/String;)V
    .locals 7
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->QUERY_OBSERVER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/couchbase/lite/internal/core/C4QueryObserver;

    if-nez v1, :cond_0

    sget-object p2, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No observer for token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_0
    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->queryChanged(JIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->QUERY_OBSERVER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public enable()V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->impl:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;->nEnable(J)V

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
    sget-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public queryChanged(JIILjava/lang/String;)V
    .locals 3
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->callback:Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->c4QueryEnumeratorFactory:Lcom/couchbase/lite/internal/utils/Fn$Function;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/utils/Fn$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/couchbase/lite/LiteCoreException;

    invoke-direct {v2, p3, p4, p5}, Lcom/couchbase/lite/LiteCoreException;-><init>(IILjava/lang/String;)V

    :goto_1
    invoke-interface {v0, p0, v2}, Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;->onQueryChanged(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4QueryObserver{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4QueryObserver;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
