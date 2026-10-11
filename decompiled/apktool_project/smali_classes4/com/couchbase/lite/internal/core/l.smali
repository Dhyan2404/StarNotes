.class public final synthetic Lcom/couchbase/lite/internal/core/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/couchbase/lite/internal/core/l;->a:I

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 1

    iget v0, p0, Lcom/couchbase/lite/internal/core/l;->a:I

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/l;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->H(ILjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method
