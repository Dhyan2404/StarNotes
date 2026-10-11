.class public final Lcom/onyx/android/sdk/neopdf/PdfUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,296:1\n337#2:297\n13404#3,3:298\n1864#4,3:301\n1855#4:304\n1864#4,2:305\n1866#4:312\n1856#4:313\n41#5,5:307\n526#6:314\n511#6,6:315\n*S KotlinDebug\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n*L\n59#1:297\n198#1:298,3\n239#1:301,3\n256#1:304\n267#1:305,2\n267#1:312\n256#1:313\n271#1:307,5\n292#1:314\n292#1:315,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\r\u001a\u00020\nJ4\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J4\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J2\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0018\u0010!\u001a\u00020 2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u0010J\u001c\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0004J(\u0010+\u001a\u00020*2\u0008\u0010%\u001a\u0004\u0018\u00010\u001a2\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010)\u001a\u00020(JT\u00102\u001a\u00020*2\u0008\u0010%\u001a\u0004\u0018\u00010\u001a2\u0006\u0010&\u001a\u00020\u001a2\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.2\u0006\u0010\'\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0004J2\u00103\u001a\u00020*2\u0006\u0010&\u001a\u00020\u001a2\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.J\u001a\u00105\u001a\u00020\u00042\u0008\u00104\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J<\u00108\u001a\u00020\u00102\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.2\u0006\u00106\u001a\u00020-2\u0006\u00107\u001a\u00020\u0004H\u0002R\u0014\u00109\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010;\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008;\u0010:R\u0014\u0010<\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008<\u0010:R\u0014\u0010@\u001a\u00020=8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfUtils;",
        "",
        "",
        "cm",
        "",
        "pdfCMToPx",
        "mm",
        "pdfMMToPx",
        "px",
        "pdfPxToMM",
        "",
        "pdfMMToPxScale",
        "pageSize",
        "dpi",
        "pdfPageSizeToSizeFormatPx",
        "Landroid/graphics/RectF;",
        "",
        "path",
        "pageIndex",
        "width",
        "height",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "Landroid/graphics/Bitmap;",
        "renderGlobalBKPdfPageBitmap",
        "pdfPageBitmap",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "pdfNative",
        "globalBKPdfPageCount",
        "newPdfPageCount",
        "openNewPdf",
        "openPdf",
        "",
        "saveWithTagInfo",
        "",
        "loadPageUniqueIdMap",
        "loadPageSize",
        "srcPdfNative",
        "exportPdfNative",
        "srcFilePath",
        "",
        "pages",
        "",
        "updateExportPdfLinks",
        "Ljava/util/LinkedHashMap;",
        "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
        "Lkotlin/collections/LinkedHashMap;",
        "pendingPdfPageLinkMap",
        "srcPageIndex",
        "exportPageIndex",
        "collectPendingPdfLinks",
        "flushPendingPdfLinks",
        "neoPdf",
        "c",
        "pdfPageLinks",
        "pageDest",
        "a",
        "PDF_STANDARD_DPI",
        "F",
        "MM_TO_IN_VALUE",
        "ONYX_SIZE_FORMAT_FIX_DPI",
        "Lcom/onyx/android/sdk/neopdf/PdfBundle;",
        "b",
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
        "SMAP\nPdfUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,296:1\n337#2:297\n13404#3,3:298\n1864#4,3:301\n1855#4:304\n1864#4,2:305\n1866#4:312\n1856#4:313\n41#5,5:307\n526#6:314\n511#6,6:315\n*S KotlinDebug\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n*L\n59#1:297\n198#1:298,3\n239#1:301,3\n256#1:304\n267#1:305,2\n267#1:312\n256#1:313\n271#1:307,5\n292#1:314\n292#1:315,6\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MM_TO_IN_VALUE:F = 25.4f

.field public static final ONYX_SIZE_FORMAT_FIX_DPI:F = 253.69f

