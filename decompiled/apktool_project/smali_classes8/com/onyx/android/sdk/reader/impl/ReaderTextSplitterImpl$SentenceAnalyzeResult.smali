.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SentenceAnalyzeResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;,
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;,
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u0000 \u00172\u00020\u0001:\u0003\u0017\u0008\nB1\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010\u0014\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J$\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\tR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;",
        "",
        "",
        "word",
        "left",
        "right",
        "",
        "isSameSentence",
        "a",
        "Ljava/lang/String;",
        "b",
        "c",
        "",
        "d",
        "I",
        "getLeftBoundaryOfWord",
        "()I",
        "leftBoundaryOfWord",
        "e",
        "getRightBoundaryOfWord",
        "rightBoundaryOfWord",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->d:I

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getLeftBoundaryOfWord()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->d:I

    return p0
.end method

.method public final getRightBoundaryOfWord()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->e:I

    return p0
.end method

.method public final isSameSentence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->c:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
