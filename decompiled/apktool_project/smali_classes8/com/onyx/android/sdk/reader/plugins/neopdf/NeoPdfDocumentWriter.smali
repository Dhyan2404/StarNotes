.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;
.super Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010X\u001a\u00020U\u00a2\u0006\u0004\u0008\\\u0010]J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J,\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J \u0010\u0017\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0018\u0010!\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0002H\u0016J\u0018\u0010#\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0002H\u0016J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0002H\u0016J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0006H\u0016J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0016J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020)H\u0016J\u0010\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020*H\u0016J\u0018\u0010/\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0002H\u0016J\u0018\u00100\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0002H\u0016J\u0010\u00101\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u00103\u001a\u0004\u0018\u0001022\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u00104\u001a\u000202H\u0016J\u0010\u00106\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u00107\u001a\u00020\u0006H\u0016J\u0008\u00108\u001a\u00020\u0002H\u0016J\u0008\u00109\u001a\u00020\u0006H\u0016J\u0008\u0010:\u001a\u00020\u0002H\u0016J\u0008\u0010;\u001a\u00020\u0006H\u0016J\u0010\u0010=\u001a\u00020,2\u0006\u0010<\u001a\u00020\u0008H\u0016J(\u0010C\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00082\u0006\u0010?\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@H\u0016J\u0010\u0010E\u001a\u00020D2\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010F\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u0008H\u0016J\u0018\u0010H\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u0008H\u0016J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u0008H\u0016J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00082\u0006\u0010?\u001a\u00020\u0002H\u0016J(\u0010O\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010N\u001a\u00020MH\u0016J0\u0010O\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010N\u001a\u00020M2\u0006\u0010P\u001a\u00020\u0002H\u0016J\u0010\u0010Q\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010R\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0002H\u0016J\u0018\u0010T\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010S\u001a\u00020\u0002H\u0016R\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0016\u0010[\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;",
        "",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "options",
        "",
        "openDocument",
        "",
        "page",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "highlights",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "shapes",
        "getPageAnnotations",
        "getPageId",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;",
        "getShapeFactory",
        "Lcom/onyx/android/sdk/reader/api/ReaderShape;",
        "shape",
        "saveShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;",
        "updateShape",
        "writeShape",
        "Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;",
        "data",
        "Lcom/onyx/android/sdk/reader/api/ReaderHighlight;",
        "createHighlight",
        "highlight",
        "saveHighlight",
        "writeHighlight",
        "highlightId",
        "removeHighlight",
        "objId",
        "removeHighlightByObjId",
        "author",
        "setAuthor",
        "savePagesWithAnnotation",
        "saveAs",
        "fileId",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;",
        "Lcom/onyx/android/sdk/neopdf/PdfCallback;",
        "pdfCallback",
        "",
        "setPdfCallback",
        "shapeId",
        "removeShape",
        "removeShapeByObjId",
        "hasOnyxBookmark",
        "Lcom/onyx/android/sdk/neopdf/PdfBookmark;",
        "getOnyxBookmark",
        "bookmark",
        "addOnyxBookmark",
        "removeOnyxBookmark",
        "isNewDocument",
        "getCommitId",
        "isExported",
        "getFileIdFromFile",
        "reopenDocument",
        "quality",
        "setDocumentSaveQuality",
        "pageIndex",
        "pageId",
        "",
        "width",
        "height",
        "insertPage",
        "Landroid/graphics/RectF;",
        "getPageSize",
        "removePage",
        "dstIndex",
        "movePage",
        "copyPage",
        "setPageId",
        "imageId",
        "resourceId",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "setBackground",
        "extraAttr",
        "removeBackground",
        "getShapeObjId",
        "highlightObjId",
        "getHighlightObjId",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;",
        "a",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;",
        "wrapper",
        "b",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;",
        "shapeFactory",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->b:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;

    return-void
.end method


