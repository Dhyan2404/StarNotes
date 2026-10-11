.class public final synthetic Lcom/couchbase/lite/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/ReplicatorChangeListenerToken;

.field public final synthetic f:Lcom/couchbase/lite/ReplicatorChange;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/ReplicatorChangeListenerToken;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/a0;->e:Lcom/couchbase/lite/ReplicatorChangeListenerToken;

    iput-object p2, p0, Lcom/couchbase/lite/a0;->f:Lcom/couchbase/lite/ReplicatorChange;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/a0;->e:Lcom/couchbase/lite/ReplicatorChangeListenerToken;

    iget-object p0, p0, Lcom/couchbase/lite/a0;->f:Lcom/couchbase/lite/ReplicatorChange;

    invoke-static {v0, p0}, Lcom/couchbase/lite/ReplicatorChangeListenerToken;->f(Lcom/couchbase/lite/ReplicatorChangeListenerToken;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method
