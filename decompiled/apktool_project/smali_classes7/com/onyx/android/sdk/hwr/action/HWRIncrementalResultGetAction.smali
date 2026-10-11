.class public final Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    return-void
.end method

.method public static final synthetic access$getResult(Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction;->n()Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRIncrementalResultGetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->getOutputListener()Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->getGestureHandler()Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;->getSingleResultObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;->getSingleGestureObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "merge(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput$Companion;->getEmpty()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
