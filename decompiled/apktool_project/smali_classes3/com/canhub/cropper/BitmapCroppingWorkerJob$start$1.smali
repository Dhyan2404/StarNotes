.class final Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/BitmapCroppingWorkerJob;->start()V
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
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1"
    f = "BitmapCroppingWorkerJob.kt"
    i = {}
    l = {
        0x4c,
        0x73
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {v0, p0, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getUri$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getContext$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/content/Context;

    move-result-object v8

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getUri$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/net/Uri;

    move-result-object v9

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getCropPoints$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)[F

    move-result-object v10

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getDegreesRotated$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v11

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOrgWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v12

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOrgHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v13

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFixAspectRatio$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v14

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioX$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v15

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioY$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v16

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v17

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v18

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipHorizontally$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v19

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipVertically$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v20

    invoke-virtual/range {v7 .. v20}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getBitmap$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getBitmap$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getCropPoints$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)[F

    move-result-object v9

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getDegreesRotated$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v10

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFixAspectRatio$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v11

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioX$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v12

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioY$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v13

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipHorizontally$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v14

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipVertically$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v15

    invoke-virtual/range {v7 .. v15}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    :goto_0
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v9}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v9

    iget-object v10, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v10}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v10

    iget-object v11, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v11}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOptions$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/canhub/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    iget-object v11, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {v10, v11, v7, v0, v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    const/4 v11, 0x0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    new-instance v6, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    invoke-direct {v6, v5, v5, v5, v4}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V

    iput v4, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    invoke-static {v0, v6, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    :cond_5
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_2
    iget-object v6, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    new-instance v7, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    invoke-direct {v7, v5, v5, v0, v4}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V

    iput v3, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    invoke-static {v6, v7, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
