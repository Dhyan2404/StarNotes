.class public final Lcom/onyx/android/sdk/hwr/action/HWRExportAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRExportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n*S KotlinDebug\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n*L\n48#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRExportAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "onFinally",
        "o",
        "n",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "hwrConvertBean",
        "p",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "input",
        "h",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "getConvertBean",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "setConvertBean",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)V",
        "convertBean",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRExportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n*S KotlinDebug\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n*L\n48#1:59,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public static final synthetic access$batchConvert(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkState(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->o()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onConverted(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->p(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

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

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$b;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$c;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getConvertBean()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    return-object p0
.end method

.method public final getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

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

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->exportObservable(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getRecognizeObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRExportAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRExportAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLEARED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "Recognizer not Open"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public onFinally()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->clear()V

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onFinally()V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 2

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    iget-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->isEmpty(Landroid/graphics/Matrix;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeArgs()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->applyMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setPointMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->convert(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setRegion(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setResult(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method

.method public final setConvertBean(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->h:Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    return-void
.end method

.method public final setInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRExportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method
