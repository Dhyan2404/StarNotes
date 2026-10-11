.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008&\u0010\'J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000c\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0016\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "isRectUpdate",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "t",
        "r",
        "p",
        "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
        "safeBitmap",
        "q",
        "",
        "",
        "u",
        "s",
        "",
        "m",
        "n",
        "list",
        "",
        "o",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;",
        "args",
        "i",
        "Ljava/lang/String;",
        "imgPath",
        "j",
        "F",
        "bitmapScaleRatio",
        "k",
        "Z",
        "forceUserNormalQualitySnapshot",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:F

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->i:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->k:Z

    return-void
.end method

.method public static final synthetic access$checkIsRectUpdate(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createSnapshot(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    return-object p0
.end method

.method public static final synthetic access$isRectUpdate$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->k:Z

    return p0
.end method

.method public static final synthetic access$postResultEvent(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->o(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$saveRegionScreenshot(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->q(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBitmapScaleRatio$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->j:F

    return-void
.end method

.method public static final synthetic access$setForceUserNormalQualitySnapshot$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->l:Z

    return-void
.end method

.method public static final synthetic access$setImgPath$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRectUpdate$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->k:Z

    return-void
.end method

.method public static final synthetic access$shouldUseNormalQuality(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->s()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->u()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isRectUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->k:Z

    return p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$checkIsRectUpdate$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$checkIsRectUpdate$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()F
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getDisplayContentSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    const-string v0, "just(...)"

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->createSnapshot(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/List;)V
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

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->i:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->j:F

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;FLjava/util/List;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "just(...)"

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->l:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageRenderNode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v3

    neg-float v3, v3

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->m()F

    move-result v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;->setRegionInViewport(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;->setRegionInViewport(Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;->setViewBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$h;

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportRenderPageContentBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

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

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$r;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest;->setImgPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest;->setSliceScale(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
