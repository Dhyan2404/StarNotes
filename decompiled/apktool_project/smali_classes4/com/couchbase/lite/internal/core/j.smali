.class public final synthetic Lcom/couchbase/lite/internal/core/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/j;->a:J

    return-void
.end method


# virtual methods
.method public final accept(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/j;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->f0(JLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method
