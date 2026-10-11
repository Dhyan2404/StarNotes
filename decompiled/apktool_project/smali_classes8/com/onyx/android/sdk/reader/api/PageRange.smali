.class public final Lcom/onyx/android/sdk/reader/api/PageRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/PageRange$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001b\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0002\u001a\u00020\u0000R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "",
        "copy",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getStartPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "setStartPosition",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "startPosition",
        "b",
        "getEndPosition",
        "setEndPosition",
        "endPosition",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/onyx/android/sdk/reader/api/PageRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/PageRange;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/PageRange;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    sget-object p2, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method

.method public static final synthetic access$getDummy$cp()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/PageRange;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-object v0
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/reader/api/PageRange;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/PageRange;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/android/sdk/reader/api/PageRange;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object v0
.end method

.method public final getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final setEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public final setStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/PageRange;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method
