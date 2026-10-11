.class public final Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0012R\u001b\u0010\u000c\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0014\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;",
        "editContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "initByShape",
        "clear",
        "lowLatencyRender",
        "c",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "b",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer$renderContext$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer$renderContext$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/universal/R$dimen;->excerpt_rect_selection_min_size:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setCustomSelectionMinSize(I)V

    return-object v0
.end method

.method public final b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionType(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setRenderScale(F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->buildSelectionRect(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/RectF;Z)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportRectExcerptLimitRect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setScaleInUnRotateLimitRect(Z)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setLimitRect(Landroid/graphics/RectF;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-void
.end method

.method public final clear()V
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "render_key_transform"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final initByShape(Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->c:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->setSelectionManager(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->c(Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final lowLatencyRender()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->c:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->b()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->setRenderingShapes(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v3

    const-string v4, "render_key_transform"

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer$lowLatencyRender$1;

    invoke-direct {v5, v2, v1}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer$lowLatencyRender$1;-><init>(Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method
