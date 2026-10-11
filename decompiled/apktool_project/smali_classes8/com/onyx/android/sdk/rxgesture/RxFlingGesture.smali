.class public final Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0006\u0010\u0002\u001a\u00020\u0000J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0019R$\u0010!\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "subscribe",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "",
        "onNext",
        "dispose",
        "",
        "isDisposed",
        "",
        "throwable",
        "j",
        "h",
        "e",
        "d",
        "g",
        "f",
        "k",
        "rxGestureContext",
        "i",
        "Lio/reactivex/rxjava3/core/Observable;",
        "b",
        "l",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "emitter",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "setListener",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V",
        "listener",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
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
.field public e:Lio/reactivex/rxjava3/core/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final synthetic access$filterByLongPress(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByScale(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByTouch(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$hasMoved(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isUpEvent(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onError(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->j(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onFling(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->l(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final b()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/zvl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zvl;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPress()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class p1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    const-string v0, "filter by longPress"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isScale()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class p1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    const-string v0, "filter by scale"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isSinglePointTouch()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v2, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter by single touch, hasSingleMoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasMultipleMoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMultipleMoved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_0
    return v0
.end method

.method public final g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableTwoMoveGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isSinglePointTouch()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public final getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMoved()Z

    move-result p0

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onExitSingleMove(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class p1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    const-string v0, "onExitSingleMove "

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onFling()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getDownMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v5, v1

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v6, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFling, duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", distanceX = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", distanceY = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onFling(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_2
    return-object p1
.end method

.method public final onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-void
.end method

.method public final subscribe()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->b()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$a;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$b;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$c;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$d;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$e;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$f;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture$g;-><init>(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method
