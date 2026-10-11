.class public final Lcom/onyx/android/sdk/prediction/HonorEstimate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J$\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011R*\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/HonorEstimate;",
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
        "a",
        "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;",
        "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;",
        "eventQueue",
        "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;",
        "b",
        "Ljava/util/ArrayList;",
        "listEvent",
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
.field public a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 12
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

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance v10, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    const/16 v3, 0x19

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;-><init>(FFFFJ)V

    iget-object v3, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->fill(Ljava/util/List;)I

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->getQueue()Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimate;->getEstimateEvent(Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;

    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getX()F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p0}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getY()F

    move-result p0

    invoke-virtual {v11, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p0

    invoke-virtual {v11, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    filled-new-array {v11}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public destory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a(Landroid/view/MotionEvent;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/HonorEstimate;->release()V

    :goto_0
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

    new-instance p1, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    invoke-direct {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

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
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
