.class public final Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0016\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0019J\u0016\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\rJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019J\u0016\u0010 \u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010!\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010#\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010%\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010&J\u0018\u0010)\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010&J\u0010\u0010,\u001a\u0004\u0018\u00010&2\u0006\u0010+\u001a\u00020*J\u0016\u0010-\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010.\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010/\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&J\u0016\u00101\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u0006\u00100\u001a\u00020\u0004J\u000e\u00102\u001a\u00020\t2\u0006\u0010+\u001a\u00020*J\u0010\u00103\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u00107\u001a\u0002062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00105\u001a\u000204H\u0002R\u0014\u0010:\u001a\u0002088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00087\u00109R\u0014\u0010<\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00083\u0010;R\u0014\u0010>\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008=\u0010;R\u0014\u0010A\u001a\u0002068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010C\u001a\u0002068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R\u0014\u0010E\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008D\u0010;\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "pdfShape",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "shapeBean",
        "initPdfShape",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "shapeLineStyle",
        "",
        "scale",
        "",
        "setDashLineStyle",
        "Landroid/graphics/RectF;",
        "getShapeRect",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "renderPointList",
        "",
        "normalizeRenderPointList",
        "getPolyLineVertices",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "matrixValues",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;",
        "setTransformMatrix",
        "transformRectF",
        "originRect",
        "getTransformRectF",
        "Landroid/graphics/Matrix;",
        "getTransformMatrix",
        "setGraphicalFillBitmap",
        "setFillBitmap",
        "getTriangleVertices",
        "setImageBitmap",
        "setFileAttachment",
        "setAudioData",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "linkModel",
        "setLinkData",
        "setAudioLinkData",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "createLinkModel",
        "setTimestampBitmap",
        "setTextBitmap",
        "createPdfShape",
        "embedShapeBean",
        "createImagePdfShape",
        "getImagePdfShapeBitmapScale",
        "b",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "bitmapSize",
        "",
        "a",
        "",
        "J",
        "AUDIO_WAV_DECODE_BYTES_LIMIT",
        "F",
        "TEXT_SHAPE_BITMAP_EXTRA_SCALE_DEFAULT",
        "c",
        "TEXT_SHAPE_BITMAP_EXTRA_SCALE_MAX",
        "d",
        "I",
        "DEFAULT_QUALITY",
        "e",
        "MIN_QUALITY",
        "f",
        "IMAGE_PDF_SHAPE_BITMAP_SCALE",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:J = 0x4100000L

.field public static final b:F = 3.0f

.field public static final c:F = 16.0f

.field public static final d:I = 0x64

.field public static final e:I = 0x4b

.field public static final f:F = 3.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/base/data/Size;)I
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getRect()Landroid/graphics/RectF;

    move-result-object p0

    const/16 p1, 0x64

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p1

    mul-float/2addr p0, p2

    float-to-int p0, p0

    if-le p0, p1, :cond_1

    return p1

    :cond_1
    const/16 p1, 0x4b

    if-ge p0, p1, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    return-object p0
.end method

