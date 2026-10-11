.class public interface abstract Lcom/couchbase/lite/internal/BaseSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOUND_SOCKET_FACTORIES:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/BaseSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/BaseSocketFactory;->BOUND_SOCKET_FACTORIES:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public static bindSocketFactory(Lcom/couchbase/lite/internal/BaseSocketFactory;)J
    .locals 3
    .param p0    # Lcom/couchbase/lite/internal/BaseSocketFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/BaseSocketFactory;->BOUND_SOCKET_FACTORIES:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-wide v1
.end method

.method public static getBoundSocketFactory(J)Lcom/couchbase/lite/internal/BaseSocketFactory;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/BaseSocketFactory;->BOUND_SOCKET_FACTORIES:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/BaseSocketFactory;

    return-object p0
.end method

.method public static unbindSocketFactory(J)V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/BaseSocketFactory;->BOUND_SOCKET_FACTORIES:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    return-void
.end method


# virtual methods
.method public abstract createSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
