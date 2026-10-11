.class public final Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "",
        "f",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "path",
        "g",
        "getPassword",
        "setPassword",
        "password",
        "",
        "h",
        "I",
        "getTotalPage",
        "()I",
        "setTotalPage",
        "(I)V",
        "totalPage",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->h:I

    return-void
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalPage()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->h:I

    return p0
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public final setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;->h:I

    return-void
.end method