.method public final createImagePdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedShapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    new-instance v7, Landroid/graphics/RectF;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBitmapRectExpand()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v1

    :goto_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->underContent()Z

    move-result v8

    invoke-static {v7, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBitmapScale()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    :cond_2
    if-eqz v8, :cond_3

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBitmapScale()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_4

    int-to-float v3, v9

    div-float/2addr v3, v1

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    :cond_5
    if-eqz v8, :cond_6

    invoke-static {p1, v9}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    :cond_6
    invoke-virtual {p0, p2, v7}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resetDefaultColor()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBitmapScale()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_7

    int-to-float v1, v9

    div-float/2addr v1, p2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_7
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {p1, v9}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    :cond_9
    throw p0
.end method

.method public final createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;->create(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setRemark(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDisplayStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setDisplayStyle(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "DOCUMENT"

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setType(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setLinkRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x27dabd07

    if-eq v1, v2, :cond_5

    const v2, 0x1494f

    if-eq v1, v2, :cond_3

    const v2, 0x3bba3b6

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "PAGE_NUMBER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setTargetPageId(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-object v0
.end method

.method public final createPdfShape(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "linkModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLinkShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setLinkData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V

    return-object v0
.end method

.method public final getImagePdfShapeBitmapScale(Lcom/onyx/android/sdk/note/common/shape/Shape;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getPolyLineVertices(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/base/data/MatrixValues;)[F
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pointList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [F

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    .line 6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final getPolyLineVertices(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)[F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getPolyLineVertices(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/base/data/MatrixValues;)[F

    move-result-object p0

    return-object p0
.end method

.method public final getShapeRect(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isUniversalShape(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeWidth()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    return-object p1
.end method

.method public final getTransformMatrix(Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Landroid/graphics/Matrix;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "transformRectF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1
    return-object p0
.end method

.method public final getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    return-object p0
.end method

.method public final getTriangleVertices(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)[F
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x6

    new-array p0, p0, [F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    aput v2, p0, v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    const/4 v3, 0x1

    aput v2, p0, v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    const/4 v4, 0x2

    aput v2, p0, v4

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    const/4 v2, 0x3

    aput v0, p0, v2

    int-to-float v0, v4

    aget v1, p0, v1

    mul-float/2addr v0, v1

    aget v1, p0, v4

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v0, 0x5

    aget v1, p0, v2

    aput v1, p0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p0
.end method

.method public final initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getShapeRect(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderStrokeWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getFillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Lcom/onyx/android/sdk/base/data/MatrixValues;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getExtraAttr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/MatrixValues;->getValues()[F

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixMinScale([F)F

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setDashLineStyle(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;F)V

    return-object p1
.end method

.method public final normalizeRenderPointList(Ljava/util/List;F)[F
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;F)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "renderPointList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    new-array p0, p0, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    div-float/2addr v4, p2

    aput v4, p0, v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    div-float/2addr v5, p2

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result v3

    div-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setAudioData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResourceLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResource()Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->createAudioBitmap(Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    const-wide/32 v1, 0x4100000

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->decodeAudioToWav(Ljava/lang/String;J)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setWavData([B)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResource()Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final setAudioLinkData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AUDIO"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFFILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/32 v2, 0x4100000

    invoke-virtual {p2, v1, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->decodeAudioToWav(Ljava/lang/String;J)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setWavData([B)V

    sget-object p2, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->Companion:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;->fromAudioInfoBean(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setDashLineStyle(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;F)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->getLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getDashLineIntervals()[F

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getPhase()F

    move-result p0

    mul-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashPhase(I)V

    array-length p0, p2

    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p2, v1

    mul-float/2addr v2, p3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashArray([I)V

    :cond_2
    return-void
.end method

.method public final setFileAttachment(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResourceLocalPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeAttachmentUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeAttachmentUtils;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeAttachmentUtils;->createAttachmentBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFileAttachmentPath(Ljava/lang/String;)V

    return-void
.end method

.method public final setFillBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setGraphicalFillBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->isIgnoreFill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setFillBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-void
.end method

.method public final setImageBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getResourceLocalPath()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    new-instance p2, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v10, 0x0

    invoke-direct {p2, v9, v9, v1, v10}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "embedded pdfShape image origin size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v11, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->decodeImageAsBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ImageManager;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v11, v0}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->isJpegImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1, v9, v8, v10}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->hasTransparentPixelFast$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->a(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/base/data/Size;)I

    move-result p0

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, p2, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->toBytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setResourceBuf([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final setLinkData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DOCUMENT"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NOTE"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetDocId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getLinkRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFFILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x27dabd07

    if-eq v1, v2, :cond_6

    const v2, 0x1494f

    if-eq v1, v2, :cond_4

    const v2, 0x24a7f2

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_4
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkDest(Ljava/lang/String;)V

    const/4 p0, 0x2

    goto :goto_1

    :cond_6
    const-string v0, "PAGE_NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetPageIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkDest(Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkType(I)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final setTextBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    new-instance v4, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    const/4 p0, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v1, v3, p0, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    const v0, 0xfffffff

    int-to-float v0, v0

    mul-float/2addr p0, p2

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p0, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->setExtraScale(F)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setTimestampBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    sget-object v1, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p2

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeTimestampUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTimestampUtils;

    invoke-virtual {v1, p2, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeTimestampUtils;->createTimestampBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->b(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    return-object p0
.end method

.method public final setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pdfShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transformRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result p0

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterX()F

    move-result v1

    .line 7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterY()F

    move-result v2

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    .line 10
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    return-object p2
.end method
