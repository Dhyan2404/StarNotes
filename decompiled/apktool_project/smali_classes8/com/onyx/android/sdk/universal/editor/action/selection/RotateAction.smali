.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020!0 \u00a2\u0006\u0004\u0008-\u0010.J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\rH\u0014J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00000\rH\u0002J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020!0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010(R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010*\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Landroid/graphics/PointF;",
        "pivotPoint",
        "setPivotPoint",
        "Lcom/onyx/android/sdk/geometry/data/RotateType;",
        "rotateType",
        "setRotateType",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "movedPoint",
        "setMovedPoint",
        "lastPoint",
        "setLastPoint",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "selectionRect",
        "",
        "angle",
        "",
        "q",
        "p",
        "o",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Ljava/util/List;",
        "shapes",
        "k",
        "Landroid/graphics/PointF;",
        "l",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "m",
        "Lcom/onyx/android/sdk/geometry/data/RotateType;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/graphics/PointF;

.field public l:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field public m:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field public n:Lcom/onyx/android/sdk/geometry/data/RotateType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->j:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/geometry/data/RotateType;->FREEDOM:Lcom/onyx/android/sdk/geometry/data/RotateType;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->n:Lcom/onyx/android/sdk/geometry/data/RotateType;

    return-void
.end method

.method public static final synthetic access$render(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$rotate(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;F)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->q(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;FZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->m(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;FZ)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;FZ)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->j:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->k:Landroid/graphics/PointF;

    if-nez p0, :cond_0

    const-string p0, "pivotPoint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p2, v0, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->rotate(Ljava/util/List;FLandroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->o(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)F

    move-result v1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;F)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v2, "observeOn(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/HTREnginev2/zrl;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/zrl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;F)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)F
    .locals 4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p0, :cond_0

    const-string p0, "lastPoint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)F
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->n:Lcom/onyx/android/sdk/geometry/data/RotateType;

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/RotateType;->FREEDOM:Lcom/onyx/android/sdk/geometry/data/RotateType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    const-string v0, "movedPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotateType;->getAngle()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v8, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->configureSelectionRender(ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;F)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->onRotate(F)Z

    move-result p2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return p2
.end method

.method public final setLastPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lastPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final setMovedPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "movedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final setPivotPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pivotPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->k:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final setRotateType(Lcom/onyx/android/sdk/geometry/data/RotateType;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/RotateType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rotateType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->n:Lcom/onyx/android/sdk/geometry/data/RotateType;

    return-object p0
.end method
