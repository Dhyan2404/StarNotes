.class public final Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "pdfShape",
        "shapeBean",
        "",
        "a",
        "",
        "L",
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
.field public L:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;-><init>()V

    const/16 v0, 0x15

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;->L:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->renderPointArray(Landroid/graphics/Matrix;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getRevisedDisplayScale()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->scalePointList(Ljava/util/List;F)Ljava/util/List;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeWidth()F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderScale()F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->realPointArray(Ljava/util/List;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-virtual {p0, p2, v1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->normalizeRenderPointList(Ljava/util/List;F)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRenderPoints([F)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;->L:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;->L:I

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

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createNeoBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;->a(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-object v0
.end method
