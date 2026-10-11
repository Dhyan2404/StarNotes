.class public final Lcom/onyx/android/sdk/reader/Reader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/Reader$Companion;",
        "",
        "()V",
        "isSharedReaderScheduler",
        "",
        "path",
        "",
        "isSupport",
        "supportConverter",
        "ReaderContentDiskCache",
        "sdk-reader_overseasRelease"
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/Reader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSharedReaderScheduler(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    :goto_0
    move v0, v1

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_1

    :cond_c
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    goto :goto_0

    :goto_1
    return v0
.end method

.method public final isSupport(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final supportConverter(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_b
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_c
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    :goto_1
    return v0
.end method
