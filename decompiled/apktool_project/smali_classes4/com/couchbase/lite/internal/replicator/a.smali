.class public final synthetic Lcom/couchbase/lite/internal/replicator/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MessagingCloseCompletion;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;

.field public final synthetic b:Lcom/couchbase/lite/internal/sockets/CloseStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/a;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;

    iput-object p2, p0, Lcom/couchbase/lite/internal/replicator/a;->b:Lcom/couchbase/lite/internal/sockets/CloseStatus;

    return-void
.end method


# virtual methods
.method public final complete()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/a;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/a;->b:Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;->H(Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method
