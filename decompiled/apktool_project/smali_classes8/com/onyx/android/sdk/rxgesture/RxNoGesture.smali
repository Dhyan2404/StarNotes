.class public final Lcom/onyx/android/sdk/rxgesture/RxNoGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "subscribe",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c",
        "d",
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

.method public static final synthetic access$applyGestureFilter(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onNoGesture(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
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

    new-instance p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;-><init>()V

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setClazz(Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterSingleTap(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->setFilterDoubleTap(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->apply(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onNoGestures(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    move-result-object p0

    return-object p0
.end method

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method
