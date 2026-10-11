.class public final synthetic Lcom/couchbase/lite/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ReplicatorChangeListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/q;->a:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final changed(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/couchbase/lite/q;->a:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->a(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method public final bridge synthetic changed(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/q;->changed(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method
