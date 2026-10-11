.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000c\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0014\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010%R\u0016\u0010\'\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "m",
        "u",
        "r",
        "q",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "sliceInfo",
        "s",
        "o",
        "",
        "",
        "v",
        "t",
        "",
        "n",
        "list",
        "",
        "p",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;",
        "args",
        "i",
        "Ljava/lang/String;",
        "imgPath",
        "Landroid/graphics/RectF;",
        "j",
        "Landroid/graphics/RectF;",
        "originalShapeRect",
        "k",
        "F",
        "bitmapScaleRatio",
        "Z",
        "isRectUpdate",
        "forceUserNormalQualitySnapshot",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroid/graphics/RectF;

.field public k:F

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->i:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->l:Z

    return-void
.end method

.method public static final synthetic access$checkIsRectUpdate(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkRectangles(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->m()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$createSnapshot(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->o()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    return-object p0
.end method

.method public static final synthetic access$isRectUpdate$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->l:Z

    return p0
.end method

.method public static final synthetic access$postResultEvent(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->p(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$renderNewShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveTextScreenshot(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->s(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBitmapScaleRatio$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->k:F

    return-void
.end method

.method public static final synthetic access$setForceUserNormalQualitySnapshot$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->m:Z

    return-void
.end method

.method public static final synthetic access$setImgPath$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOriginalShapeRect$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->j:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$setRectUpdate$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->l:Z

    return-void
.end method

.method public static final synthetic access$shouldUseNormalQuality(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$checkIsRectUpdate$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$checkIsRectUpdate$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Z
    .locals 11

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-ltz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v10

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-direct {v8, v9, v5, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object v6

    div-int/lit8 v7, v2, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-static {v5, v6}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->approximatelyTheSame(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-eq v2, v1, :cond_3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    move v4, v3

    :goto_2
    return v4
.end method

.method public final n()F
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->contentPageMaxScale$default(Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->m:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final o()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getDisplayContentSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->i:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->k:F

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;FLjava/util/List;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->j:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    const-string v1, "originalShapeRect"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToPageDisplayRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;->setDisplayRectFList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;->setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->n()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;->setSliceScale(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$h;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$r;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest;->setImgPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->n()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest;->setSliceScale(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
