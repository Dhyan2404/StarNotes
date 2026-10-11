.class public final Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/neopdf/export/PdfExport;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoPdfExport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,96:1\n37#2,2:97\n*S KotlinDebug\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n*L\n78#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J.\u0010\u0012\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J&\u0010\u0012\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0016\u0010\u0015\u001a\u00020\u00062\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000bH\u0016J\u0008\u0010\u0016\u001a\u00020\u000eH\u0016J\u0008\u0010\u0017\u001a\u00020\u0006H\u0016R\u0016\u0010\u001a\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R(\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;",
        "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
        "",
        "path",
        "Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;",
        "args",
        "",
        "create",
        "password",
        "open",
        "save",
        "",
        "Landroid/graphics/Bitmap;",
        "bitmaps",
        "",
        "pageWidth",
        "pageHeight",
        "pageNumber",
        "appendPage",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "tocEntries",
        "setTocEntry",
        "pageCount",
        "close",
        "a",
        "I",
        "insertPageIndex",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
        "b",
        "Ljava/util/List;",
        "getImportContextList",
        "()Ljava/util/List;",
        "setImportContextList",
        "(Ljava/util/List;)V",
        "importContextList",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "getPdfNative",
        "()Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "pdfNative",
        "Lcom/onyx/android/sdk/neopdf/PdfBundle;",
        "()Lcom/onyx/android/sdk/neopdf/PdfBundle;",
        "pdfBundle",
        "<init>",
        "()V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNeoPdfExport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,96:1\n37#2,2:97\n*S KotlinDebug\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n*L\n78#1:97,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->ensureInitialized$default(Lcom/onyx/android/sdk/neopdf/NeoPdfNative;Ljava/util/List;ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/neopdf/PdfBundle;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;->getInstance()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    return-object p0
.end method

.method public appendPage(Ljava/util/List;II)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "bitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->appendPage(Ljava/util/List;III)V

    .line 12
    iget p1, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    return-void
.end method

.method public appendPage(Ljava/util/List;III)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "bitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->appendPage(FF)Z

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 7
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p4, p3, p2, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v3, p1, v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->save$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;ILjava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/FontManager;->destroy()V

    return-void
.end method

.method public create(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->createNewDocument(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->setAuthor(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;->getCreator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->setCreator(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    return-void
.end method

.method public getImportContextList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->b:Ljava/util/List;

    return-object p0
.end method

.method public getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    return-object p0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->createNewDocument(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;Ljava/lang/String;)J

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->a:I

    return-void
.end method

.method public pageCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p0

    return p0
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->saveWithTagInfo(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Z

    return-void
.end method

.method public setImportContextList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->b:Ljava/util/List;

    return-void
.end method

.method public setTocEntry(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tocEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setTableOfContent([Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z

    return-void
.end method
