.class public final Lcom/onyx/android/sdk/neocaj/NeoCajNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0004J\u0016\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001aJ\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0004J\u0011\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0019\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082 J\u0011\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0011\u0010 \u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J!\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#H\u0082 J\u001f\u0010$\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u001aH\u0082 J\u001b\u0010\'\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0004H\u0082 J\u0011\u0010(\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000fH\u0082 J\u000e\u0010*\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000fJ\u000e\u0010+\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neocaj/NeoCajNative;",
        "",
        "()V",
        "NEOCAJ_FORMAT_CAJ",
        "",
        "NEOCAJ_FORMAT_HN",
        "NEOCAJ_FORMAT_KDH",
        "NEOCAJ_FORMAT_PDF",
        "NEOCAJ_FORMAT_UNKNOWN",
        "closeDocument",
        "",
        "handle",
        "",
        "convertToPDF",
        "srcPath",
        "",
        "dstPath",
        "getPageSize",
        "Landroid/util/SizeF;",
        "page",
        "getTocTree",
        "root",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "init",
        "",
        "fontFolders",
        "",
        "loadPageImage",
        "Landroid/graphics/Bitmap;",
        "nativeCloseDocument",
        "nativeConvertToPDF",
        "nativeGetFormat",
        "nativeGetPageCount",
        "nativeGetPageSize",
        "size",
        "",
        "nativeGetTocEntries",
        "entries",
        "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
        "nativeLoadPageImage",
        "nativeOpenDocument",
        "path",
        "openDocument",
        "pageCount",
        "readDocumentFormat",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NEOCAJ_FORMAT_CAJ:I = 0x1

.field public static final NEOCAJ_FORMAT_HN:I = 0x2

.field public static final NEOCAJ_FORMAT_KDH:I = 0x3

.field public static final NEOCAJ_FORMAT_PDF:I = 0x4

.field public static final NEOCAJ_FORMAT_UNKNOWN:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    const-string v1, "engine_sdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->defaultFontDirs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->init(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native nativeCloseDocument(J)V
.end method

.method private final native nativeConvertToPDF(JLjava/lang/String;)Z
.end method

.method private final native nativeGetFormat(J)I
.end method

.method private final native nativeGetPageCount(J)I
.end method

.method private final native nativeGetPageSize(JI[F)Z
.end method

.method private final native nativeGetTocEntries(JLjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
            ">;)Z"
        }
    .end annotation
.end method

.method private final native nativeLoadPageImage(JI)Landroid/graphics/Bitmap;
.end method

.method private final native nativeOpenDocument(Ljava/lang/String;)J
.end method


# virtual methods
.method public final closeDocument(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeCloseDocument(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public final convertToPDF(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->openDocument(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, v0, v1, p2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeConvertToPDF(JLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    move p0, p1

    :goto_0
    return p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    throw p1
.end method

.method public final getPageSize(JI)Landroid/util/SizeF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeGetPageSize(JI[F)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/SizeF;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/SizeF;

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-direct {p0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    :goto_0
    return-object p0
.end method

.method public final getTocTree(JLcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z
    .locals 1
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeGetTocEntries(JLjava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->buildTocTree(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final init(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "fontFolders"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->ensureInitialized(Ljava/util/List;)V

    return-void
.end method

.method public final loadPageImage(JI)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeLoadPageImage(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final openDocument(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeOpenDocument(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final pageCount(J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeGetPageCount(J)I

    move-result p0

    return p0
.end method

.method public final readDocumentFormat(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->openDocument(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->nativeGetFormat(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    move p0, p1

    :goto_0
    return p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    throw p1
.end method
