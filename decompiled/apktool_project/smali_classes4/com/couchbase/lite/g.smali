.class public final synthetic Lcom/couchbase/lite/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/ReplicatorChange;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/g;->a:Lcom/couchbase/lite/ReplicatorChange;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/g;->a:Lcom/couchbase/lite/ReplicatorChange;

    check-cast p1, Lcom/couchbase/lite/ReplicatorChangeListenerToken;

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->w(Lcom/couchbase/lite/ReplicatorChange;Lcom/couchbase/lite/ReplicatorChangeListenerToken;)V

    return-void
.end method
