.class Lcom/couchbase/lite/AbstractDatabase$1;
.super Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/AbstractDatabase;->addActiveReplicator(Lcom/couchbase/lite/AbstractReplicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
        "Lcom/couchbase/lite/AbstractReplicator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/AbstractDatabase;

.field final synthetic val$replicator:Lcom/couchbase/lite/AbstractReplicator;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractDatabase;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/AbstractReplicator;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/AbstractDatabase$1;->this$0:Lcom/couchbase/lite/AbstractDatabase;

    iput-object p3, p0, Lcom/couchbase/lite/AbstractDatabase$1;->val$replicator:Lcom/couchbase/lite/AbstractReplicator;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase$1;->val$replicator:Lcom/couchbase/lite/AbstractReplicator;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->getState()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase$1;->val$replicator:Lcom/couchbase/lite/AbstractReplicator;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->stop()V

    return-void
.end method
