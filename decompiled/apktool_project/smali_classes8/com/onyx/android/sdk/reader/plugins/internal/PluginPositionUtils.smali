.class public final Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\t\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0002R\u0017\u0010\u0016\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;",
        "",
        "",
        "pageIndex",
        "",
        "getDefaultPositionByPageIndex",
        "getDefaultPositionIntByPageIndex",
        "position",
        "getDefaultPositionInt",
        "getDefaultPageIndexByPosition",
        "positionInt",
        "getDefaultPosition",
        "getDefaultPageIndexByPositionInt",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "createDefaultPageRangeByPageIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPositionByPageIndex",
        "getPosition",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getINVALID_POSITION",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "INVALID_POSITION",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDefaultPageRangeByPageIndex(I)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getDefaultPositionByPageIndex(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/reader/api/PageRange;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v0, v1, v0}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p1
.end method

.method public final getDefaultPageIndexByPosition(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDefaultPageIndexByPositionInt(I)I
    .locals 0

    return p1
.end method

.method public final getDefaultPosition(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPositionByPageIndex(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPositionInt(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDefaultPositionIntByPageIndex(I)I
    .locals 0

    return p1
.end method

.method public final getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getPosition(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPositionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method
