.class public interface abstract Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;
    }
.end annotation


# virtual methods
.method public abstract getLock()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract remoteFailed(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract remoteOpened(ILjava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract remoteRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract remoteWrites([B)V
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setupRemoteSocketFactory(Lokhttp3/OkHttpClient$Builder;)V
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
