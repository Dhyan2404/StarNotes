.class public final synthetic Lcom/sunia/HTREnginev2/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DocumentReplicationListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fo;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-void
.end method


# virtual methods
.method public final replication(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fo;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->a(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method
