.class public Lcom/onyx/android/sdk/prediction/CommonEstimate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/CommonEstimate;",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "()V",
        "motionEventPredictor",
        "Landroidx/input/motionprediction/MotionEventPredictor;",
        "getMotionEventPredictor",
        "()Landroidx/input/motionprediction/MotionEventPredictor;",
        "setMotionEventPredictor",
        "(Landroidx/input/motionprediction/MotionEventPredictor;)V",
        "destory",
        "",
        "estimate",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lkotlin/collections/ArrayList;",
        "event",
        "Landroid/view/MotionEvent;",
        "init",
        "",
        "optView",
        "Landroid/view/View;",
        "release",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/prediction/EstimateManager;->INSTANCE:Lcom/onyx/android/sdk/prediction/EstimateManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/EstimateManager;->isEstimateValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimate;->getMotionEventPredictor()Landroidx/input/motionprediction/MotionEventPredictor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/input/motionprediction/MotionEventPredictor;->record(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimate;->getMotionEventPredictor()Landroidx/input/motionprediction/MotionEventPredictor;

    move-result-object p0

    invoke-interface {p0}, Landroidx/input/motionprediction/MotionEventPredictor;->predict()Landroid/view/MotionEvent;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p0, Lcom/onyx/android/sdk/prediction/EstimateManager;->INSTANCE:Lcom/onyx/android/sdk/prediction/EstimateManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/EstimateManager;->setEstimateValid(Z)V

    return-object v1
.end method

.method public final getMotionEventPredictor()Landroidx/input/motionprediction/MotionEventPredictor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimate;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "motionEventPredictor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "optView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/input/motionprediction/MotionEventPredictor;->newInstance(Landroid/view/View;)Landroidx/input/motionprediction/MotionEventPredictor;

    move-result-object p1

    const-string v0, "newInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/CommonEstimate;->setMotionEventPredictor(Landroidx/input/motionprediction/MotionEventPredictor;)V

    const/4 p0, 0x1

    return p0
.end method

.method public preInit()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/prediction/IEstimate$DefaultImpls;->preInit(Lcom/onyx/android/sdk/prediction/IEstimate;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final setMotionEventPredictor(Landroidx/input/motionprediction/MotionEventPredictor;)V
    .locals 1
    .param p1    # Landroidx/input/motionprediction/MotionEventPredictor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/CommonEstimate;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    return-void
.end method
