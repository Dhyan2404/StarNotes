.class public final Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c",
        "subscribe",
        "",
        "h",
        "j",
        "i",
        "k",
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

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;-><init>()V

    return-void
.end method

.method public static final synthetic access$applyGestureFilter(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$filterByTwoTouch(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterTwoTouchByMoveDistance(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterTwoTouchByStartMoveDistance(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->j(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onMultipleMoved(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
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

    new-instance p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;-><init>()V

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setClazz(Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterTouchUpEvent(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterTouchUpPoint(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterSingleTouch(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterFling(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->apply(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHasMultiplePoint()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isMorePointer()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    const-string v1, "filter by single touch"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->pointerMoveToMoveDistance()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMultipleMoved()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getMoveDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p0, p1

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

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter by move distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public final j(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->pointerMoveToDownDistance()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThresholdShort()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onShortMoved()V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMultipleMoved()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_3

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    const-string v1, "filter by start move distance"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method public final k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getPointerCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTwoFingerMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onMultipleMoved()V

    return-object p1
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    move-result-object p0

    return-object p0
.end method

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$d;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$e;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture$f;-><init>(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method
