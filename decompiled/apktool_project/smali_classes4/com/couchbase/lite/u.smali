.class public final synthetic Lcom/couchbase/lite/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/DocumentReplicationListenerToken;

.field public final synthetic f:Lcom/couchbase/lite/DocumentReplication;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/DocumentReplicationListenerToken;Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/u;->e:Lcom/couchbase/lite/DocumentReplicationListenerToken;

    iput-object p2, p0, Lcom/couchbase/lite/u;->f:Lcom/couchbase/lite/DocumentReplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/u;->e:Lcom/couchbase/lite/DocumentReplicationListenerToken;

    iget-object p0, p0, Lcom/couchbase/lite/u;->f:Lcom/couchbase/lite/DocumentReplication;

    invoke-static {v0, p0}, Lcom/couchbase/lite/DocumentReplicationListenerToken;->f(Lcom/couchbase/lite/DocumentReplicationListenerToken;Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method
