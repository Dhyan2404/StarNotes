.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;
.super Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0011\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;",
        "Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "",
        "L",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "M",
        "getSideNum",
        "setSideNum",
        "sideNum",
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

.field public M:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;-><init>()V

    const/16 v0, 0x1b

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->L:I

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->getSHAPE_REGULAR_HEXAGON_SIZE_NUM()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->M:I

    return-void
.end method


# virtual methods
.method public getSideNum()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->M:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->L:I

    return p0
.end method

.method public setSideNum(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->M:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;->L:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createPolygonShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/PolygonShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PolygonShapeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->getSHAPE_REGULAR_HEXAGON_SIZE_NUM()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/PolygonShapeUtils;->calculatePolygonPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;I)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getPolyLineVertices(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/base/data/MatrixValues;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setGraphicalFillBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-object v0
.end method
