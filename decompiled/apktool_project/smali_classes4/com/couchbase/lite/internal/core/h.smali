.class public final synthetic Lcom/couchbase/lite/internal/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/core/C4Socket;

.field public final synthetic f:Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/h;->e:Lcom/couchbase/lite/internal/core/C4Socket;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/h;->f:Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/h;->e:Lcom/couchbase/lite/internal/core/C4Socket;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/h;->f:Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/core/C4Socket;->M(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method
