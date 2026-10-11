.class public final Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "l",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "shapeLinkBean",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "j",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "",
        "k",
        "Z",
        "getRender",
        "()Z",
        "setRender",
        "(Z)V",
        "render",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeLinkBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->i:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public static final synthetic access$setVirtualPageBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$updateShapeRect(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$create$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->k:Z

    return p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortRect(Landroid/graphics/RectF;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->i:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkWidth(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->i:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isOnlyIconStyle()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkHeight(Z)I

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    :cond_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    sub-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v2, v5

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0, v3, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->i:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setRevisionId(Ljava/lang/String;)V

    return-void
.end method

.method public final setRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;->k:Z

    return-void
.end method
