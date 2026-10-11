.class public final Lcom/onyx/android/sdk/prediction/EstimateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\"\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004R\u0016\u0010\u000b\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/EstimateHolder;",
        "",
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
        "release",
        "destory",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "a",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "<init>",
        "(Lcom/onyx/android/sdk/prediction/IEstimate;)V",
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
.field public a:Lcom/onyx/android/sdk/prediction/IEstimate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/prediction/IEstimate;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/prediction/IEstimate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "estimate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/EstimateHolder;->a:Lcom/onyx/android/sdk/prediction/IEstimate;

    return-void
.end method


# virtual methods
.method public final destory()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateHolder;->a:Lcom/onyx/android/sdk/prediction/IEstimate;

    invoke-interface {p0}, Lcom/onyx/android/sdk/prediction/IEstimate;->destory()V

    return-void
.end method

.method public final estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateHolder;->a:Lcom/onyx/android/sdk/prediction/IEstimate;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/prediction/IEstimate;->estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final init(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "optView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateHolder;->a:Lcom/onyx/android/sdk/prediction/IEstimate;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/prediction/IEstimate;->init(Landroid/view/View;)Z

    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateHolder;->a:Lcom/onyx/android/sdk/prediction/IEstimate;

    invoke-interface {p0}, Lcom/onyx/android/sdk/prediction/IEstimate;->release()V

    return-void
.end method
