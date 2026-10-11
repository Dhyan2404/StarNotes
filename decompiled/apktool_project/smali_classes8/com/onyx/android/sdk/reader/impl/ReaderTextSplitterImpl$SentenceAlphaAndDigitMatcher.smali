.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SentenceAlphaAndDigitMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;,
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B#\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;",
        "",
        "",
        "match",
        "",
        "a",
        "Ljava/lang/String;",
        "word",
        "b",
        "concat",
        "",
        "c",
        "Z",
        "forward",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "State",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->c:Z

    return-void
.end method


# virtual methods
.method public final match()I
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->isAlphaOrDigitImpl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->c:Z

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2
    const/4 v4, -0x1

    if-ge v4, v3, :cond_7

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_5

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CharKt;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->ALPHA:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->DIGIT:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    :goto_5
    move v1, v2

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    const/4 v0, 0x3

    if-eq v4, v0, :cond_a

    const/4 v0, 0x4

    if-eq v4, v0, :cond_9

    goto :goto_8

    :cond_9
    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$isPunctuationSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;C)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->PUNCTUATION_SPLITTER:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_a
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->DIGIT:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_b
    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CharKt;->isAlpha(C)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->ALPHA:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_c
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$isDigitSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/Character;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->DIGIT_SPLITTER:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_e
    invoke-static {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$isPunctuationSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;C)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->PUNCTUATION_SPLITTER:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_f
    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CharKt;->isAlpha(C)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->DIGIT:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_11
    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$isPunctuationSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;C)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;->PUNCTUATION_SPLITTER:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;

    goto :goto_7

    :cond_12
    :goto_8
    sub-int/2addr v1, v2

    return v1
.end method
