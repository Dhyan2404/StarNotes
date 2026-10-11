.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0010\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H&J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000cH&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000cH&JC\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00172\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H&\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000cH&J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J(\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0017H&J \u0010\'\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J \u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J(\u0010,\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000cH&J \u0010-\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000cH&J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;",
        "",
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


# virtual methods
.method public abstract createAreaEraseShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createAttachmentShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createAudioShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;[B)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createBrushStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createCharcoalStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[FLandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createCircleShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;ILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createFreeTextShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;Ljava/lang/String;F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createImageShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createLinkShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;Ljava/lang/String;I)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createMarkerStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createNeoBrushStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createOverlayEraseShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createPencilStrokeShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createPolyLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createPolygonShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[FILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createSquareShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;ILandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createStampShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method

.method public abstract createWaveLineShape(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;[F)Lcom/onyx/android/sdk/reader/api/ReaderShape;
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
.end method
