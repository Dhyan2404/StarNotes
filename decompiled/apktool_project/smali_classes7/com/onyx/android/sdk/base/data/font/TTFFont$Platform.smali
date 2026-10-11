.class public final Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh;,
        Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R:\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;",
        "",
        "()V",
        "ID_CUSTOM",
        "",
        "ID_ISO",
        "ID_MACINTOSH",
        "ID_UNICODE",
        "ID_WINDOWS_ID",
        "fontTypeMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/onyx/android/sdk/base/data/font/FontType;",
        "Lkotlin/collections/HashMap;",
        "getFontTypeMap",
        "()Ljava/util/HashMap;",
        "setFontTypeMap",
        "(Ljava/util/HashMap;)V",
        "locale",
        "Ljava/util/Locale;",
        "mapCharset",
        "Ljava/nio/charset/Charset;",
        "platformId",
        "encodingId",
        "mapLocale",
        "languageId",
        "supportPlatform",
        "",
        "Macintosh",
        "Windows",
        "sdk-base_release"
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
.field public static final ID_CUSTOM:I = 0x4

.field public static final ID_ISO:I = 0x2

.field public static final ID_MACINTOSH:I = 0x1

.field public static final ID_UNICODE:I = 0x0

.field public static final ID_WINDOWS_ID:I = 0x3

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static fontTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fontTypeMap(Ljava/util/Locale;)Lcom/onyx/android/sdk/base/data/font/FontType;
    .locals 3
    .param p1    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "locale"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLanguage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/data/font/FontType;->ENGLISH:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/data/font/FontType;->CJK:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/font/FontType;

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/FontType;->ALL:Lcom/onyx/android/sdk/base/data/font/FontType;

    :cond_1
    return-object p0
.end method

.method public final getFontTypeMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final mapCharset(II)Ljava/nio/charset/Charset;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    const-string p1, "UTF_16"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Encoding;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Encoding;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Encoding;->mapCharset(I)Ljava/nio/charset/Charset;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Encoding;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Encoding;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Encoding;->mapCharset(I)Ljava/nio/charset/Charset;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final mapLocale(II)Ljava/util/Locale;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "getDefault(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Language;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Language;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Language;->mapLocale(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Language;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Language;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Language;->mapLocale(I)Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final setFontTypeMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public final supportPlatform(I)Z
    .locals 1

    const/4 p0, 0x3

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
