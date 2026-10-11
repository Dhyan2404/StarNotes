.class public final Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0008\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u000cR\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;",
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
        "",
        "g",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "pageIndex",
        "h",
        "getPassword",
        "setPassword",
        "password",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "i",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPageInfo",
        "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "setReaderPageInfo",
        "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V",
        "readerPageInfo",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V",
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

.field public g:I

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->h:Ljava/lang/String;

    new-instance p1, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->f:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->g:I

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->g:I

    return p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-object p0
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->g:I

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->h:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public final setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->i:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method
