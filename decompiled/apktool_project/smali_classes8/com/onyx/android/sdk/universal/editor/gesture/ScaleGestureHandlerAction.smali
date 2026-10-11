.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 82\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00018B\u000f\u0012\u0006\u00105\u001a\u000204\u00a2\u0006\u0004\u00086\u00107J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0010H\u0007J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u000e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0002R\u001c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00140(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "",
        "onSubscribe",
        "dispose",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;",
        "event",
        "onScalingArgsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;",
        "onScaleBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScalingEvent;",
        "onScalingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEndEvent;",
        "onScaleEndEvent",
        "",
        "v",
        "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
        "args",
        "q",
        "msg",
        "log",
        "n",
        "m",
        "t",
        "w",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "o",
        "",
        "scale",
        "u",
        "r",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "p",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "h",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "scaleObservable",
        "Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;",
        "pinchZoomDataInfo",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "j",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Z = false

.field public static final l:F = 0.5f

.field public static final m:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/ObservableHolder<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion$scaleToDisplayTimeHistogram$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion$scaleToDisplayTimeHistogram$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->m:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    new-instance p1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->j:Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-void
.end method

.method public static final synthetic access$benchmarkReport(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$collectVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->o(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScaleToDisplayTimeHistogram$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->m:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$log(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$scale(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->p(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleBegin(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->q(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleEnd(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaling(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateScaleMatrix(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->w(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->s(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setScaleEnding(Z)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->getObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

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

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    const-string v1, "scaleRange(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->collectVisibleBoxList(Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final onScaleBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;->getDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;->create(Landroid/view/ScaleGestureDetector;)Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScaleEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScalingArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScalingEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScalingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScalingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingEvent;->getDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;->create(Landroid/view/ScaleGestureDetector;)Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

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

.method public final p(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScalingDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setLastScaleFactor(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setInitialFocusX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setInitialFocusY(F)V

    const-string p1, "beforeScale"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
            ">;"
        }
    .end annotation

    const-string v0, "scaleEnd start"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setScaleEnding(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScalingDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/h1m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h1m;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$j;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$k;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$l;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;-><init>(Lcom/onyx/android/sdk/base/utils/Benchmark;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$o;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final u(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->currentDisplayScale()F

    move-result v4

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getScaleFactor()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusY()F

    move-result v8

    iget-object v9, v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusX()F

    move-result v10

    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusY()F

    move-result v11

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScaleFactor()F

    move-result v13

    mul-float/2addr v6, v13

    sget-object v14, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v15

    const-string v0, "getMinimum(...)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Comparable;

    invoke-virtual {v5}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "getMaximum(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v14, v6, v15, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->isEnabledContinuousScroll()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v12, v0, v0, v10, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusX()F

    move-result v5

    sub-float/2addr v7, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusY()F

    move-result v6

    sub-float/2addr v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {v12, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "focusDx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", focusDy = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScalingDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    div-float v5, v0, v13

    invoke-virtual {v12, v5, v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_0
    mul-float/2addr v4, v0

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->displayScale(Lcom/onyx/android/sdk/universal/editor/WorkBundle;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setDisplayScale(F)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->u(F)V

    invoke-static {v12}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->loadReboundMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setLastScaleFactor(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setLastScalingDisplayMatrix(Landroid/graphics/Matrix;)V

    return-object v4
.end method
