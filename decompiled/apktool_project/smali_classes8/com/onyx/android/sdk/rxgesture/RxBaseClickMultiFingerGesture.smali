.class public abstract Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0000H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "()V",
        "filterByCancel",
        "",
        "gestureContext",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "filterByMultiTouch",
        "filterByPalm",
        "filterByTouchUp",
        "filterByUpToDownDistance",
        "filterByUpToDownTime",
        "getUpToDownTime",
        "",
        "onMultiFingerClicked",
        "onNext",
        "",
        "subscribe",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract filterByCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByMultiTouch(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByUpToDownDistance(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByUpToDownTime(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getUpToDownTime(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)J
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onMultiFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
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

.method public subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$d;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$e;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$f;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$g;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$h;->e:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$h;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$i;->e:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$i;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p0
.end method

.method public bridge synthetic subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    move-result-object p0

    return-object p0
.end method
