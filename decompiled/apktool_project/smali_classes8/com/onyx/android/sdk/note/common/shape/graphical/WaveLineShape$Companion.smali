.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape$Companion;",
        "",
        "()V",
        "createPdfShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 6
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

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createWavyLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderScale()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v3

    const/high16 v5, 0x41c00000    # 24.0f

    add-float/2addr v4, v5

    mul-float/2addr v4, v2

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    mul-float/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getPolyLineVertices(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWavyLength(F)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWavyPeak(F)V

    return-object v0
.end method
