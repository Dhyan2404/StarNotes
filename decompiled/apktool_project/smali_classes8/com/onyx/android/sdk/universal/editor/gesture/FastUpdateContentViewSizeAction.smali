.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000fH\u0002R\'\u0010\u0018\u001a\u0015\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\t0\t0\u0013\u00a2\u0006\u0002\u0008\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "",
        "onSubscribe",
        "dispose",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
        "event",
        "onFastUpdateContentViewSizeEvent",
        "m",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;",
        "l",
        "checkViewSizeChangedRequest",
        "n",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "h",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "contentViewSizeSubject",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->h:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-void
.end method

.method public static final synthetic access$checkViewSizeChanged(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->l(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$contentViewSizeChanged(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->m(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateViewSize(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->n(Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->h:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->concatMapIfLast(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-object v0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$d;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$h;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;->getNewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;->setSize(Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;->setCalculateBoxManager(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isEnabledScale()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;->setLockScaleByUser(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public final onFastUpdateContentViewSizeEvent(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->h:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
