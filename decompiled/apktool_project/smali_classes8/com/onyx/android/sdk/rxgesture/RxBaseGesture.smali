.class public abstract Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010\u0003\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0004J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016R*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "T",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "subscribe",
        "()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;",
        "",
        "throwable",
        "",
        "onError",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "createObservable",
        "gestureContext",
        "onNext",
        "dispose",
        "",
        "isDisposed",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "e",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "getEmitter",
        "()Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "setEmitter",
        "(Lio/reactivex/rxjava3/core/ObservableEmitter;)V",
        "emitter",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "f",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "setListener",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V",
        "listener",
        "g",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "getDisposable",
        "()Lio/reactivex/rxjava3/disposables/Disposable;",
        "setDisposable",
        "(Lio/reactivex/rxjava3/disposables/Disposable;)V",
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

.method public static synthetic a(Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->b(Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/wvl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wvl;-><init>(Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method

.method public final getDisposable()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final getEmitter()Lio/reactivex/rxjava3/core/ObservableEmitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-object p0
.end method

.method public final getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-object p0
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;

    return-void
.end method

.method public onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setEmitter(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method

.method public final setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->f:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-void
.end method

.method public abstract subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
