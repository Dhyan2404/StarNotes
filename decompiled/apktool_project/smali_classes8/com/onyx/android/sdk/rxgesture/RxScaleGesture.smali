.class public final Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002R\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "",
        "onScale",
        "onScaleBegin",
        "",
        "onScaleEnd",
        "a",
        "b",
        "c",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "getGestureContext",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "setGestureContext",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "setListener",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V",
        "listener",
        "",
        "F",
        "lastScaleFactor",
        "",
        "J",
        "lastScaleTime",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:F

.field public c:J

.field public gestureContext:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->c:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToDownSpanX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->pointerMoveToDownSpanX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToDownSpanY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->pointerMoveToDownSpanY()F

    move-result p0

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_2

    cmpg-float v4, v1, v3

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_5

    :cond_2
    cmpg-float v4, v2, v3

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-eqz v4, :cond_6

    cmpg-float v4, p0, v3

    if-nez v4, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    if-eqz v4, :cond_6

    :cond_5
    return v6

    :cond_6
    mul-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_8

    mul-float/2addr p0, v2

    cmpl-float p0, p0, v3

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    return v5

    :cond_8
    :goto_4
    return v6
.end method

.method public final b(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getScaleFactorIntervalThreshold()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter scale by scale factor small :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->c:J

    sub-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getScaleIntervalTimeMs()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter scale by scale time short : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isBigPalmPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->c:J

    return-void
.end method

.method public final getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->gestureContext:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "gestureContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-object p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->b(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setScale(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaling(Landroid/view/ScaleGestureDetector;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->c:J

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHasMultiplePoint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isMorePointer()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isBigPalmPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableScaleSpanCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->c()V

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    const-string v2, "onScaleBegin"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    const-string v2, "onScaleEnd"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    return-void
.end method

.method public final setGestureContext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->gestureContext:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-void
.end method

.method public final setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-void
.end method
