.class public final synthetic Lcom/sunia/HTREnginev2/ffk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ffk;->a:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ffk;->a:Lokhttp3/Response;

    check-cast p1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->w(Lokhttp3/Response;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method
