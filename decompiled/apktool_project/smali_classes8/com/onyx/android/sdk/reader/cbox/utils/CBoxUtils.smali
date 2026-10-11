.class public final Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCBoxUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,331:1\n125#2:332\n152#2,3:333\n125#2:336\n152#2,3:337\n*S KotlinDebug\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n*L\n202#1:332\n202#1:333,3\n207#1:336\n207#1:337,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u000c\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0006\u0010\u000e\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019J&\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J\u0016\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010\"\u001a\u00020%2\u0006\u0010$\u001a\u00020#J\u000e\u0010\"\u001a\u00020(2\u0006\u0010\'\u001a\u00020&J\u0012\u0010\"\u001a\u0004\u0018\u00010+2\u0008\u0010*\u001a\u0004\u0018\u00010)J\u000e\u0010\"\u001a\u00020)2\u0006\u0010,\u001a\u00020+J\u000e\u0010\"\u001a\u00020/2\u0006\u0010.\u001a\u00020-J\u000e\u0010\"\u001a\u00020-2\u0006\u00100\u001a\u00020/J\u000e\u00104\u001a\u0002032\u0006\u00102\u001a\u000201J\u000e\u00106\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0007J\u0010\u0010\"\u001a\u0002092\u0008\u00108\u001a\u0004\u0018\u000107J\u0010\u0010\"\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109J\u0016\u0010=\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00192\u0006\u0010<\u001a\u00020;J\u0012\u0010?\u001a\u0004\u0018\u00010\u00112\u0008\u0010>\u001a\u0004\u0018\u00010\u0011J\u000e\u0010B\u001a\u00020\u00112\u0006\u0010A\u001a\u00020@J\u0010\u0010E\u001a\u00020\u00112\u0008\u0010D\u001a\u0004\u0018\u00010CR\u0014\u0010H\u001a\u00020;8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010J\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010IR\u0014\u0010K\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010IR\u0014\u0010M\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008L\u0010IR\u0014\u0010N\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010IR\u0014\u0010O\u001a\u00020\u00198\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010R\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010Q\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;",
        "Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "style",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "engineStyle",
        "",
        "f",
        "b",
        "e",
        "c",
        "init",
        "Lcom/onyx/engine/sdk/DiskCacheManager;",
        "getDiskCacheManager",
        "",
        "getCBoxCacheDir",
        "Lcom/onyx/engine/sdk/GlobalConfig;",
        "getGlobalConfig",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "getDisplayMetrics",
        "",
        "width",
        "height",
        "getMSDocDisplayMetrics",
        "updateReaderTextStyle",
        "updateImgStyle",
        "Lcom/onyx/engine/sdk/WritingMode;",
        "mode",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "convert",
        "Lcom/onyx/engine/sdk/PageProgressionDirection;",
        "direction",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
        "convertType",
        "Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;",
        "Lcom/onyx/engine/sdk/FontEntry;",
        "engineFontEntry",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
        "fontEntry",
        "Lcom/onyx/engine/sdk/FontSpec;",
        "engineFontSpec",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
        "fontSpec",
        "",
        "ch",
        "",
        "isChinese",
        "textStyle",
        "enableSpanBgColor",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "position",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "length",
        "",
        "margin",
        "convertToMarginPercent",
        "filePath",
        "getPagePositionCacheDirName",
        "Lcom/onyx/engine/sdk/Chapter;",
        "chapter",
        "chapterInfo",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "pageInfo",
        "pagePositionInfo",
        "a",
        "F",
        "DEFAULT_FONT_SIZE",
        "Ljava/lang/String;",
        "TEXT_STYLE_FORMAT_MOBI",
        "CACHE_DIR",
        "d",
        "DUMMY_PATH",
        "DUMMY_CACHE_DIR",
        "DEFAULT_GET_TEXT_LANGUAGE_MAX_COUNT",
        "I",
        "Lcom/onyx/engine/sdk/DiskCacheManager;",
        "DISK_CACHE",
        "<init>",
        "()V",
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
        "SMAP\nCBoxUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,331:1\n125#2:332\n152#2,3:333\n125#2:336\n152#2,3:337\n*S KotlinDebug\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n*L\n202#1:332\n202#1:333,3\n207#1:336\n207#1:337,3\n*E\n"
    }
.end annotation


# static fields
.field public static final DEFAULT_GET_TEXT_LANGUAGE_MAX_COUNT:I = 0x3e8

.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:F = 12.0f

