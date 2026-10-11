.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "leftLocation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightLocation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->a:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->a:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->a:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;

    return-void
.end method
