.class Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSocketCookieJar"
.end annotation


# instance fields
.field private final acceptParentDomain:Z

.field final synthetic this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Z)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->acceptParentDomain:Z

    return-void
.end method


# virtual methods
.method public loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 4
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-static {v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->access$100(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Lcom/couchbase/lite/internal/utils/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketState;->UNOPENED:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v3, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v2, v3}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/internal/utils/StateMachine;->assertState([Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-static {v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->access$200(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-static {v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->access$200(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "cookies"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->parseCookies(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-static {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->access$000(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/couchbase/lite/internal/replicator/CBLCookieStore;->getCookies(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->parseCookies(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 2
    .param p1    # Lokhttp3/HttpUrl;
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
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->this$0:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    invoke-static {v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->access$000(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/s2;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/s2;-><init>()V

    invoke-static {p2, v1}, Lcom/couchbase/lite/internal/utils/Fn;->mapToList(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/util/List;

    move-result-object p2

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;->acceptParentDomain:Z

    invoke-interface {v0, p1, p2, p0}, Lcom/couchbase/lite/internal/replicator/CBLCookieStore;->setCookies(Ljava/net/URI;Ljava/util/List;Z)V

    return-void
.end method
