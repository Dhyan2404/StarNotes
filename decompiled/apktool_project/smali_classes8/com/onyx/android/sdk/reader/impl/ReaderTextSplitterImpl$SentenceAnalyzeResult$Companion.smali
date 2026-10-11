.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J0\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J \u0010\u0011\u001a\u0004\u0018\u00010\u00102\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;",
        "",
        "",
        "word",
        "left",
        "right",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;",
        "analyze",
        "",
        "Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;",
        "analyzeResult",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;",
        "b",
        "result",
        "",
        "index",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;",
        "a",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;",
            ">;I)",
            "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;->getWord()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, p2, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;-><init>(II)V

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final analyze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "word"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "left"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "right"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "getDefault(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;->a(Ljava/util/List;I)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;->a(Ljava/util/List;I)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;

    invoke-direct {p1, p4, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;-><init>(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;)V

    return-object p1
.end method
