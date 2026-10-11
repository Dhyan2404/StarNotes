.class public final Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001c\u001a\u00020\nJ\u0008\u0010\u001d\u001a\u00020\u0000H\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\nJ\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "",
        "shapeReference",
        "Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "addVerifyId",
        "",
        "getAddVerifyId",
        "()Z",
        "setAddVerifyId",
        "(Z)V",
        "isPageHighQualityFlushFinish",
        "setPageHighQualityFlushFinish",
        "isPageNormalFlushFinish",
        "setPageNormalFlushFinish",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "segmentStash",
        "getSegmentStash",
        "setSegmentStash",
        "getShapeReference",
        "()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "clearShapeCacheDataIf",
        "cloneSegmentShapeFlushInfo",
        "createFlushMatrix",
        "Landroid/graphics/Matrix;",
        "newVirtualPageBoxInfo",
        "forceClearShapeCacheData",
        "",
        "isCanClearCache",
        "shapeId",
        "",
        "stashShapeFlushInfo",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private addVerifyId:Z

.field private isPageHighQualityFlushFinish:Z

.field private isPageNormalFlushFinish:Z

.field private final renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private segmentStash:Z

.field private final shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;
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

    const-string v0, "shapeReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->addVerifyId:Z

    return-void
.end method

.method private final cloneSegmentShapeFlushInfo()Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->deepCopy(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish:Z

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish:Z

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->addVerifyId:Z

    iput-boolean p0, v0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->addVerifyId:Z

    return-object v0
.end method


# virtual methods
.method public final clearShapeCacheDataIf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isCanClearCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->clearOnPageFlushFinish()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final createFlushMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newVirtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public final forceClearShapeCacheData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearLowLatencyData()V

    return-void
.end method

.method public final getAddVerifyId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->addVerifyId:Z

    return p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getSegmentStash()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->segmentStash:Z

    return p0
.end method

.method public final getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isCanClearCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPageHighQualityFlushFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish:Z

    return p0
.end method

.method public final isPageNormalFlushFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish:Z

    return p0
.end method

.method public final setAddVerifyId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->addVerifyId:Z

    return-void
.end method

.method public final setPageHighQualityFlushFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish:Z

    return-void
.end method

.method public final setPageNormalFlushFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish:Z

    return-void
.end method

.method public final setSegmentStash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->segmentStash:Z

    return-void
.end method

.method public final shapeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeReference:Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final stashShapeFlushInfo()Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->segmentStash:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->cloneSegmentShapeFlushInfo()Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method
