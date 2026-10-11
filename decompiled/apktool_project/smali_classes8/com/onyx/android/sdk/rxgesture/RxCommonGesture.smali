.class public final Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002R$\u0010\u0016\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0017\u0010!\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "subscribe",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c",
        "",
        "d",
        "f",
        "e",
        "g",
        "j",
        "i",
        "k",
        "h",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getLastSingleTapUpPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setLastSingleTapUpPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "lastSingleTapUpPoint",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "getRxGestureContext",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "setRxGestureContext",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V",
        "rxGestureContext",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "getSingleTapConfirmedTimer",
        "()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "singleTapConfirmedTimer",
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
.field public h:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$singleTapConfirmedTimer$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$singleTapConfirmedTimer$1;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    return-void
.end method

.method public static final synthetic access$applyGestureFilter(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cancelSingleTapConfirmed(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public static final synthetic access$onDoubleTap(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onSingleTap(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onSingleTapConfirmed(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public static final synthetic access$stopSingleTapConfirmedTimer(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setClazz(Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterByUpToDownDistance(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterByUpToDownTime(Z)V

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$applyGestureFilter$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$applyGestureFilter$1$1;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterByCancelCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->apply(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableDoubleGesture()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j()V

    :cond_1
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->obtainTimestamp(Lcom/onyx/android/sdk/base/data/TouchPoint;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->obtainTimestamp(Lcom/onyx/android/sdk/base/data/TouchPoint;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getDoubleTapTimeMsThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getDoubleTapDistanceThreshold()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableDoubleGesture()Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    const-string v2, "onDoubleTap"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onDoubleTap()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onDoubleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_4
    return-object p1
.end method

.method public final f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isPalmPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableDoubleGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->i()V

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    const-string v2, "onSingleTap"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onSingleTap()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onSingleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_3
    return-object p1
.end method

.method public final g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    const-string v2, "onSingleTapConfirmed"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onSingleTapConfirmed(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final getLastSingleTapUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getRxGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-object p0
.end method

.method public final getSingleTapConfirmedTimer()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    return-object p0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapConfirmedTimeMsThreshold()J

    move-result-wide v2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v1, v2, v3, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->j:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setLastSingleTapUpPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setRxGestureContext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-void
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    move-result-object p0

    return-object p0
.end method

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$e;-><init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method
