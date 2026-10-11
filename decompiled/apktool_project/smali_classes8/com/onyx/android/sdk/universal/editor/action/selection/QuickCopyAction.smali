.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/graphics/Bitmap;",
        "m",
        "selectionBitmap",
        "",
        "p",
        "n",
        "o",
        "Landroid/graphics/RectF;",
        "rectF",
        "l",
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

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public static final synthetic access$getSelectionBitmap(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$render(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startDrag(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->p(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v1, p0

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v1, p0, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p1, v1

    new-instance v1, Landroid/graphics/RectF;

    add-float v2, v0, p0

    add-float/2addr p0, p1

    invoke-direct {v1, v0, p1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionRenderingShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->QuickCopy:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v8, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->configureSelectionRender(ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Ljava/util/concurrent/atomic/AtomicReference;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->scaleTranslate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->l(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v1, v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scale(Landroid/graphics/RectF;Ljava/lang/Number;)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/PaintKt;->copy(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/PaintKt;->translucent(Landroid/graphics/Paint;)V

    invoke-virtual {v1, p1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public final p(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->o(Ljava/util/concurrent/atomic/AtomicReference;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;-><init>(Landroid/graphics/Bitmap;)V

    const-string p0, "local_state_start_quick_copy"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p0, v1}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method
