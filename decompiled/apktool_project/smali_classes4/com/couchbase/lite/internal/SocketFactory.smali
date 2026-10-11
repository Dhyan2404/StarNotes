.class public Lcom/couchbase/lite/internal/SocketFactory;
.super Lcom/couchbase/lite/internal/AbstractSocketFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/ReplicatorConfiguration;",
            "Lcom/couchbase/lite/internal/replicator/CBLCookieStore;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/AbstractSocketFactory;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method


# virtual methods
.method public createPlatformSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;)Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    instance-of v0, p0, Lcom/couchbase/lite/MessageEndpoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/MessageEndpoint;

    invoke-virtual {p0}, Lcom/couchbase/lite/MessageEndpoint;->getDelegate()Lcom/couchbase/lite/MessageEndpointDelegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/couchbase/lite/MessageEndpointDelegate;->createConnection(Lcom/couchbase/lite/MessageEndpoint;)Lcom/couchbase/lite/MessageEndpointConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/couchbase/lite/MessageEndpoint;->getMessageFraming()Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->create(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/replicator/MessageSocket;

    move-result-object p0

    return-object p0
.end method
