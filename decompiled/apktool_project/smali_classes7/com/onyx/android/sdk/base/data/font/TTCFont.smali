.class public final Lcom/onyx/android/sdk/base/data/font/TTCFont;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/font/TTCFont$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00080\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTCFont;",
        "",
        "()V",
        "debug",
        "",
        "fontName",
        "",
        "fontType",
        "Lcom/onyx/android/sdk/base/data/font/FontType;",
        "ttfFont",
        "Lcom/onyx/android/sdk/base/data/font/TTFFont;",
        "clear",
        "",
        "getFontNameAndFontType",
        "Lkotlin/Pair;",
        "getFontNameByTest",
        "locale",
        "Ljava/util/Locale;",
        "log",
        "msg",
        "parse",
        "file",
        "parseInner",
        "randomAccessFile",
        "Ljava/io/RandomAccessFile;",
        "setTtfFont",
        "updateFontName",
        "updateFontType",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/base/data/font/TTCFont$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FONT_NAME_DELIMITER:Ljava/lang/String; = " & "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final debug:Z

.field private fontName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fontType:Lcom/onyx/android/sdk/base/data/font/FontType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/data/font/TTCFont$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/font/TTCFont$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->Companion:Lcom/onyx/android/sdk/base/data/font/TTCFont$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontType;->ALL:Lcom/onyx/android/sdk/base/data/font/FontType;

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    return-void
.end method

.method private final clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontType;->ALL:Lcom/onyx/android/sdk/base/data/font/FontType;

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->clear()V

    :cond_0
    return-void
.end method

.method private final parseInner(Ljava/io/RandomAccessFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    if-nez v3, :cond_1

    new-instance v3, Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-direct {v3}, Lcom/onyx/android/sdk/base/data/font/TTFFont;-><init>()V

    iput-object v3, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->clear()V

    iget-object v3, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->parseInner(Ljava/io/RandomAccessFile;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->getFontNameAndFontType()Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-direct {p0, v4}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->updateFontName(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->updateFontType(Lcom/onyx/android/sdk/base/data/font/FontType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final updateFontName(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    return-void
.end method

.method private final updateFontType(Lcom/onyx/android/sdk/base/data/font/FontType;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    sget-object v1, Lcom/onyx/android/sdk/base/data/font/FontType;->CJK:Lcom/onyx/android/sdk/base/data/font/FontType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    return-void
.end method


# virtual methods
.method public final getFontNameAndFontType()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontName:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getFontNameByTest(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/font/TTFFont;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->debug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/base/data/font/TTCFont;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final parse(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/TTCFont;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->clear()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/base/data/font/TTCFont;->parseInner(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-object p0

    :catchall_2
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final setTtfFont(Lcom/onyx/android/sdk/base/data/font/TTFFont;)Lcom/onyx/android/sdk/base/data/font/TTCFont;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/font/TTFFont;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTCFont;->ttfFont:Lcom/onyx/android/sdk/base/data/font/TTFFont;

    return-object p0
.end method
