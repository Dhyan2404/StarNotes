.class public final Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J$\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;",
        "",
        "",
        "dstPath",
        "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;",
        "saveOptions",
        "",
        "exportAs",
        "path",
        "",
        "b",
        "page",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "c",
        "a",
        "Ljava/lang/String;",
        "srcPath",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Landroid/graphics/Bitmap;)Z
    .locals 6

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;->getInstance()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->createNewDocument(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->appendPage(FF)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sget-object v0, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0, p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->save(Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;->getInstance()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p1

    if-gtz p1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid page count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    move v0, p1

    :goto_0
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw p1
.end method

.method public final c(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;->getInstance()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    new-array p1, p1, [F

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageSize(I[F)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return-object v8

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget v0, p1, v0

    float-to-int v4, v0

    const/4 v0, 0x1

    aget p1, p1, v0

    float-to-int v5, p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, v4, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, v5, :cond_3

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setRenderOnyxAnnotations(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->renderPage(IIIIIILandroid/graphics/Bitmap;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v8, p3

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :goto_1
    return-object v8

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw p1
.end method

.method public final exportAs(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dstPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->a:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->c(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, v2}, Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;->a(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
