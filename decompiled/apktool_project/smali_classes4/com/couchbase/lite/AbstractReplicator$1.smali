.class Lcom/couchbase/lite/AbstractReplicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/AbstractReplicator;->queueConflictResolution(Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/ConflictResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer<",
        "Lcom/couchbase/lite/CouchbaseLiteException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/AbstractReplicator;

.field final synthetic val$rDoc:Lcom/couchbase/lite/ReplicatedDocument;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/ReplicatedDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicator$1;->this$0:Lcom/couchbase/lite/AbstractReplicator;

    iput-object p2, p0, Lcom/couchbase/lite/AbstractReplicator$1;->val$rDoc:Lcom/couchbase/lite/ReplicatedDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/couchbase/lite/CouchbaseLiteException;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator$1;->val$rDoc:Lcom/couchbase/lite/ReplicatedDocument;

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/ReplicatedDocument;->setError(Lcom/couchbase/lite/CouchbaseLiteException;)V

    .line 3
    iget-object p1, p0, Lcom/couchbase/lite/AbstractReplicator$1;->this$0:Lcom/couchbase/lite/AbstractReplicator;

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator$1;->val$rDoc:Lcom/couchbase/lite/ReplicatedDocument;

    invoke-virtual {p1, p0, v0}, Lcom/couchbase/lite/AbstractReplicator;->onConflictResolved(Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;Lcom/couchbase/lite/ReplicatedDocument;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicator$1;->accept(Lcom/couchbase/lite/CouchbaseLiteException;)V

    return-void
.end method
