.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n766#2:129\n857#2,2:130\n1655#2,8:133\n1#3:132\n*S KotlinDebug\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n*L\n123#1:129\n123#1:130,2\n125#1:133,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u001c\u001a\u00020\u0017\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\nH\u0014J2\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000fH\u0002J\"\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\n2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0017\u0010\u001c\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R!\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "selectAll",
        "setSelectAllShapes",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "setVirtualBoxInfo",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "boxInfo",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "touchPointList",
        "Lio/reactivex/rxjava3/functions/Predicate;",
        "selectedPredicate",
        "q",
        "shapeList",
        "r",
        "shape",
        "m",
        "o",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "j",
        "Z",
        "selectAllShapes",
        "",
        "k",
        "Lkotlin/Lazy;",
        "p",
        "()Ljava/util/List;",
        "lassoElements",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V",
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
        "SMAP\nSelectShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n766#2:129\n857#2,2:130\n1655#2,8:133\n1#3:132\n*S KotlinDebug\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n*L\n123#1:129\n123#1:130,2\n125#1:133,8\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public j:Z

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$lassoElements$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$lassoElements$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$canSelectByLasso(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->m(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSelectAllShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->j:Z

    return p0
.end method

.method public static final synthetic access$selectShapes(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->q(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transformSelectedShapes(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/HashSet;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->n(Ljava/util/HashSet;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final n(Ljava/util/HashSet;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "$shapeSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->o()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/sunia/HTREnginev2/yfm;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/yfm;-><init>(Ljava/util/HashSet;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$a;

    invoke-direct {v4, p0, v3}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$b;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$b;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$c;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$d;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetType(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->p()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;->canSelectByLasso(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final o()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPagePointsMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->isRectSelection()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->toRectTouchPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds(Landroid/graphics/Path;Z)Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$getHitTestVisibleBoxList$4;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$getHitTestVisibleBoxList$4;

    aput-object v3, p0, v0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$getHitTestVisibleBoxList$5;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$getHitTestVisibleBoxList$5;

    aput-object v0, p0, v2

    invoke-static {p0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$f;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$g;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$h;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$h;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$i;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$i;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setSelectAllShapes(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->j:Z

    return-object p0
.end method

.method public final setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method
