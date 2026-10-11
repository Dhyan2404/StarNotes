.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartHWRRecognitionAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartHWRRecognitionAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "hwrOutput",
        "l",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "n",
        "",
        "m",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "h",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "hwrInput",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "convertContext",
        "j",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStartHWRRecognitionAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartHWRRecognitionAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrInput"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convertContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method

.method public static final synthetic access$getHwrBundle$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-object p0
.end method

.method public static final synthetic access$getHwrInput$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public static final synthetic access$onRecResult(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->l(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeConvertContext(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->m()V

    return-void
.end method

.method public static final synthetic access$updateHWRBundle(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->n()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

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
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getRecognizeState()Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->IGNORED:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    if-ne v2, v3, :cond_1

    const-string p1, "ignored, abort after recognize"

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->CONVERTING:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setCandidates(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "Gesture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$h;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->i:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->removeConvertContext(J)Z

    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;-><init>()V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-object v0
.end method
