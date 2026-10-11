.class public final Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCajHnWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n*S KotlinDebug\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n*L\n75#1:88,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0008J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000cH\u0002R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "",
        "init",
        "",
        "path",
        "",
        "openDocument",
        "",
        "pageCount",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "root",
        "tocTree",
        "pageIndex",
        "Landroid/graphics/RectF;",
        "pageSize",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "drawArgs",
        "drawPage",
        "closeDocument",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "rootEntry",
        "a",
        "",
        "J",
        "getHandle",
        "()J",
        "setHandle",
        "(J)V",
        "handle",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
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
        "SMAP\nCajHnWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n*S KotlinDebug\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n*L\n75#1:88,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "CajHnWrapper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    new-instance v15, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getPage()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3fc

    const/16 v16, 0x0

    move-object v2, v15

    move-object/from16 p1, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final closeDocument()Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-wide v1, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    move-result p0

    return p0
.end method

.method public final drawPage(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-wide v3, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->loadPageImage(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CajHnWrapper, loadPageImage, pageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    new-instance v11, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;

    const-string v3, ""

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/ImageRender;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/utils/ImageRender;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, v11, p1, p0}, Lcom/onyx/android/sdk/base/utils/ImageRender;->renderToTargetBitmap(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CajHnWrapper, renderToTargetBitmap, pageIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    return-wide v0
.end method

.method public final init(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pluginOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->getFontDirectories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->init(Ljava/util/List;)V

    return-void
.end method

.method public final openDocument(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->openDocument(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pageCount()I
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-wide v1, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->pageCount(J)I

    move-result p0

    return p0
.end method

.method public final pageSize(I)Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-wide v2, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->getPageSize(JI)Landroid/util/SizeF;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CajHnWrapper, pageSize, page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public final setHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    return-void
.end method

.method public final tocTree(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Z
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-wide v2, p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->getTocTree(JLcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    const/4 p0, 0x1

    return p0
.end method
