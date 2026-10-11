.class public final synthetic Lcom/sunia/HTREnginev2/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ReplicatorChangeListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/go;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-void
.end method


# virtual methods
.method public final changed(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/go;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method public final bridge synthetic changed(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/go;->changed(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method
