.class public final synthetic Lcom/couchbase/lite/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DocumentReplicationListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/o;->a:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final replication(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/o;->a:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$documentReplicationFlow$1;->a(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method
