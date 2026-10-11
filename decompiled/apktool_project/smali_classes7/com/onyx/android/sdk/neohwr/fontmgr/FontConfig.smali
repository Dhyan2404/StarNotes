.class public final Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;",
        "",
        "()V",
        "DEFAULT_FONT_ASSET",
        "",
        "getDEFAULT_FONT_ASSET",
        "()Ljava/lang/String;",
        "DEFAULT_FONT_NAME",
        "getDEFAULT_FONT_NAME",
        "DEFAULT_FONT_THUMBNAIL_CONTENT",
        "getDEFAULT_FONT_THUMBNAIL_CONTENT",
        "DEFAULT_FONT_THUMBNAIL_TEXTBOX",
        "getDEFAULT_FONT_THUMBNAIL_TEXTBOX",
        "DEFAULT_FONT_THUMBNAIL_TITLE",
        "getDEFAULT_FONT_THUMBNAIL_TITLE",
        "KEY_FONT_PATH",
        "fontPath",
        "options",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "ensureDefaultFontPath",
        "getFontPath",
        "setFontPath",
        "",
        "path",
        "sdk-neohwr_release"
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
.field private static final DEFAULT_FONT_ASSET:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_FONT_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_FONT_THUMBNAIL_CONTENT:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_FONT_THUMBNAIL_TEXTBOX:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_FONT_THUMBNAIL_TITLE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_FONT_PATH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile fontPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final options:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    const-string v0, ""

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->fontPath:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/neohwr/R$string;->hwr_default_font_name:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_NAME:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/neohwr/R$string;->hwr_default_font_asset:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_ASSET:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/neohwr/R$string;->hwr_default_font_thumbnail_textbox:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_TEXTBOX:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/neohwr/R$string;->hwr_default_font_thumbnail_title:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_TITLE:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/neohwr/R$string;->hwr_default_font_thumbnail_content:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_CONTENT:Ljava/lang/String;

    const-string v3, "InkBeautifyFont"

    sput-object v3, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->KEY_FONT_PATH:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->options:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ensureDefaultFontPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/AppPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/AppPaths;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/AppPaths;->appFontDir()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_ASSET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)J

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDEFAULT_FONT_ASSET()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_ASSET:Ljava/lang/String;

    return-object p0
.end method

.method public final getDEFAULT_FONT_NAME()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public final getDEFAULT_FONT_THUMBNAIL_CONTENT()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_CONTENT:Ljava/lang/String;

    return-object p0
.end method

.method public final getDEFAULT_FONT_THUMBNAIL_TEXTBOX()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_TEXTBOX:Ljava/lang/String;

    return-object p0
.end method

.method public final getDEFAULT_FONT_THUMBNAIL_TITLE()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->DEFAULT_FONT_THUMBNAIL_TITLE:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->fontPath:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->fontPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->fontPath:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->options:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->ensureDefaultFontPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setFontPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p1, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->fontPath:Ljava/lang/String;

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->options:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-void
.end method
