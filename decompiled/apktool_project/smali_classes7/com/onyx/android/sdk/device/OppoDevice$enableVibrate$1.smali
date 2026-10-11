.class final Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/device/OppoDevice;->enableVibrate(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.onyx.android.sdk.device.OppoDevice$enableVibrate$1"
    f = "OppoDevice.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isEnable:Z

.field label:I

.field final synthetic this$0:Lcom/onyx/android/sdk/device/OppoDevice;


# direct methods
.method public constructor <init>(ZLcom/onyx/android/sdk/device/OppoDevice;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/onyx/android/sdk/device/OppoDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->$isEnable:Z

    iput-object p2, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->this$0:Lcom/onyx/android/sdk/device/OppoDevice;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;

    iget-boolean v0, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->$isEnable:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->this$0:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-direct {p1, v0, p0, p2}, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;-><init>(ZLcom/onyx/android/sdk/device/OppoDevice;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
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
            "Lkotlinx/coroutines/CoroutineScope;",
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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->$isEnable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->this$0:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p1}, Lcom/onyx/android/sdk/device/OppoDevice;->access$getPencilManager$p(Lcom/onyx/android/sdk/device/OppoDevice;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->getVibrationSwitchState()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->this$0:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p0}, Lcom/onyx/android/sdk/device/OppoDevice;->access$getPencilManager$p(Lcom/onyx/android/sdk/device/OppoDevice;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->startFeedBackVibration()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/device/OppoDevice$enableVibrate$1;->this$0:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p0}, Lcom/onyx/android/sdk/device/OppoDevice;->access$getPencilManager$p(Lcom/onyx/android/sdk/device/OppoDevice;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->stopFeedBackVibration()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
