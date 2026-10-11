.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n32#2,5:387\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n*L\n264#1:382,5\n265#1:387,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00082\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\tJ\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0019\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J-\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0012\u0010\u0019\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0002R\u001a\u0010\u001a\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001b\u001a\u0004\u0008\u001f\u0010\u001dR2\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u00080 j\u0008\u0012\u0004\u0012\u00020\u0008`!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R2\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\u00080 j\u0008\u0012\u0004\u0012\u00020\u0008`!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R2\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u00080 j\u0008\u0012\u0004\u0012\u00020\u0008`!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010#\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R2\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u00080 j\u0008\u0012\u0004\u0012\u00020\u0008`!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010#\u001a\u0004\u0008/\u0010%\"\u0004\u00080\u0010\'R\'\u00101\u001a\u0012\u0012\u0004\u0012\u00020\u00080 j\u0008\u0012\u0004\u0012\u00020\u0008`!8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010#\u001a\u0004\u00082\u0010%R\"\u00103\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020\r8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\u00a8\u0006?"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;",
        "",
        "",
        "ch",
        "",
        "isAlphaOrDigitImpl",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;",
        "sharedInstance",
        "",
        "",
        "charBuff",
        "isSentenceBreakSplitter",
        "text",
        "",
        "index",
        "c",
        "a",
        "(Ljava/lang/Character;)Z",
        "first",
        "second",
        "third",
        "b",
        "(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Z",
        "d",
        "string",
        "e",
        "EMPTY_STR",
        "Ljava/lang/String;",
        "getEMPTY_STR",
        "()Ljava/lang/String;",
        "EMPTY_CN_STR",
        "getEMPTY_CN_STR",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "DEFAULT_SPLITTERS",
        "Ljava/util/HashSet;",
        "getDEFAULT_SPLITTERS",
        "()Ljava/util/HashSet;",
        "setDEFAULT_SPLITTERS",
        "(Ljava/util/HashSet;)V",
        "NUMBER_SPLITTERS",
        "getNUMBER_SPLITTERS",
        "setNUMBER_SPLITTERS",
        "TTS_COMMA_SPLITTERS",
        "getTTS_COMMA_SPLITTERS",
        "setTTS_COMMA_SPLITTERS",
        "TTS_PERIOD_SPLITTERS",
        "getTTS_PERIOD_SPLITTERS",
        "setTTS_PERIOD_SPLITTERS",
        "TTS_PARAGRAPH_SPLITTERS",
        "getTTS_PARAGRAPH_SPLITTERS",
        "instance",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;",
        "getInstance",
        "()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;",
        "setInstance",
        "(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;)V",
        "CHAR_BUFF_LIMIT",
        "I",
        "getCHAR_BUFF_LIMIT",
        "()I",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n32#2,5:387\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n*L\n264#1:382,5\n265#1:387,5\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isDigitSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/Character;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->a(Ljava/lang/Character;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDigitSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->c(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPunctuationSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;C)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->d(C)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Character;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->getNUMBER_SPLITTERS()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->a(Ljava/lang/Character;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    move p1, p0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_2

    move p2, p0

    :cond_2
    return p2
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 2

    add-int/lit8 v0, p2, -0x1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyFindChar(Ljava/lang/String;I)Ljava/lang/Character;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyFindChar(Ljava/lang/String;I)Ljava/lang/Character;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyFindChar(Ljava/lang/String;I)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->b(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Z

    move-result p0

    return p0
.end method

.method public final d(C)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "[`~!@#$%^&*()+\u2212\u00d7\u00f7=|\u00a6{}\'\":;,\\[\\].<>\u3014\u3015/?\u00bf\u00a1\u00b7_\u02c7\uff01\uff20\uff03\uffe5\u2026\u2026\uff06\uff08\uff09\u2014\u2014\uff3f\uff5b\uff5d\u3010\u3011\u2018\u2019\uff1b\uff1a\u201d\u201c\u3002\uff0c\u3001\uff1f\u00ab\u00bb\u2039\u203a\u300a\u300b\u3008\u3009\uff1c\uff1e\u300e\u300f\u300c\u300d\uff3b\uff3d\uff5e\u301d\u301e\uff02\uff07\u00b4\ufe5d\ufe5e\uff5c\ufe35\ufe37\ufe39\ufe3f\ufe3d\ufe41\ufe43\ufe3b\ufe3c\ufe44\ufe42\ufe3e\ufe40\ufe3a\ufe38\ufe36\uff3c\uff0f]"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSelectingWord()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final getCHAR_BUFF_LIMIT()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getCHAR_BUFF_LIMIT$cp()I

    move-result p0

    return p0
.end method

.method public final getDEFAULT_SPLITTERS()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getDEFAULT_SPLITTERS$cp()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final getEMPTY_CN_STR()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getEMPTY_CN_STR$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEMPTY_STR()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getEMPTY_STR$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getInstance$cp()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getNUMBER_SPLITTERS()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getNUMBER_SPLITTERS$cp()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final getTTS_COMMA_SPLITTERS()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getTTS_COMMA_SPLITTERS$cp()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final getTTS_PARAGRAPH_SPLITTERS()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getTTS_PARAGRAPH_SPLITTERS$cp()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final getTTS_PERIOD_SPLITTERS()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$getTTS_PERIOD_SPLITTERS$cp()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final isAlphaOrDigitImpl(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CharKt;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    :goto_0
    return p0
.end method

.method public final isSentenceBreakSplitter(CLjava/util/List;)Z
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSentenceBreakSplitter(C)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->getCHAR_BUFF_LIMIT()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->getCHAR_BUFF_LIMIT()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSentenceBreakSplitter(C)Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSentenceBreakSplitter(C)Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSentenceBreakSplitter(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->b(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Z

    move-result p0

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    :goto_0
    return v2
.end method

.method public final setDEFAULT_SPLITTERS(Ljava/util/HashSet;)V
    .locals 0
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$setDEFAULT_SPLITTERS$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setInstance(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$setInstance$cp(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;)V

    return-void
.end method

.method public final setNUMBER_SPLITTERS(Ljava/util/HashSet;)V
    .locals 0
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$setNUMBER_SPLITTERS$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setTTS_COMMA_SPLITTERS(Ljava/util/HashSet;)V
    .locals 0
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$setTTS_COMMA_SPLITTERS$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setTTS_PERIOD_SPLITTERS(Ljava/util/HashSet;)V
    .locals 0
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->access$setTTS_PERIOD_SPLITTERS$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->getInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p0

    return-object p0
.end method
