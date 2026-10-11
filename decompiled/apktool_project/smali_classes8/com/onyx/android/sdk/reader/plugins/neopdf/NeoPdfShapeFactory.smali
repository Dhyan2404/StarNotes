.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\rH\u0016J \u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rH\u0016JC\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020!H\u0016\u00a2\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J(\u0010%\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0018H\u0016J \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J \u0010)\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0018\u0010*\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010,\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J(\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010.\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010/\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u0002022\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;",
        "Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;",
        "()V",
        "createAreaEraseShape",
        "Lcom/onyx/android/sdk/reader/api/ReaderShape;",
        "data",
        "Lcom/onyx/android/sdk/reader/api/ReaderShapeData;",
        "vertices",
        "",
        "createAttachmentShape",
        "fileAttachmentPath",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "createAudioShape",
        "renderBitmap",
        "wavData",
        "",
        "createBrushStrokeShape",
        "realPoints",
        "renderPoints",
        "createCharcoalStrokeShape",
        "createCircleShape",
        "fillColor",
        "",
        "createFreeTextShape",
        "text",
        "fontColor",
        "runArray",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "richText",
        "fontSize",
        "",
        "(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;Ljava/lang/String;F)Lcom/onyx/android/sdk/reader/api/ReaderShape;",
        "createImageShape",
        "createLineShape",
        "createLinkShape",
        "linkDest",
        "linkType",
        "createMarkerStrokeShape",
        "createNeoBrushStrokeShape",
        "createOverlayEraseShape",
        "createPencilStrokeShape",
        "createPolyLineShape",
        "createPolygonShape",
        "createSquareShape",
        "createStampShape",
        "createWaveLineShape",
        "setupShapeWithData",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "shape",
        "sdk-readercore_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAreaEraseShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createAreaEraserShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createAttachmentShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileAttachmentPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createAttachmentShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFileAttachmentPath(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createAudioShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;[B)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wavData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createSoundShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setWavData([B)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createBrushStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderPoints"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRenderPoints([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createCharcoalStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[FLandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderBitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createCharcoalStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createCircleShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;ILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createCircleShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createFreeTextShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;Ljava/lang/String;F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lcom/onyx/android/sdk/neopdf/PdfTextRun;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runArray"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "richText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFreeTextShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontcolor(I)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRichText(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextRuns([Lcom/onyx/android/sdk/neopdf/PdfTextRun;)V

    invoke-virtual {p0, p6}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontSize(F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createImageShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createLinkShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;Ljava/lang/String;I)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkDest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLinkShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkDest(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkType(I)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createMarkerStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderPoints"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createMarkerStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRenderPoints([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createNeoBrushStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderPoints"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createNeoBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRenderPoints([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createOverlayEraseShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createOverlayEraserShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createPencilStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createPencilStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createPolyLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createPolyLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createPolygonShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[FILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createPolygonShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createSquareShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;ILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createSquareShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createStampShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createStampShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public createWaveLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createWavyLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;->setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeWavyLength()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWavyLength(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeWavyPeak()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWavyPeak(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;-><init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V

    return-object p1
.end method

.method public final setupShapeWithData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/reader/api/ReaderShapeData;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getObjectId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setObjId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getLayerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getAuthor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setAuthor(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getFillColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeWidth()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeDashArray()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashArray([I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getStrokeDashPhase()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashPhase(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getLineArrowDirection()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLineArrowDirection(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getResourceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getExtraAttr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderShapeData;->getCustomAttr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    return-object p1
.end method
