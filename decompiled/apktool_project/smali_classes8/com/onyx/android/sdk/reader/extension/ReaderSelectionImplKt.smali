.class public final Lcom/onyx/android/sdk/reader/extension/ReaderSelectionImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "create",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;",
        "sel",
        "Lcom/onyx/android/sdk/neopdf/PdfTextSelection;",
        "sdk-readercore_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final create(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;Lcom/onyx/android/sdk/neopdf/PdfTextSelection;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfTextSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    iget v0, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    iget v1, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->pageIndex:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createFixedPageRange(I)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    iget v1, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->startIndex:I

    iget v2, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->endIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    iget-object v0, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    const-string v1, "rectangles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    iget-object v0, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->text:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->leftText:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLeftText(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rightText:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRightText(Ljava/lang/String;)V

    return-object p0
.end method
