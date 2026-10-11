.class public final Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2:47\n1855#2,2:48\n1856#2:50\n*S KotlinDebug\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n*L\n33#1:47\n34#1:48,2\n33#1:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;",
        "",
        "()V",
        "loadFromFileOrDefault",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;",
        "file",
        "Ljava/io/File;",
        "pageId",
        "",
        "pdfNative",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPdfGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2:47\n1855#2,2:48\n1856#2:50\n*S KotlinDebug\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n*L\n33#1:47\n34#1:48,2\n33#1:50\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadFromFileOrDefault(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/NeoPdf;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pdfNative"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getGeometries()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->getGeometries()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPdfNative(Lcom/onyx/android/sdk/neopdf/NeoPdf;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->setGeoLayoutDrawer(Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;)V

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
