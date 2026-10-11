.class public final Lcom/onyx/android/sdk/note/common/shape/object/TagShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002R\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/TagShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
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
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final K:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion$tagTextPaint$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion$tagTextPaint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->K:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    const/16 v0, 0x2d

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->J:I

    return-void
.end method

.method public static final synthetic access$getTagTextPaint$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->K:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->calculateWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->getTagHeight()I

    move-result v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    add-float/2addr v5, v0

    iget v0, v2, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    invoke-virtual {p0, v3, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_1
    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->J:I

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

    const-class v5, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;

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

    sget-object v7, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    invoke-virtual {v7, p0, v0, v2, v4}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->createBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Landroid/graphics/Bitmap;

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

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 6
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

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v2, v3, v5}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->createBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    :cond_0
    return-object v1
.end method

.method public updateShapeRect()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->a()V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    return-void
.end method