.field public static final b:Ljava/lang/String; = "mobi"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "cbox_cache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "dummy.html"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "dummy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lcom/onyx/engine/sdk/DiskCacheManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    new-instance v1, Lcom/onyx/engine/sdk/DiskCacheManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getCBoxCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/engine/sdk/DiskCacheManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->f:Lcom/onyx/engine/sdk/DiskCacheManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getGlobalConfig()Lcom/onyx/engine/sdk/GlobalConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/engine/sdk/GlobalInitializer;->setGlobalConfig(Lcom/onyx/engine/sdk/GlobalConfig;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onyx/engine/sdk/GlobalInitializer;->setAbsoluteParagraphSpacing(Z)V

    invoke-static {v0}, Lcom/onyx/engine/sdk/GlobalInitializer;->setAbsoluteLineSpacing(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic getDisplayMetrics$default(Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;Lcom/onyx/android/sdk/base/data/Size;ILjava/lang/Object;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getDisplayMetrics(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMSDocDisplayMetrics$default(Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;Lcom/onyx/android/sdk/base/data/Size;ILjava/lang/Object;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getMSDocDisplayMetrics(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getAlignment()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setAlignment(Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_RIGHT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setAlignment(Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_LEFT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setAlignment(Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setAlignment(Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;)V

    :goto_1
    return-void
.end method

.method public final c(Lcom/onyx/engine/sdk/ReaderTextStyle;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getExternalFonts()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setExternalFonts(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getStyleFontMapping()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getStyleFontMapping()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;)Lcom/onyx/engine/sdk/FontEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->addStyleFontMapping(Lcom/onyx/engine/sdk/FontEntry;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getTagFontMapping()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getTagFontMapping()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;)Lcom/onyx/engine/sdk/FontEntry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getTagFontMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$convertFontMapping$2$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$convertFontMapping$2$1;

    new-instance v4, Lcom/sunia/HTREnginev2/y00;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/y00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/FontEntry;->getFontPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/Chapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "chapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chapter:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getPlayOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convert(Lcom/onyx/engine/sdk/PageProgressionDirection;)Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/PageProgressionDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "direction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 7
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;->RTL:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;->LTR:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    :goto_0
    return-object p0
.end method

.method public final convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    .line 37
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final convert(Lcom/onyx/engine/sdk/FontEntry;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/FontEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->setFontPath(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->setFontFamily(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->setFontStyle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontWeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->setFontWeight(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->setFontIndex(I)V

    :goto_0
    return-object p0
.end method

.method public final convert(Lcom/onyx/engine/sdk/FontSpec;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/FontSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "engineFontSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontSpec;->getFamily()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFamily(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontSpec;->getFontWeight()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontSpec;->getFontStyle()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convert(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/WritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "mode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_LR:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :goto_0
    return-object p0
.end method

.method public final convert(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "fontEntry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p0, Lcom/onyx/engine/sdk/FontEntry;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/FontEntry;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->getFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/FontEntry;->setFontPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;

    .line 21
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/FontEntry;->setFontFamily(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;

    .line 22
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->getFontStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/FontEntry;->setFontStyle(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;

    .line 23
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->getFontWeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/FontEntry;->setFontWeight(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;

    .line 24
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;->getFontIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/FontEntry;->setFontIndex(I)Lcom/onyx/engine/sdk/FontEntry;

    .line 25
    sget-object p1, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/FontEntry;->setOrigin(Lcom/onyx/engine/sdk/FontSpec$Origin;)Lcom/onyx/engine/sdk/FontEntry;

    return-object p0
.end method

.method public final convert(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;)Lcom/onyx/engine/sdk/FontSpec;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "fontSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance p0, Lcom/onyx/engine/sdk/FontSpec;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->getFontWeight()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->getFontStyle()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/FontSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convert(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isInvalid(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PinPosition;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    const-string p1, "fromJson(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final convert(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "convertType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 10
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;->CCT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;->TRADITIONAL_TO_SIMPLIFIED:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    :goto_0
    return-object p0
.end method

.method public final convertToMarginPercent(IF)I
    .locals 0

    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p2, p0

    int-to-float p0, p1

    div-float/2addr p2, p0

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final e(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPagingMode()I

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getPAGING_MODE_TWO_COLUMN()I

    move-result p1

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;->PAGING_MODE_TWO_COLUMN:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setPagingMode(Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;->PAGING_MODE_SINGLE_COLUMN:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setPagingMode(Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;)V

    :goto_0
    return-void
.end method

.method public final enableSpanBgColor(Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "textStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mobi"

    invoke-virtual {p1, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getTextSpacingTrim()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->TRIM_START:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextSpacingTrim(Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->SPACE_FIRST:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextSpacingTrim(Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextSpacingTrim(Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->NORMAL:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {p2, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextSpacingTrim(Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;)V

    :goto_1
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;)Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;->DISABLE:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;->NORMAL:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    :goto_0
    return-object p0
.end method

.method public final getCBoxCacheDir()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "cbox_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDiskCacheManager()Lcom/onyx/engine/sdk/DiskCacheManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->f:Lcom/onyx/engine/sdk/DiskCacheManager;

    return-object p0
.end method

.method public final getDisplayMetrics(II)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setWidth(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setHeight(I)V

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensity(F)V

    .line 7
    iget p2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setScaledDensity(F)V

    .line 8
    iget p2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setxDpi(F)V

    .line 9
    iget p2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setyDpi(F)V

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensityDpi(I)V

    return-object p0
.end method

.method public final getDisplayMetrics(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getDisplayMetrics(II)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public final getGlobalConfig()Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/GlobalConfig;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/GlobalConfig;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/engine/sdk/ResourceUtils;->getResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/GlobalConfig;->setResourcePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/GlobalConfig;->setLanguage(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getCBoxCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/GlobalConfig;->setCachePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    const-string p0, "/system/fonts/NotoSerif-Regular.ttf"

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/onyx/engine/sdk/GlobalConfig;->addDefaultFont(ILjava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    const-string p0, "/system/fonts/NotoSansCJK-Regular.ttc"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/engine/sdk/GlobalConfig;->addDefaultFont(ILjava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    const-string p0, "/system/fonts/NotoSansSymbols-Regular-Subsetted.ttf"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/engine/sdk/GlobalConfig;->addDefaultFont(ILjava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    const-string p0, "/system/fonts/NotoSerifCJK-Regular.ttc"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/engine/sdk/GlobalConfig;->addDefaultFont(ILjava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;

    return-object v0
.end method

.method public final getMSDocDisplayMetrics(II)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setWidth(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setHeight(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensity(F)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setScaledDensity(F)V

    const/high16 p1, 0x42c00000    # 96.0f

    .line 7
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setxDpi(F)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setyDpi(F)V

    const/16 p1, 0x60

    .line 9
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensityDpi(I)V

    return-object p0
.end method

.method public final getMSDocDisplayMetrics(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getMSDocDisplayMetrics(II)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public final getPagePositionCacheDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    const-string p0, "dummy.html"

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dummy"

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    const-string p0, "error"

    return-object p0
.end method

.method public final init()V
    .locals 0

    return-void
.end method

.method public final isChinese(C)Z
    .locals 2

    const/16 p0, 0x3000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p0, p1, :cond_0

    const p0, 0xd800

    if-ge p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_2

    const p0, 0xf900

    if-gt p0, p1, :cond_1

    const p0, 0xfb00

    if-ge p1, p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    const p0, 0xfe30

    if-lt p1, p0, :cond_3

    :cond_2
    const p0, 0xfe4f

    if-lt p1, p0, :cond_6

    :cond_3
    const p0, 0xff01

    if-gt p0, p1, :cond_4

    const p0, 0xff20

    if-ge p1, p0, :cond_4

    move p0, v0

    goto :goto_2

    :cond_4
    move p0, v1

    :goto_2
    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_3
    return v0
.end method

.method public final pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Page["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateImgStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/engine/sdk/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "engineStyle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getImageStyle()Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->setCloseDefScale(Z)V

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getImageStyle()Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontSize()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->setScaling(F)V

    return-void
.end method

.method public final updateReaderTextStyle(IILcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 1
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/engine/sdk/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isAntiAlias()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setAntiAlias(Z)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isEnableHyphen()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setEnableHyphen(Z)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isChangeWritingMode()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setChangeWritingMode(Z)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isIncludeFontPadding()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setIncludeFontPadding(Z)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getTextColor()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextColor(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getTextColorType()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextColorType(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setBackgroundColor(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getBackgroundColorType()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setBackgroundColorType(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getForegroundColor()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setForegroundColor(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getForegroundColorType()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setForegroundColorType(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontSize()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    :goto_0
    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setFontSize(F)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getIndent()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;->getIndent()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setIndent(F)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontEmboldenLevel()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setFontEmboldenLevel(F)V

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;

    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->convertLetterSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->convertWordSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->convertLineSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->convertParagraphSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->f(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->b(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->e(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->convertPageMargin(IILcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontVariantLigaturesState()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->g(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;)Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setLigaturesState(Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;)Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {p0, p4, p3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->c(Lcom/onyx/engine/sdk/ReaderTextStyle;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method
