.class public final Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J \u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002R\"\u0010\u0019\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "updateShapeRect",
        "",
        "x",
        "y",
        "radius",
        "hitTest",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "a",
        "",
        "J",
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
.field public J:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;->J:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->loadDisplayTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->isOnlyIconStyle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkHeight(Z)I

    move-result v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    add-float/2addr v5, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-direct {v4, v5, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    invoke-virtual {p0, v3, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_0
    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;->J:I

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->isAudioLink(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;->hitTest(FFF)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget p2, p0, Landroid/graphics/RectF;->right:F

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/note/R$dimen;->link_padding:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/RectF;->right:F

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    aget v0, v2, v3

    aget p1, v2, p1

    invoke-virtual {p2, p0, v0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->circleRectHitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    return p0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 8
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

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    const-class v5, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;

    if-lez v4, :cond_4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMinScale(Landroid/graphics/Matrix;)F

    move-result v4

    const/4 v6, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v4

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {v3, v4, v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->scaleTranslate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    sget-object v7, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {v7, p0, v0, v2, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "bitmap not valid"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    mul-float/2addr p0, v4

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v6

    :cond_4
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "origin rect width or height is error."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLinkShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUDIO"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setAudioLinkData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setLinkData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    return-object v1
.end method

.method public updateShapeRect()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;->a()V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    return-void
.end method
