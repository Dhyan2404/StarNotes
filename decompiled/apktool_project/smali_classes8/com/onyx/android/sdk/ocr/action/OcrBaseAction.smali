.class public abstract Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0004J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014R\"\u0010\u0012\u001a\u00020\u000c8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;",
        "",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "build",
        "",
        "onSuccess",
        "",
        "e",
        "onError",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V",
        "input",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "f",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "getOutput",
        "()Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "setOutput",
        "(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V",
        "output",
        "<init>",
        "sdk-ocr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->Companion:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;->getEmpty()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->e:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->e:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->m(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V
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

    new-instance v1, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction$a;-><init>(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/sek;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/sek;-><init>(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction$b;-><init>(Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/ocr/action/OcrBaseAction<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrValues;->INSTANCE:Lcom/onyx/android/sdk/ocr/data/constant/OcrValues;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrValues;->getScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInput()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->e:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-object p0
.end method

.method public final getOutput()Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->setSuccess(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->setError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->setSuccess(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->getNONE()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->setError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V

    return-void
.end method

.method public final setInput(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->e:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-void
.end method

.method public final setOutput(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->f:Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    return-void
.end method
