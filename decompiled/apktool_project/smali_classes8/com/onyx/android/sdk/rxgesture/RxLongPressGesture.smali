.class public final Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002R$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "subscribe",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "rxGestureContext",
        "",
        "d",
        "gestureContext",
        "",
        "c",
        "g",
        "f",
        "e",
        "h",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "getRxGestureContext",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "setRxGestureContext",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "i",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "longPressTimer",
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
.field public h:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$longPressTimer$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$longPressTimer$1;-><init>(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->i:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    return-void
.end method

.method public static final synthetic access$handleLongPressTimer(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public static final synthetic access$onLongPress(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveToDownDistance()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getLongPressMoveDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    const-string v1, "filter by start move distance"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->g()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isShortMoved()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isPalmPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->g()V

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPressExit()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onExitLongPress()V

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onExitLongPress()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->g()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->f()V

    :cond_7
    :goto_0
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    const-string v2, "onLongPress"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onLongPress(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onLongPress()V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getLongPressTime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->i:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v1, v2, v3, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->i:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final getRxGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-object p0
.end method

.method public final setRxGestureContext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-void
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    move-result-object p0

    return-object p0
.end method

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method
