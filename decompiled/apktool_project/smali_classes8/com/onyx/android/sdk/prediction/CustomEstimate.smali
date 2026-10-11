.class public final Lcom/onyx/android/sdk/prediction/CustomEstimate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016R\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/CustomEstimate;",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "Landroid/view/View;",
        "optView",
        "",
        "init",
        "Landroid/view/MotionEvent;",
        "event",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lkotlin/collections/ArrayList;",
        "estimate",
        "",
        "release",
        "destory",
        "Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;",
        "a",
        "Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;",
        "customPredictor",
        "<init>",
        "()V",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;


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
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/prediction/CustomEstimate;->a:Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;

    const-string v2, "customPredictor"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CustomEstimate;->a:Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_1
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v3

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public init(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "optView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;-><init>(II)V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/CustomEstimate;->a:Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;

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
