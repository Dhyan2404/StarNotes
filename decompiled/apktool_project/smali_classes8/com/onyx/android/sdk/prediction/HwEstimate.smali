.class public final Lcom/onyx/android/sdk/prediction/HwEstimate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHwEstimate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1864#2,3:160\n*S KotlinDebug\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n*L\n70#1:160,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J \u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001fR\u0016\u0010\"\u001a\u00020 8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010!R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010$R&\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0008j\u0008\u0012\u0004\u0012\u00020\u0019`\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010&R\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00190(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010)R\u0016\u0010-\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/HwEstimate;",
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
        "Landroid/app/Activity;",
        "reference",
        "c",
        "Landroid/graphics/PointF;",
        "curP",
        "scaleP",
        "",
        "scale",
        "a",
        "",
        "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;",
        "b",
        "d",
        "",
        "i",
        "e",
        "Landroid/view/View;",
        "Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;",
        "Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;",
        "eventQueue",
        "Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;",
        "Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;",
        "hwMotionEventQueue",
        "Ljava/util/ArrayList;",
        "listEvents",
        "",
        "Ljava/util/List;",
        "historyEvents",
        "f",
        "Z",
        "isExtensionEnable",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHwEstimate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1864#2,3:160\n*S KotlinDebug\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n*L\n70#1:160,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

.field public c:Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;

    invoke-direct {v0}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->c:Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 2

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    mul-float/2addr v1, p3

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p1
.end method

.method public final b(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/HwEstimate;->d(Landroid/view/MotionEvent;)Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->e:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/prediction/HwEstimate;->e(Landroid/view/MotionEvent;I)Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "valueOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    int-to-double v3, v0

    div-double/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpg-float v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/estimate/HwStrokeEstimate;->setRefreshRate(F)V

    const-class v1, Lcom/onyx/android/sdk/prediction/HwEstimate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display frameRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ",estimate minPeriod:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;
    .locals 7

    new-instance p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;-><init>(FFFFJ)V

    return-object p0
.end method

.method public destory()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/HwEstimate;->release()V

    return-void
.end method

.method public final e(Landroid/view/MotionEvent;I)Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;
    .locals 9

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    const/16 v2, 0x19

    invoke-virtual {p1, v2, p2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v6

    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "optView"

    if-nez p2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getPivotX()F

    move-result p2

    iget-object v4, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    invoke-direct {p1, p2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/onyx/android/sdk/prediction/HwEstimate;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    new-instance p1, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;-><init>(FFFFJ)V

    return-object p1
.end method

.method public estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 18
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

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/prediction/HwEstimate;->b(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    return-object v5

    :cond_1
    iget-object v4, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->b:Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

    const-string v4, "eventQueue"

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_2
    iget-object v6, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-interface {v1, v6}, Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;->fill(Ljava/util/List;)I

    iget-object v1, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->b:Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_3
    iget-object v4, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/huawei/stylus/penengine/estimate/HwStrokeEstimate;->getEstimateEvent(Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v7, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getX()F

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getY()F

    move-result v10

    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    const-string v13, "optView"

    if-nez v12, :cond_5

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v5

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getPivotX()F

    move-result v12

    iget-object v14, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    if-nez v14, :cond_6

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v5

    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getPivotY()F

    move-result v14

    invoke-direct {v11, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    int-to-float v9, v3

    iget-object v10, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    if-nez v10, :cond_7

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v5

    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {v0, v12, v11, v9}, Lcom/onyx/android/sdk/prediction/HwEstimate;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v9

    new-instance v15, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getX()F

    move-result v11

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getEventTime()J

    move-result-wide v16

    move-object v10, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v10 .. v16}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->f:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v6, v5, :cond_8

    iget v5, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v5, v6

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v10

    add-float v12, v5, v6

    iget v5, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v6, v5, v6

    mul-float/2addr v6, v10

    add-float v13, v5, v6

    new-instance v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getPress()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->getEventTime()J

    move-result-wide v16

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v6, v8

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    return-object v1

    :cond_a
    move-object v0, v5

    return-object v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/prediction/HwEstimate;->release()V

    goto :goto_1

    :cond_c
    iget-object v1, v0, Lcom/onyx/android/sdk/prediction/HwEstimate;->e:Ljava/util/List;

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/prediction/HwEstimate;->d(Landroid/view/MotionEvent;)Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public init(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "optView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/HwEstimate;->c(Landroid/app/Activity;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->c:Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;

    invoke-virtual {p1}, Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;->getQueue()Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

    move-result-object p1

    const-string v0, "getQueue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->b:Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/HwEstimate;->release()V

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

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->b:Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;

    if-nez v0, :cond_0

    const-string v0, "eventQueue"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/HwEstimate;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
