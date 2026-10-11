.class public final Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u00002\u00020\u0001:\u0001IB\u000f\u0012\u0006\u0010(\u001a\u00020&\u00a2\u0006\u0004\u0008G\u0010HJ\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J*\u0010\u001b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J(\u0010\u001d\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000eH\u0016J\u0008\u0010 \u001a\u00020\u0006H\u0016J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010%\u001a\u00020\u0018H\u0002R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010\'R$\u0010/\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R.\u00107\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u0001008\u0006@GX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0016\u0010:\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\"\u0010@\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u00109\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010F\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;",
        "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;",
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;",
        "callback",
        "",
        "thresholdCount",
        "",
        "setPDFExportCallback",
        "",
        "space",
        "total",
        "spaceAdaptive",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/RectF;",
        "rectF",
        "drawRect",
        "",
        "pts",
        "drawLine",
        "Landroid/graphics/Matrix;",
        "matrix",
        "",
        "adaptiveSpacing",
        "useShader",
        "drawDotted",
        "radius",
        "drawCircle",
        "strokePaint",
        "strokeColorAdaptive",
        "recycle",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "pdfShapeInfo",
        "b",
        "a",
        "c",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "",
        "Ljava/lang/String;",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "pageId",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "value",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "getPdfNative",
        "()Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "setPdfNative",
        "(Lcom/onyx/android/sdk/neopdf/NeoPdf;)V",
        "pdfNative",
        "d",
        "I",
        "savePdfShapeThresholdCount",
        "e",
        "getSavedPdfShapeCount",
        "()I",
        "setSavedPdfShapeCount",
        "(I)V",
        "savedPdfShapeCount",
        "f",
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;",
        "getCallback",
        "()Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;",
        "setCallback",
        "(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V",
        "PDFExportCallback",
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
.field public final a:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "geoLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    const/16 p1, 0x1388

    iput p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->d:I

    return-void
.end method

.method public static synthetic setPDFExportCallback$default(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget p2, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->d:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPDFExportCallback(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Paint;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    const-string p0, "0"

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->drawPageBackgroundShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->e:I

    iget v0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->d:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;->onThresholdReached()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->e:I

    :cond_2
    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;->shouldAbortExport()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;F[F)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pts"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a(Landroid/graphics/Paint;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v0, p4, v0

    sub-float v1, v0, p3

    const/4 v2, 0x1

    aget p4, p4, v2

    sub-float v2, p4, p3

    add-float/2addr v0, p3

    add-float/2addr p4, p3

    invoke-direct {p2, v1, v2, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->b(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-void
.end method

.method public drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V
    .locals 19
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "canvas"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result v4

    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v4

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v8, v7}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokeColor(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v7, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v9, v9, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v10

    if-eqz v10, :cond_4

    iget v10, v10, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v11

    if-eqz v11, :cond_5

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iget v12, v5, Landroid/graphics/RectF;->left:F

    iget v13, v5, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v14, v7

    sub-float/2addr v14, v9

    invoke-virtual {v0, v4, v14}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->spaceAdaptive(FF)F

    move-result v4

    :cond_6
    const/4 v14, 0x2

    if-eqz p3, :cond_7

    :goto_4
    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v15

    sub-float/2addr v15, v7

    sub-float/2addr v15, v9

    rem-float/2addr v15, v4

    int-to-float v8, v14

    div-float/2addr v15, v8

    :goto_5
    add-float/2addr v7, v15

    add-float/2addr v12, v7

    iget v7, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    sub-float/2addr v7, v15

    const/4 v8, 0x1

    int-to-float v9, v8

    add-float/2addr v7, v9

    if-eqz p3, :cond_9

    :goto_6
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v15

    sub-float/2addr v15, v10

    sub-float/2addr v15, v11

    rem-float/2addr v15, v4

    int-to-float v8, v14

    div-float v8, v15, v8

    :goto_7
    add-float/2addr v10, v8

    add-float/2addr v13, v10

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v8

    add-float/2addr v10, v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v8

    if-eqz v8, :cond_b

    add-float v8, v12, v4

    goto :goto_8

    :cond_b
    move v8, v12

    :goto_8
    iget-object v11, v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v11, v5, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetX(Landroid/graphics/RectF;F)F

    move-result v11

    add-float/2addr v8, v11

    :goto_9
    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    if-gt v11, v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c()Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v11

    if-eqz v11, :cond_c

    add-float v11, v13, v4

    goto :goto_a

    :cond_c
    move v11, v13

    :goto_a
    iget-object v15, v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v15, v5, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetY(Landroid/graphics/RectF;F)F

    move-result v15

    add-float/2addr v11, v15

    :goto_b
    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    if-gt v15, v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v14, v15, :cond_e

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    move-object/from16 v17, v5

    sget-object v5, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v14, v5, :cond_d

    goto :goto_c

    :cond_d
    add-float v5, v7, v12

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    goto :goto_d

    :cond_e
    move-object/from16 v17, v5

    :goto_c
    move v5, v8

    :goto_d
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    if-eq v14, v15, :cond_10

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v14, v15, :cond_f

    goto :goto_e

    :cond_f
    add-float v14, v10, v13

    sub-float/2addr v14, v11

    sub-float/2addr v14, v9

    move/from16 v16, v7

    goto :goto_f

    :cond_10
    :goto_e
    move/from16 v16, v7

    move v14, v11

    :goto_f
    const/4 v15, 0x2

    new-array v7, v15, [F

    const/16 v18, 0x0

    aput v5, v7, v18

    const/4 v5, 0x1

    aput v14, v7, v5

    if-eqz v2, :cond_11

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_11
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getRadius()F

    move-result v14

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v18

    mul-float v14, v14, v18

    invoke-virtual {v0, v1, v6, v14, v7}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;F[F)V

    add-float/2addr v11, v4

    move v14, v15

    move/from16 v7, v16

    move-object/from16 v5, v17

    goto :goto_b

    :cond_12
    move-object/from16 v17, v5

    move/from16 v16, v7

    const/4 v5, 0x1

    const/4 v15, 0x2

    add-float/2addr v8, v4

    move v14, v15

    move/from16 v7, v16

    move-object/from16 v5, v17

    goto/16 :goto_9

    :cond_13
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pts"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a(Landroid/graphics/Paint;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v1, p3, v1

    aget p2, p3, p2

    const/4 v2, 0x2

    aget v2, p3, v2

    const/4 v3, 0x3

    aget p3, p3, v3

    invoke-direct {v0, v1, p2, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getStrokeWidth()F

    move-result p3

    invoke-static {p2, p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->b(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rectF"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a(Landroid/graphics/Paint;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    new-array p2, p2, [F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    iget v1, p3, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    const/4 v0, 0x2

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    const/4 v0, 0x3

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    invoke-static {p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->drawPageBackgroundShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    :cond_0
    return-void
.end method

.method public final getCallback()Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    return-object p0
.end method

.method public final getSavedPdfShapeCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->e:I

    return p0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public final setCallback(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;

    return-void
.end method

.method public final setPDFExportCallback(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;I)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput p2, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->d:I

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->f:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPdfNative(Lcom/onyx/android/sdk/neopdf/NeoPdf;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->c:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    return-void
.end method

.method public final setSavedPdfShapeCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->e:I

    return-void
.end method

.method public spaceAdaptive(FF)F
    .locals 0

    return p1
.end method

.method public strokeColorAdaptive(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "strokePaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->a:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getEnableColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getColor()I

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->similarWithoutAlpha(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method
