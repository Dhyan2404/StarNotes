.class public final Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "updateShapeRect",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "c",
        "",
        "K",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public K:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;-><init>()V

    const/16 v0, 0x2a

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;->K:I

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getShowExcerptIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getExcerptCollectionList(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getQuoteIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    sget v1, Lcom/onyx/android/sdk/note/R$drawable;->quote_indicator:I

    invoke-static {p0, p1, v1, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->renderDrawable(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ILandroid/graphics/RectF;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;->K:I

    return p0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;->K:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v1

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    const/4 v5, 0x0

    new-instance v6, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->isShowExcerptIndicator()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, p1, v4, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public updateShapeRect()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    sget v4, Lcom/onyx/android/sdk/note/R$drawable;->quote_indicator:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getDrawableRect$default(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ILandroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    return-void
.end method
