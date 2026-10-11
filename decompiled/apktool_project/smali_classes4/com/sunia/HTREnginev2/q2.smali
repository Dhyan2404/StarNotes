.class public final synthetic Lcom/sunia/HTREnginev2/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q2;->a:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q2;->a:Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q2;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->j(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
