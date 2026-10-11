.class public final Lcom/onyx/android/sdk/base/scheduler/ActionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0007J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0007J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\r\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/scheduler/ActionManager;",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "action",
        "",
        "execute",
        "Lio/reactivex/rxjava3/core/Observable;",
        "subscribe",
        "resubscribe",
        "unsubscribe",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "a",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "observableHolder",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/ObservableHolder<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    :cond_0
    return-void
.end method

.method public final execute(Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    :cond_0
    return-void
.end method

.method public final resubscribe()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->unsubscribe()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->subscribe()V

    return-void
.end method

.method public final subscribe()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->getObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/scheduler/ActionManager$a;->e:Lcom/onyx/android/sdk/base/scheduler/ActionManager$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onComplete()Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->a:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method
