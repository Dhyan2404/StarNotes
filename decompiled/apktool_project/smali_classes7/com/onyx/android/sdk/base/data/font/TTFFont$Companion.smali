.class public final Lcom/onyx/android/sdk/base/data/font/TTFFont$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTFFont$Companion;",
        "",
        "()V",
        "CHARSET_BIG5",
        "",
        "CHARSET_GB18030",
        "CHARSET_GBK",
        "CHARSET_SHIFT_JIS",
        "NAME_TABLE",
        "OS_2_TABLE",
        "UNKNOWN_FONT_NAME",
        "getFontNameFontType",
        "Lcom/onyx/android/sdk/base/data/font/FontType;",
        "fontName",
        "getFontType",
        "plateFormId",
        "",
        "languageId",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFontNameFontType(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/FontType;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isAlpha(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/FontType;->ENGLISH:Lcom/onyx/android/sdk/base/data/font/FontType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/font/FontType;->CJK:Lcom/onyx/android/sdk/base/data/font/FontType;

    :goto_0
    return-object p0
.end method

.method public final getFontType(II)Lcom/onyx/android/sdk/base/data/font/FontType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->mapLocale(II)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;->fontTypeMap(Ljava/util/Locale;)Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object p0

    return-object p0
.end method
