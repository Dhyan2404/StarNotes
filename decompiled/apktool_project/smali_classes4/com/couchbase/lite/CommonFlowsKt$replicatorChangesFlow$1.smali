.class final Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/CommonFlowsKt;->replicatorChangesFlow(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/couchbase/lite/ReplicatorChange;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/couchbase/lite/ReplicatorChange;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.couchbase.lite.CommonFlowsKt$replicatorChangesFlow$1"
    f = "CommonFlows.kt"
    i = {}
    l = {
        0x4b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $executor:Ljava/util/concurrent/Executor;

.field final synthetic $this_replicatorChangesFlow:Lcom/couchbase/lite/Replicator;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Replicator;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$this_replicatorChangesFlow:Lcom/couchbase/lite/Replicator;

    iput-object p2, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;

    iget-object v1, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$this_replicatorChangesFlow:Lcom/couchbase/lite/Replicator;

    iget-object p0, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p0, p2}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;-><init>(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/channels/ProducerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/couchbase/lite/ReplicatorChange;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$this_replicatorChangesFlow:Lcom/couchbase/lite/Replicator;

    iget-object v3, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->$executor:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_4

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    sget-object v4, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v5

    :cond_4
    :goto_1
    new-instance v4, Lcom/couchbase/lite/q;

    invoke-direct {v4, p1}, Lcom/couchbase/lite/q;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    invoke-virtual {v1, v3, v4}, Lcom/couchbase/lite/AbstractReplicator;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object v1

    const-string v3, "this@replicatorChangesFl\u2026        trySend(it)\n    }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1$1;

    invoke-direct {v3, v1}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1$1;-><init>(Lcom/couchbase/lite/ListenerToken;)V

    iput v2, p0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
