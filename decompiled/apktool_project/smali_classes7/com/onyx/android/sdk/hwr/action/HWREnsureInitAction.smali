.class public final Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;
.super Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
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
.field public g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public static final synthetic access$checkInitialized(Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction$b;-><init>(Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->needInitialize()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/hwr/action/HWRInitAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/action/HWRInitAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method
