.class public abstract Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008`\u0010aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H&J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010#\u001a\u00020 2\u0006\u0010\"\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\'\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0013H\u0016J\n\u0010)\u001a\u0004\u0018\u00010(H\u0016J\n\u0010+\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010,\u001a\u00020\u0002H\u0016J&\u00103\u001a\u0002022\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002000/H\u0004R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010;\u001a\u00020:8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010B\u001a\u00020A8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\"\u0010H\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008N\u0010I\u001a\u0004\u0008O\u0010K\"\u0004\u0008P\u0010MR(\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000f0Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\"\u0010_\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "init",
        "open",
        "clear",
        "close",
        "destroy",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "lifecycle",
        "",
        "isIdle",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "waitForIdle",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizerType",
        "",
        "getContentType",
        "getLang",
        "",
        "onImport",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;",
        "onPointerEvents",
        "onUndo",
        "onRedo",
        "onAddStroke",
        "onErase",
        "onReplace",
        "onTransform",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "export",
        "convertBean",
        "optimize",
        "type",
        "data",
        "lang",
        "compileTextModel",
        "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;",
        "getOutputListener",
        "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;",
        "getGestureHandler",
        "getOpenParam",
        "contentType",
        "candidate",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "pointerEvents",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "candidateToCandidate",
        "a",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "getLifecycle",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "setLifecycle",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "model",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "getModel",
        "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "setModel",
        "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "recognizer",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "getRecognizer",
        "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "setRecognizer",
        "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V",
        "initInput",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInitInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInitInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "openInput",
        "getOpenInput",
        "setOpenInput",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "b",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "getIdleStatePublishObservable",
        "()Lio/reactivex/rxjava3/subjects/Subject;",
        "setIdleStatePublishObservable",
        "(Lio/reactivex/rxjava3/subjects/Subject;)V",
        "idleStatePublishObservable",
        "c",
        "Z",
        "getIdle",
        "()Z",
        "setIdle",
        "(Z)V",
        "idle",
        "<init>",
        "()V",
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
.field public a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public initInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

.field public model:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public openInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

.field public recognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CREATED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->c:Z

    return-void
.end method


# virtual methods
.method public final candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "contentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "candidate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pointerEvents"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;->text(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;->shape(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget-object p3, Lcom/onyx/android/sdk/geometry/extractor/GeometryArgsExtractorFactory;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/GeometryArgsExtractorFactory;

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/geometry/extractor/GeometryArgsExtractorFactory;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setShapeArgs(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object p0

    :cond_1
    const-string p0, "Gesture"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;->gesture(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;->other(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLEARED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method

.method public abstract close()V
.end method

.method public compileTextModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lang"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLOSED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->close()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->DESTROYED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public abstract export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public exportObservable(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->exportObservable(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGestureHandler()Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIdle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->c:Z

    return p0
.end method

.method public final getIdleStatePublishObservable()Lio/reactivex/rxjava3/subjects/Subject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method

.method public final getInitInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->initInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "initInput"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-object p0
.end method

.method public final getModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->model:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->openInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "openInput"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpenParam()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    return-object p0
.end method

.method public getOutputListener()Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->recognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "recognizer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public init(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setInitInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public isIdle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->c:Z

    return p0
.end method

.method public lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-object p0
.end method

.method public needActivate()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needActivate(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needClear()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needClear(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needClose()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needClose(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needDestroy()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needDestroy(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needDiscard()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needDiscard(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needHandle()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needHandle(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needInitialize()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needInitialize(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needOpen()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needOpen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needReopen(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needReopen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public onAddStroke(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onErase(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onImport(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onPointerEvents(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onRedo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onReplace(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onTransform(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onUndo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unsupported Operation"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public abstract open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public optimize(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "convertBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->c:Z

    return-void
.end method

.method public final setIdleStatePublishObservable(Lio/reactivex/rxjava3/subjects/Subject;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/subjects/Subject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method

.method public final setInitInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->initInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public final setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public final setModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->model:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-void
.end method

.method public final setOpenInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->openInput:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public final setRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->recognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    return-void
.end method

.method public waitForIdle()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->c:Z

    if-eqz v0, :cond_0

    const-string p0, "Already in Idle State"

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->b:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method
