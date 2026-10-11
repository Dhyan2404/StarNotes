.class public final synthetic Lcom/couchbase/lite/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DocumentChangeListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/m;->a:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final changed(Lcom/couchbase/lite/DocumentChange;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/couchbase/lite/m;->a:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$documentChangeFlow$1;->a(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/DocumentChange;)V

    return-void
.end method

.method public final bridge synthetic changed(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/couchbase/lite/DocumentChange;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/m;->changed(Lcom/couchbase/lite/DocumentChange;)V

    return-void
.end method
