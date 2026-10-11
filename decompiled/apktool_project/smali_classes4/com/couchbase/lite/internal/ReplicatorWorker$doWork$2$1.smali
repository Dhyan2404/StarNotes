.class final Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/couchbase/lite/ReplicatorChange;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lcom/couchbase/lite/ReplicatorChange;",
        "change",
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
    c = "com.couchbase.lite.internal.ReplicatorWorker$doWork$2$1"
    f = "ReplicatorWorker.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ok:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $tag:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/couchbase/lite/internal/ReplicatorWorker;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/couchbase/lite/internal/ReplicatorWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/couchbase/lite/internal/ReplicatorWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$tag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$ok:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->this$0:Lcom/couchbase/lite/internal/ReplicatorWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$tag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$ok:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->this$0:Lcom/couchbase/lite/internal/ReplicatorWorker;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/couchbase/lite/internal/ReplicatorWorker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/couchbase/lite/ReplicatorChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorChange;
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
            "Lcom/couchbase/lite/ReplicatorChange;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->invoke(Lcom/couchbase/lite/ReplicatorChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p1

    const-string v0, "change.status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background replicator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$tag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$ok:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->this$0:Lcom/couchbase/lite/internal/ReplicatorWorker;

    iget-object p0, p0, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2$1;->$tag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/ReplicatorWorker;->access$buildData(Lcom/couchbase/lite/internal/ReplicatorWorker;Ljava/lang/String;Lcom/couchbase/lite/ReplicatorStatus;)Landroidx/work/Data;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/ListenableWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
