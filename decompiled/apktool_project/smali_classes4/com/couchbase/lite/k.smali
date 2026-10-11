.class public final synthetic Lcom/couchbase/lite/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/CollectionChangeListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/k;->a:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final changed(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/k;->a:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lcom/couchbase/lite/CollectionChange;

    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$collectionChangeFlow$1;->a(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/CollectionChange;)V

    return-void
.end method
