.class public final Lcom/onyx/android/sdk/reader/request/PrevPageRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/PrevPageRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "readerBundle",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V",
        "currentPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getCurrentPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "setCurrentPosition",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "readerRenderArgs",
        "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "getReaderRenderArgs",
        "()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "setReaderRenderArgs",
        "(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V",
        "execute",
        "",
        "bundle",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public currentPosition:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

.field public readerRenderArgs:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getPosition()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2, v1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->setCurrentPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method

.method public final getCurrentPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->currentPosition:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "currentPosition"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->readerRenderArgs:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "readerRenderArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setCurrentPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->currentPosition:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public final setReaderRenderArgs(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/PrevPageRequest;->readerRenderArgs:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    return-void
.end method
