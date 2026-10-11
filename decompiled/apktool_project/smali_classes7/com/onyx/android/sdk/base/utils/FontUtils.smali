.class public final Lcom/onyx/android/sdk/base/utils/FontUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u001e\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eJ\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0002J\u0010\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0011J<\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nJF\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u001e\u0010\u001d\u001a\u00020\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u001eJ\u001e\u0010\u001f\u001a\u00020\u00032\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\u001eJ(\u0010&\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\n\u0018\u00010%2\u0006\u0010#\u001a\u00020\"2\u0008\u0010$\u001a\u0004\u0018\u00010\u0011J&\u0010\'\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\n0%2\u0006\u0010!\u001a\u00020 2\u0008\u0010$\u001a\u0004\u0018\u00010\u0011J\u000e\u0010)\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0011J\u000e\u0010*\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0011J\u0006\u0010+\u001a\u00020\u000cJ\u0014\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030,J\u0010\u0010.\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0011J\u0010\u00100\u001a\u00020\u00082\u0008\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00101\u001a\u00020\u00082\u0008\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00102\u001a\u00020\u00082\u0008\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00104\u001a\u00020\u00082\u0008\u00103\u001a\u0004\u0018\u00010\u0011J\u0010\u00105\u001a\u00020\u00082\u0008\u00103\u001a\u0004\u0018\u00010\u0011J\u0010\u00107\u001a\u00020\u00082\u0008\u00106\u001a\u0004\u0018\u00010\u0011J\u0010\u00108\u001a\u00020\u00082\u0008\u00106\u001a\u0004\u0018\u00010\u0011J\u0010\u0010:\u001a\u0002092\u0006\u0010\u0015\u001a\u00020\u0011H\u0007R\u0014\u0010;\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010=\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008=\u0010<R\u0014\u0010>\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008>\u0010<R\u0014\u0010?\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008?\u0010<R\u0014\u0010@\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010B\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008B\u0010AR\u0014\u0010C\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008C\u0010AR\u0014\u0010D\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008D\u0010<R\u0014\u0010E\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008E\u0010<R\u0014\u0010F\u001a\u00020\u00118\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008F\u0010<R\u0017\u0010J\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010<\u001a\u0004\u0008H\u0010IR\u0014\u0010L\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008K\u0010<R\u0018\u0010N\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010<R\u001a\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR \u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00030R8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010S\u00a8\u0006W"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/FontUtils;",
        "",
        "",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "fontInfoList",
        "",
        "e",
        "fontInfo",
        "",
        "i",
        "Lcom/onyx/android/sdk/base/data/font/FontType;",
        "fontType",
        "",
        "f",
        "",
        "index",
        "isCJKFontIndex",
        "",
        "getOnyxSystemDefaultFontId",
        "getOnyxSystemDefaultFontPath",
        "getCustomFontPathList",
        "path",
        "isCustomizeFontsPath",
        "fontsFolderList",
        "currentFont",
        "preferredFonts",
        "buildFontItemAdapter",
        "Ljava/io/FilenameFilter;",
        "fontFilter",
        "fontListCurrentFontHandle",
        "Ljava/io/File;",
        "loadFontInfo",
        "Lcom/onyx/android/sdk/base/data/font/TTFFont;",
        "ttfFont",
        "Lcom/onyx/android/sdk/base/data/font/TTCFont;",
        "ttcFont",
        "filePath",
        "Lkotlin/Pair;",
        "parseTtc",
        "parseTtf",
        "name",
        "getFontPath",
        "createCustomizeTtfPath",
        "clearFontInfoCache",
        "",
        "getFontInfoCache",
        "isFontFile",
        "file",
        "isTtfFile",
        "isTtcFile",
        "isOtfFIle",
        "fontPath",
        "isSystemFont",
        "isExternalStorageFont",
        "fontId",
        "isSerif",
        "isFontExist",
        "Landroid/graphics/Typeface;",
        "loadTypefaceFromFile",
        "TTF",
        "Ljava/lang/String;",
        "TTC",
        "OTF",
        "FONTS",
        "FONT_LANG_INDEX_ALL",
        "I",
        "FONT_LANG_INDEX_CJK",
        "FONT_LANG_INDEX_EN",
        "KEY_FONT_LANG",
        "KEY_FONT_FILE_NAME",
        "SYSTEM_FONTS_PATH",
        "a",
        "getCUSTOMIZE_FONTS_PATH",
        "()Ljava/lang/String;",
        "CUSTOMIZE_FONTS_PATH",
        "b",
        "ONYX_SYSTEM_DEFAULT_SYSTEM_FONT_FILE_NAME",
        "c",
        "onyxSystemDefaultSystemFontPath",
        "d",
        "Ljava/util/List;",
        "CJK_FILTERS",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "fontInfoCache",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final FONTS:Ljava/lang/String; = "fonts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FONT_LANG_INDEX_ALL:I = 0x0

.field public static final FONT_LANG_INDEX_CJK:I = 0x1

.field public static final FONT_LANG_INDEX_EN:I = 0x2

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_FONT_FILE_NAME:Ljava/lang/String; = "font_file_name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_FONT_LANG:Ljava/lang/String; = "font_lang"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OTF:Ljava/lang/String; = "otf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_FONTS_PATH:Ljava/lang/String; = "/system/fonts/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TTC:Ljava/lang/String; = "ttc"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TTF:Ljava/lang/String; = "ttf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "OnyxCustomFont-Regular"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/base/utils/FontUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/FontUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->a:Ljava/lang/String;

    const-string v0, "JP"

    const-string v1, "KR"

    const-string v2, "CJK"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->h(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->d(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isFontFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final h(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final buildFontItemAdapter(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/font/FontType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontsFolderList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v6, Lcom/sunia/HTREnginev2/jsg;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/jsg;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/FontUtils;->buildFontItemAdapter(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final buildFontItemAdapter(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/font/FontType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/FilenameFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v0, "fontsFolderList"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontType"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v6, Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-direct {v6}, Lcom/onyx/android/sdk/base/data/font/TTFFont;-><init>()V

    .line 5
    new-instance v7, Lcom/onyx/android/sdk/base/data/font/TTCFont;

    invoke-direct {v7}, Lcom/onyx/android/sdk/base/data/font/TTCFont;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p5

    .line 8
    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    array-length v10, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_0

    aget-object v13, v8, v12

    .line 10
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v7, v13}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadFontInfo(Lcom/onyx/android/sdk/base/data/font/TTFFont;Lcom/onyx/android/sdk/base/data/font/TTCFont;Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object v14

    .line 12
    :try_start_0
    invoke-static {v13}, Lonyx/org/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/FontInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_2
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontType;->ENGLISH:Lcom/onyx/android/sdk/base/data/font/FontType;

    if-ne v3, v0, :cond_4

    invoke-virtual {v14}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object v15

    if-eq v15, v0, :cond_4

    :cond_3
    :goto_2
    const/4 v11, 0x0

    goto :goto_3

    .line 16
    :cond_4
    sget-object v15, Lcom/onyx/android/sdk/base/data/font/FontType;->CJK:Lcom/onyx/android/sdk/base/data/font/FontType;

    if-ne v3, v15, :cond_5

    invoke-virtual {v14}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object v11

    if-eq v11, v15, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 17
    move-object v11, v2

    check-cast v11, Ljava/lang/Iterable;

    invoke-virtual {v14}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 18
    :cond_6
    invoke-virtual {v14}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object v11

    if-eq v11, v0, :cond_8

    :cond_7
    const/4 v11, 0x0

    .line 19
    invoke-interface {v5, v11, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 20
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 21
    :cond_9
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/FontUtils;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v0, v3}, Lcom/onyx/android/sdk/base/utils/FontUtils;->f(Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)V

    move-object/from16 v2, p2

    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->fontListCurrentFontHandle(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final clearFontInfoCache()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final createCustomizeTtfPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ttf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->i(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "<get-values>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ")V"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/FontType;->CUSTOMIZE:Lcom/onyx/android/sdk/base/data/font/FontType;

    if-eq p2, p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isCJK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;

    new-instance v0, Lcom/sunia/HTREnginev2/hsg;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/hsg;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$2;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$2;

    new-instance v0, Lcom/sunia/HTREnginev2/isg;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/isg;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final fontListCurrentFontHandle(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "fontInfoList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, p0

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, p2, p0, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final getCUSTOMIZE_FONTS_PATH()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomFontPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getFontInfoCache()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/system/fonts/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FontUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public final getOnyxSystemDefaultFontId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/FontUtils;->getOnyxSystemDefaultFontPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxSystemDefaultFontPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "/system/fonts/OnyxCustomFont-Regular.otf"

    const-string v0, "/system/fonts/OnyxCustomFont-Regular.ttf"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->c:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FontUtils;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/FontUtils;->getOnyxSystemDefaultFontId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isCJKFontIndex(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCustomizeFontsPath(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/FontUtils;->getCustomFontPathList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isExternalStorageFont(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isFontExist(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isSerif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isSystemFont(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isExternalStorageFont(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final isFontFile(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isTtfFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isTtcFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isOtfFIle(Ljava/lang/String;)Z

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

.method public final isOtfFIle(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "otf"

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isSerif(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->Companion:Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;->getDEFAULT_ID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isSystemFont(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "/system/fonts/"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isTtcFile(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ttc"

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isTtfFile(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ttf"

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final loadFontInfo(Lcom/onyx/android/sdk/base/data/font/TTFFont;Lcom/onyx/android/sdk/base/data/font/TTCFont;Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/font/TTFFont;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/font/TTCFont;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ttfFont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttcFont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FontUtils;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    if-eqz v2, :cond_0

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/base/utils/FontUtils;->parseTtc(Lcom/onyx/android/sdk/base/data/font/TTCFont;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/FontUtils;->parseTtf(Lcom/onyx/android/sdk/base/data/font/TTFFont;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/font/FontType;

    .line 10
    new-instance p2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-direct {p2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;-><init>()V

    .line 11
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setFontType(Lcom/onyx/android/sdk/base/data/font/FontType;)V

    if-eqz p0, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final loadFontInfo(Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/font/TTFFont;-><init>()V

    .line 2
    new-instance v1, Lcom/onyx/android/sdk/base/data/font/TTCFont;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/font/TTCFont;-><init>()V

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadFontInfo(Lcom/onyx/android/sdk/base/data/font/TTFFont;Lcom/onyx/android/sdk/base/data/font/TTCFont;Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object p0

    return-object p0
.end method

.method public final loadTypefaceFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/base/utils/FontUtils;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final parseTtc(Lcom/onyx/android/sdk/base/data/font/TTCFont;Ljava/lang/String;)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/font/TTCFont;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/font/TTCFont;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "ttcFont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isTtcFile(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->parse(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/TTCFont;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->getFontNameAndFontType()Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final parseTtf(Lcom/onyx/android/sdk/base/data/font/TTFFont;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/font/TTFFont;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/font/TTFFont;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ttfFont"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->parse(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->getFontNameAndFontType()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
