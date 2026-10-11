.class public final Lcom/onyx/android/sdk/reader/api/PageRange$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/PageRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/PageRange$Companion;",
        "",
        "()V",
        "dummy",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "getDummy",
        "()Lcom/onyx/android/sdk/reader/api/PageRange;",
        "createFixedPageRange",
        "pageIndex",
        "",
        "createSelectionRange",
        "startPositionInt",
        "endPositionInt",
        "sdk-readercore_overseasRelease"
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
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFixedPageRange(I)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/api/PageRange;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p0
.end method

.method public final createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/api/PageRange;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p0
.end method

.method public final getDummy()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/PageRange;->access$getDummy$cp()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    return-object p0
.end method
