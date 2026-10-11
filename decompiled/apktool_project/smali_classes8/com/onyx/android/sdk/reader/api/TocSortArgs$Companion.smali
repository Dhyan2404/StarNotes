.class public final Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/TocSortArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;",
        "",
        "()V",
        "createTocSortArgs",
        "Lcom/onyx/android/sdk/reader/api/TocSortArgs;",
        "toc",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "positionInt",
        "",
        "pageNumber",
        "startPositionInt",
        "endPositionInt",
        "startPageNumber",
        "endPageNumber",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTocSortArgs(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)Lcom/onyx/android/sdk/reader/api/TocSortArgs;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "toc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->isPageIndexValid()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1, p3, p3}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1, p2, p2}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V

    :goto_0
    return-object p0
.end method

.method public final createTocSortArgs(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;IIII)Lcom/onyx/android/sdk/reader/api/TocSortArgs;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "toc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortByPageIndex()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1, p4, p5}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V

    :goto_0
    return-object p0
.end method
