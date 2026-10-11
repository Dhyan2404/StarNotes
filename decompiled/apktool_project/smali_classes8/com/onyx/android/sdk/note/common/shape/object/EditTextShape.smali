.class public final Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00188V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "updateShapeRect",
        "recycle",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "a",
        "b",
        "c",
        "",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "",
        "value",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "strokeWidth",
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
.field public J:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->J:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape$inVisualRect$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape$inVisualRect$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTextBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-object v0
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFreeTextShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    new-instance v3, Landroid/graphics/RectF;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontcolor(I)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontSize(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getExtraAttr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->J:I

    return p0
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->recycle()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->recycle(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->render()Z

    move-result p0

    return p0
.end method

.method public setStrokeWidth(F)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->hasPdfUnrenderableChars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->b(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;->c(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public updateShapeRect()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v7

    add-float/2addr v7, v2

    invoke-direct {v3, v1, v2, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text shape: w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shape rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
