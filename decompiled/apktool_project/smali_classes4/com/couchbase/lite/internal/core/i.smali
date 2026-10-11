.class public final synthetic Lcom/couchbase/lite/internal/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/i;->a:[B

    return-void
.end method


# virtual methods
.method public final accept(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/i;->a:[B

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->w([BLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method
