.class public final Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0083 J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0083 J!\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0083 \u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
        "fontPath",
        "",
        "loadGlyphPathOnce",
        "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
        "font",
        "codepoint",
        "",
        "pixelSize",
        "",
        "nativeCreate",
        "",
        "nativeDestroy",
        "",
        "handle",
        "nativeLoadGlyphPath",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nativeDestroy(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->nativeDestroy(J)V

    return-void
.end method

.method public static final synthetic access$nativeLoadGlyphPath(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p0

    return-object p0
.end method

.method private final nativeCreate(Ljava/lang/String;)J
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->access$nativeCreate(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final nativeDestroy(J)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->access$nativeDestroy(J)V

    return-void
.end method

.method private final nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->access$nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;-><init>(Ljava/lang/String;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Font Format Error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadGlyphPathOnce(Ljava/lang/String;IF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->loadGlyphPath(IF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->close()V

    return-object p1
.end method
