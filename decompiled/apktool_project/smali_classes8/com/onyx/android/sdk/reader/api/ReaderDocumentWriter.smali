.class public abstract Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001:\u0001VB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006H&J,\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0018H\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u001f\u001a\u00020 H&J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0016J\u0008\u0010)\u001a\u00020\u0004H\u0016J\u0008\u0010*\u001a\u00020\u0004H\u0016J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0018\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u00101\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0011H\u0016J\u0018\u00103\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0011H\u0016J\u0010\u00105\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u00107\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0018\u00108\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0011H\u0016J\u0008\u00109\u001a\u00020\u0004H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020;H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u0004H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010=\u001a\u00020\u0011H\u0016J\u0018\u0010>\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\rH\u0016J\u0018\u0010@\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0011H\u0016J(\u0010E\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00112\u0006\u0010H\u001a\u00020IH\u0016J0\u0010E\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00112\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0011H\u0016J\u0012\u0010K\u001a\u00020L2\u0008\u0008\u0001\u0010M\u001a\u00020\u0006H\u0016J\u0018\u0010N\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0011H\u0016J\u0010\u0010O\u001a\u00020L2\u0006\u0010P\u001a\u00020QH\u0016J \u0010R\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020SH\u0016J\u0018\u0010T\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\rH\u0016J\u0018\u0010U\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020BH\u0016\u00a8\u0006W"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;",
        "",
        "()V",
        "addOnyxBookmark",
        "",
        "page",
        "",
        "bookmark",
        "Lcom/onyx/android/sdk/neopdf/PdfBookmark;",
        "copyPage",
        "pageIndex",
        "dstIndex",
        "createHighlight",
        "Lcom/onyx/android/sdk/reader/api/ReaderHighlight;",
        "data",
        "Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;",
        "getCommitId",
        "",
        "getFileIdFromFile",
        "getHighlightObjId",
        "highlightObjId",
        "getOnyxBookmark",
        "getPageAnnotations",
        "highlights",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "shapes",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "getPageId",
        "getPageSize",
        "Landroid/graphics/RectF;",
        "getShapeFactory",
        "Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;",
        "getShapeObjId",
        "shapeId",
        "hasOnyxBookmark",
        "insertPage",
        "pageId",
        "width",
        "",
        "height",
        "isExported",
        "isNewDocument",
        "movePage",
        "openDocument",
        "path",
        "options",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "removeBackground",
        "removeHighlight",
        "highlightId",
        "removeHighlightByObjId",
        "objId",
        "removeOnyxBookmark",
        "removePage",
        "removeShape",
        "removeShapeByObjId",
        "reopenDocument",
        "saveAs",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;",
        "savePagesWithAnnotation",
        "fileId",
        "saveHighlight",
        "highlight",
        "saveShape",
        "shape",
        "Lcom/onyx/android/sdk/reader/api/ReaderShape;",
        "setAuthor",
        "author",
        "setBackground",
        "imageId",
        "resourceId",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "extraAttr",
        "setDocumentSaveQuality",
        "",
        "quality",
        "setPageId",
        "setPdfCallback",
        "pdfCallback",
        "Lcom/onyx/android/sdk/neopdf/PdfCallback;",
        "updateShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;",
        "writeHighlight",
        "writeShape",
        "SaveOptions",
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
.method public addOnyxBookmark(ILcom/onyx/android/sdk/neopdf/PdfBookmark;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfBookmark;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "bookmark"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public copyPage(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract createHighlight(Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;)Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCommitId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFileIdFromFile()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getHighlightObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "highlightObjId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public abstract getOnyxBookmark(I)Lcom/onyx/android/sdk/neopdf/PdfBookmark;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public getPageAnnotations(ILjava/util/List;Ljava/util/List;)Z
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "highlights"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapes"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getPageId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public abstract getPageSize(I)Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getShapeFactory()Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getShapeObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public hasOnyxBookmark(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public insertPage(ILjava/lang/String;FF)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isExported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNewDocument()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public movePage(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeBackground(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeHighlight(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "highlightId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeHighlightByObjId(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "objId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeOnyxBookmark(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removePage(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeShape(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shapeId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeShapeByObjId(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "objId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reopenDocument()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public saveHighlight(ILcom/onyx/android/sdk/reader/api/ReaderHighlight;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "highlight"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public saveShape(ILcom/onyx/android/sdk/reader/api/ReaderShape;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setAuthor(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "author"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "imageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resourceId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string p0, "imageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resourceId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extraAttr"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setDocumentSaveQuality(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param

    return-void
.end method

.method public setPageId(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setPdfCallback(Lcom/onyx/android/sdk/neopdf/PdfCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pdfCallback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public writeHighlight(ILcom/onyx/android/sdk/reader/api/ReaderHighlight;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "highlight"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public writeShape(ILcom/onyx/android/sdk/reader/api/ReaderShape;)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
