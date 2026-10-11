.class public final synthetic Lcom/sunia/HTREnginev2/ifk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Function;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/sockets/CloseStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ifk;->a:Lcom/couchbase/lite/internal/sockets/CloseStatus;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ifk;->a:Lcom/couchbase/lite/internal/sockets/CloseStatus;

    check-cast p1, Lokhttp3/WebSocket;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->I(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lokhttp3/WebSocket;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