.field public static final PDF_STANDARD_DPI:F = 72.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic pdfPageSizeToSizeFormatPx$default(Lcom/onyx/android/sdk/neopdf/PdfUtils;FFILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x437db0a4    # 253.69f

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageSizeToSizeFormatPx(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic pdfPageSizeToSizeFormatPx$default(Lcom/onyx/android/sdk/neopdf/PdfUtils;Landroid/graphics/RectF;FILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x437db0a4    # 253.69f

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageSizeToSizeFormatPx(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
            ">;",
            "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getSrcFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getSrcFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getSrcPageIndex()I

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getExportPageIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/neopdf/PdfBundle;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;->getInstance()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->openPdf(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p1
.end method

.method public final collectPendingPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/LinkedHashMap;Ljava/lang/String;II)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string p0, "exportPdfNative"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pendingPdfPageLinkMap"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "srcFilePath"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;-><init>()V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->setSrcFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->setSrcPageIndex(I)V

    invoke-virtual {p0, p6}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->setExportPageIndex(I)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, p6, p3, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageLinks(ILjava/util/List;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    move-object p3, p1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    :try_start_0
    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p3, p5, p2, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageLinks(ILjava/util/List;Z)Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p6, p4, 0x1

    if-gez p4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast p5, Lcom/onyx/android/sdk/neopdf/PdfLink;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getLinkDestList()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p5}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getLinkDest(Lcom/onyx/android/sdk/neopdf/PdfLink;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p4, p6

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :cond_4
    return-void

    :catchall_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final flushPendingPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/LinkedHashMap;)V
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exportPdfNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingPdfPageLinkMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-keys>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6, v5, v4}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageLinks(ILjava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->getLinkDestList()Ljava/util/List;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v9, Lcom/onyx/android/sdk/neopdf/PdfLink;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    move v11, v7

    goto :goto_3

    :cond_7
    :goto_2
    move v11, v4

    :goto_3
    if-eqz v11, :cond_8

    move v11, v7

    goto :goto_5

    :cond_8
    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_9

    move v11, v4

    goto :goto_4

    :cond_9
    move v11, v7

    :goto_4
    if-eqz v11, :cond_a

    move v11, v4

    goto :goto_5

    :cond_a
    const/4 v11, 0x2

    :goto_5
    if-ne v11, v4, :cond_b

    sget-object v12, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, p2, v3, v8}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->a(Ljava/util/LinkedHashMap;Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;I)Ljava/lang/String;

    move-result-object v8

    :cond_b
    if-nez v8, :cond_c

    const-string v8, ""

    :cond_c
    invoke-virtual {p1, v9, v11, v8}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->updateLinkDesk(Lcom/onyx/android/sdk/neopdf/PdfLink;ILjava/lang/String;)Z

    move v8, v10

    goto :goto_1

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushPendingPdfLinks:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->saveWithTagInfo(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Z

    :cond_e
    return-void
.end method

.method public final globalBKPdfPageCount(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureGlobalPdfBKNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final loadPageSize(Lcom/onyx/android/sdk/neopdf/NeoPdf;I)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pdfNative"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageSize(I[F)Z

    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v0, 0x1

    aget p0, p0, v0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public final loadPageUniqueIdMap(Lcom/onyx/android/sdk/neopdf/NeoPdf;)Ljava/util/Map;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pdfNative"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageId(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final newPdfPageCount(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    return p1
.end method

.method public final openNewPdf(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->openPdf(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final openPdf(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final pdfCMToPx(Ljava/lang/Number;)I
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/16 v0, 0xa

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfMMToPx(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public final pdfMMToPx(Ljava/lang/Number;)I
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "mm"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final pdfMMToPxScale()F
    .locals 0

    const p0, 0x3e912244

    return p0
.end method

.method public final pdfPageBitmap(Lcom/onyx/android/sdk/neopdf/NeoPdf;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pdfNative"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p5, "createBitmap(...)"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, -0x1

    .line 8
    invoke-virtual {p0, p5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/4 p5, 0x1

    .line 9
    invoke-virtual {p1, p5}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setRenderOnyxAnnotations(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move v4, p3

    move v5, p4

    move-object v7, p0

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->renderPage(IIIIIILandroid/graphics/Bitmap;)Z

    return-object p0
.end method

.method public final pdfPageBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "config"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->openPdf(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v2

    const/4 p1, 0x0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageBitmap(Lcom/onyx/android/sdk/neopdf/NeoPdf;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 4
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object p1

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    throw p1
.end method

.method public final pdfPageSizeToSizeFormatPx(FF)I
    .locals 0

    mul-float/2addr p1, p2

    const/high16 p0, 0x42900000    # 72.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final pdfPageSizeToSizeFormatPx(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageSizeToSizeFormatPx(FF)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageSizeToSizeFormatPx(FF)I

    move-result p0

    const/4 p1, 0x0

    .line 5
    invoke-direct {v0, p1, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final pdfPxToMM(I)I
    .locals 0

    int-to-float p0, p1

    const p1, 0x41cb3333    # 25.4f

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final renderGlobalBKPdfPageBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "config"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->b()Lcom/onyx/android/sdk/neopdf/PdfBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->ensureGlobalPdfBKNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->openPdf(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v2

    const/4 p1, 0x0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageBitmap(Lcom/onyx/android/sdk/neopdf/NeoPdf;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public final saveWithTagInfo(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/CommitIdUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;->generateCommitId()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, "galaxy"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onyxtag"

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setOnyxTagMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->saveAs$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;ILjava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final updateExportPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;[I)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exportPdfNative"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcFilePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v8, p4

    const/4 v1, 0x0

    move v7, v1

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_0

    aget v6, p4, v9

    add-int/lit8 v10, v7, 0x1

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->collectPendingPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/LinkedHashMap;Ljava/lang/String;II)V

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->flushPendingPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/LinkedHashMap;)V

    return-void
.end method
