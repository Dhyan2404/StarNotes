.class public Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0004J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u001a\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "subscribe",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "",
        "filterByScale",
        "filterByLongPress",
        "",
        "distance",
        "filterByStartMoveDistanceShort",
        "filterByMoveTime",
        "",
        "onNext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c",
        "filterByPalm",
        "e",
        "d",
        "g",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;-><init>()V

    return-void
.end method

.method public static final synthetic access$applyGestureFilter(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$filterByMoveDistance(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByPalm(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->filterByPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onMoving(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;FILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToDownDistance()F

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;F)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: filterByStartMoveDistance"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic filterByStartMoveDistanceShort$default(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;FILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToDownDistance()F

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->filterByStartMoveDistanceShort(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;F)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: filterByStartMoveDistanceShort"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setClazz(Ljava/lang/Class;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterTouchUpEvent(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterTouchUpPoint(Z)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterFling(Z)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->apply(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToMoveDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getMoveDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter by move distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public final e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;F)Z
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThresholdShort()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onShortMoved()V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    sget-object p2, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "filter by start move distance"

    invoke-virtual {p2, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    return p1
.end method

.method public final filterByLongPress(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "filter by longPress"

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final filterByMoveTime(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getLastMoveTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getMoveIntervalTimeMs()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by move time"

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method public final filterByPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHasMultiplePoint()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isBigPalmPressed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isPalmPressed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final filterByScale(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isScale()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "filter by scale"

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final filterByStartMoveDistanceShort(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;F)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThresholdShort()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "filter by start move short distance"

    invoke-virtual {p2, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method public final g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onMoved()V

    return-void
.end method

.method public onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isDisposed!"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    move-result-object p0

    return-object p0
.end method

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$d;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$e;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$g;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method
