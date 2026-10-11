.class public final synthetic Lcom/sunia/HTREnginev2/lfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lokio/ByteString;


# direct methods
.method public synthetic constructor <init>(Lokio/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lfk;->a:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lfk;->a:Lokio/ByteString;

    check-cast p1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->M(Lokio/ByteString;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method
