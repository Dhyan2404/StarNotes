.class public final Lcom/couchbase/lite/FlowsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "messageEndpointChangeFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/couchbase/lite/MessageEndpointListenerChange;",
        "Lcom/couchbase/lite/MessageEndpointListener;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final messageEndpointChangeFlow(Lcom/couchbase/lite/MessageEndpointListener;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/MessageEndpointListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/MessageEndpointListener;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/MessageEndpointListenerChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/FlowsKt$messageEndpointChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/FlowsKt$messageEndpointChangeFlow$1;-><init>(Lcom/couchbase/lite/MessageEndpointListener;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic messageEndpointChangeFlow$default(Lcom/couchbase/lite/MessageEndpointListener;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/FlowsKt;->messageEndpointChangeFlow(Lcom/couchbase/lite/MessageEndpointListener;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