# virtual methods
.method public addOnyxBookmark(ILcom/onyx/android/sdk/neopdf/PdfBookmark;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfBookmark;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bookmark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->addOnyxBookmark(ILcom/onyx/android/sdk/neopdf/PdfBookmark;)Z

    move-result p0

    return p0
.end method

.method public copyPage(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->copyPage(II)Z

    move-result p0

    return p0
.end method

.method public createHighlight(Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;)Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getHighlightId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->highlightId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getObjId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setObjId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setAuthor(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setStartPosition(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setEndPosition(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setNote(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getQuadPoints()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setQuadPoints([F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setStyle(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setColor(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getLinkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setLinkType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getLinkDest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setLinkDest(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->isVertical()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setVertical(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getExtraAttr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;->getCustomAttr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setCustomAttr(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;-><init>(Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)V

    return-object p1
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->commitId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileIdFromFile()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getFileIdFromFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighlightObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "highlightObjId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getHighlightObjId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnyxBookmark(I)Lcom/onyx/android/sdk/neopdf/PdfBookmark;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getOnyxBookmark(I)Lcom/onyx/android/sdk/neopdf/PdfBookmark;

    move-result-object p0

    return-object p0
.end method

.method public getPageAnnotations(ILjava/util/List;Ljava/util/List;)Z
    .locals 1
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

    const-string v0, "highlights"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageAnnotations(ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getPageId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageSize(I)Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageSize(I[F)Z

    new-instance p0, Landroid/graphics/RectF;

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public bridge synthetic getShapeFactory()Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->getShapeFactory()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;

    move-result-object p0

    return-object p0
.end method

.method public getShapeFactory()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->b:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;

    return-object p0
.end method

.method public getShapeObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getShapeObjId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasOnyxBookmark(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->hasOnyxBookmark(I)Z

    move-result p0

    return p0
.end method

.method public insertPage(ILjava/lang/String;FF)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->insertPage(ILjava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method public isExported()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isExported()Z

    move-result p0

    return p0
.end method

.method public isNewDocument()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isNewDocument()Z

    move-result p0

    return p0
.end method

.method public movePage(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->movePage(II)Z

    move-result p0

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

    const/4 p0, 0x1

    return p0
.end method

.method public removeBackground(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeBackground(I)Z

    move-result p0

    return p0
.end method

.method public removeHighlight(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlightId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeHighlight(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeHighlightByObjId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "objId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeHighlightByObjId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOnyxBookmark(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeOnyxBookmark(I)Z

    move-result p0

    return p0
.end method

.method public removePage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removePage(I)Z

    move-result p0

    return p0
.end method

.method public removeShape(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeShape(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeShapeByObjId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "objId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->removeShapeByObjId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reopenDocument()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->reopenDocument()Z

    move-result p0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveAs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public saveAs(Ljava/lang/String;Z)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveAs(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public saveHighlight(ILcom/onyx/android/sdk/reader/api/ReaderHighlight;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    check-cast p2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z

    move-result p0

    return p0
.end method

.method public saveShape(ILcom/onyx/android/sdk/reader/api/ReaderShape;)Z
    .locals 2
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    check-cast p2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setAuthor(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "author"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setAuthor(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
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

    const-string v0, "imageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
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

    const-string v0, "imageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraAttr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDocumentSaveQuality(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setDocumentSaveQuality(I)V

    return-void
.end method

.method public setPageId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setPageId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setPdfCallback(Lcom/onyx/android/sdk/neopdf/PdfCallback;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setPdfCallback(Lcom/onyx/android/sdk/neopdf/PdfCallback;)V

    return-void
.end method

.method public updateShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->updateShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z

    move-result p0

    return p0
.end method

.method public writeHighlight(ILcom/onyx/android/sdk/reader/api/ReaderHighlight;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    check-cast p2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->writeHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z

    move-result p0

    return p0
.end method

.method public writeShape(ILcom/onyx/android/sdk/reader/api/ReaderShape;)Z
    .locals 2
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;->a:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    check-cast p2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->writeShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z

    move-result p0

    :goto_0
    return p0
.end method
