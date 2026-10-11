.class public abstract Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0004J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0008\u0010\u000e\u001a\u00020\u000cH\u0014R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u001b\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "build",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getRecognizeObserveOn",
        "getCloudObserveOn",
        "",
        "e",
        "",
        "onError",
        "onSuccess",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "getBundle",
        "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "setBundle",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V",
        "bundle",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "f",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "getOutput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "output",
        "<init>",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->m(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onFinally()V

    return-void
.end method


# virtual methods
.method public build()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zeh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zeh;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction$b;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getRecognizeObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-object p0
.end method

.method public final getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getCloudScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    return-object p0
.end method

.method public final getRecognizeObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizeScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setSuccess(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setException(Lcom/onyx/android/sdk/hwr/data/bean/HWRException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public final setBundle(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method
