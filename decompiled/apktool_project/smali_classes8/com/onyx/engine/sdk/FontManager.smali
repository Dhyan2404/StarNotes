.class public Lcom/onyx/engine/sdk/FontManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/FontManager$FontList;,
        Lcom/onyx/engine/sdk/FontManager$FontPair;
    }
.end annotation


# instance fields
.field private fontDir:Ljava/lang/String;

.field private handle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "engine_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontManager;->fontDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/FontManager;->nativeParse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/engine/sdk/FontManager;->handle:J

    return-void
.end method

.method public static getLocalFonts(II)Lcom/onyx/engine/sdk/FontManager$FontList;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/onyx/engine/sdk/FontManager;->nativeGetLocalFonts(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/FontManager$FontList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontManager$FontList;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalFonts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontManager$FontPair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/onyx/engine/sdk/FontManager;->getLocalFonts(II)Lcom/onyx/engine/sdk/FontManager$FontList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Lcom/onyx/engine/sdk/DataList;->total:I

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method private native nativeGetFonts(JII)Ljava/lang/String;
.end method

.method private static native nativeGetLocalFonts(II)Ljava/lang/String;
.end method

.method private native nativeParse(Ljava/lang/String;)J
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method public getFonts(II)Lcom/onyx/engine/sdk/FontManager$FontList;
    .locals 4

    .line 8
    iget-wide v0, p0, Lcom/onyx/engine/sdk/FontManager;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 9
    new-instance p0, Lcom/onyx/engine/sdk/FontManager$FontList;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/FontManager$FontList;-><init>()V

    return-object p0

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/engine/sdk/FontManager;->nativeGetFonts(JII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/FontManager$FontList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontManager$FontList;

    move-result-object p0

    return-object p0
.end method

.method public getFonts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontManager$FontPair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/onyx/engine/sdk/FontManager;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/onyx/engine/sdk/FontManager;->getFonts(II)Lcom/onyx/engine/sdk/FontManager$FontList;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Lcom/onyx/engine/sdk/DataList;->total:I

    if-ge v3, v4, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_2
    return-object v0
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/onyx/engine/sdk/FontManager;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/FontManager;->nativeRelease(J)V

    iput-wide v2, p0, Lcom/onyx/engine/sdk/FontManager;->handle:J

    :cond_0
    return-void
.end method
