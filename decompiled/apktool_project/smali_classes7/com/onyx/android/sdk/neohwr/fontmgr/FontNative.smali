.class public final Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
        "Ljava/io/Closeable;",
        "path",
        "",
        "handle",
        "",
        "(Ljava/lang/String;J)V",
        "getPath",
        "()Ljava/lang/String;",
        "close",
        "",
        "loadGlyphPath",
        "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
        "codepoint",
        "",
        "pixelSize",
        "",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private handle:J

.field private final path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    const-string v0, "neo_hwr_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->path:Ljava/lang/String;

    iput-wide p2, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->handle:J

    return-void
.end method

.method public static final synthetic access$nativeCreate(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$nativeDestroy(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->nativeDestroy(J)V

    return-void
.end method

.method public static final synthetic access$nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    move-result-object p0

    return-object p0
.end method

.method private static final native nativeCreate(Ljava/lang/String;)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeDestroy(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeLoadGlyphPath(JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    invoke-static {v4, v0, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->access$nativeDestroy(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;J)V

    iput-wide v2, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->handle:J

    :cond_0
    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final loadGlyphPath(IF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    iget-wide v1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->handle:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->access$nativeLoadGlyphPath(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;JIF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p0

    return-object p0
.end method
