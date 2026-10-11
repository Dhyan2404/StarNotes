.class public final Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;,
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;,
        Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n*L\n336#1:382,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 12\u00020\u0001:\u0003123B\u0007\u00a2\u0006\u0004\u0008/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0006J&\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J&\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0006R\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u0019\u0010\u001eR2\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u001fj\u0008\u0012\u0004\u0012\u00020\u0016` 8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010.\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;",
        "",
        "text",
        "",
        "a",
        "",
        "useTtsCommaSplitters",
        "useTtsPeriodSplitters",
        "useTtsParagraphSplitters",
        "isUseTtsParagraphSplitters",
        "resetSplitters",
        "word",
        "left",
        "right",
        "",
        "getTextLeftBoundary",
        "getTextRightBoundary",
        "ch",
        "isAlphaOrDigit",
        "getTextSentenceBreakPoint",
        "isWord",
        "",
        "isSentenceBreakSplitter",
        "selectingWord",
        "setSelectingWord",
        "resetSelectingWord",
        "Z",
        "isSelectingWord",
        "()Z",
        "(Z)V",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "splitters",
        "Ljava/util/HashSet;",
        "getSplitters",
        "()Ljava/util/HashSet;",
        "setSplitters",
        "(Ljava/util/HashSet;)V",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;",
        "b",
        "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;",
        "getAnalyzeResult",
        "()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;",
        "setAnalyzeResult",
        "(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;)V",
        "analyzeResult",
        "<init>",
        "()V",
        "Companion",
        "SentenceAlphaAndDigitMatcher",
        "SentenceAnalyzeResult",
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
        "SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n*L\n336#1:382,5\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static j:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:I


# instance fields
.field public a:Z

.field public b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public splitters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    const-string v0, " "

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->c:Ljava/lang/String;

    const-string v0, "\u3000"

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->i:Ljava/util/HashSet;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->j:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    const/4 v0, 0x3

    sput v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->k:I

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const v1, 0xff0c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const/16 v1, 0x3002

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const v2, 0xff1f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const v3, 0xff01

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const/16 v5, 0x2e

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const/16 v6, 0x3f

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    const/16 v7, 0x21

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->g:Ljava/util/HashSet;

    sget-object v8, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->f:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->f:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->j:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    sget-object v1, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->setSplitters(Ljava/util/HashSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a:Z

    return-void
.end method

.method public static final synthetic access$getCHAR_BUFF_LIMIT$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->k:I

    return v0
.end method

.method public static final synthetic access$getDEFAULT_SPLITTERS$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_CN_STR$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_STR$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->j:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    return-object v0
.end method

.method public static final synthetic access$getNUMBER_SPLITTERS$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getTTS_COMMA_SPLITTERS$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getTTS_PARAGRAPH_SPLITTERS$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->i:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getTTS_PERIOD_SPLITTERS$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$setDEFAULT_SPLITTERS$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->j:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    return-void
.end method

.method public static final synthetic access$setNUMBER_SPLITTERS$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->f:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$setTTS_COMMA_SPLITTERS$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->g:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$setTTS_PERIOD_SPLITTERS$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "[`~!@#$%^&*()+\u2212\u00d7\u00f7=|\u00a6{}\'\":;,\\[\\].<>\u3014\u3015/?\u00bf\u00a1\u00b7_\u02c7\uff01\uff20\uff03\uffe5\u2026\u2026\uff06\uff08\uff09\u2014\u2014\uff3f\uff5b\uff5d\u3010\u3011\u2018\u2019\uff1b\uff1a\u201d\u201c\u3002\uff0c\u3001\uff1f\u00ab\u00bb\u2039\u203a\u300a\u300b\u3008\u3009\uff1c\uff1e\u300e\u300f\u300c\u300d\uff3b\uff3d\uff5e\u301d\u301e\uff02\uff07\u00b4\ufe5d\ufe5e\uff5c\ufe35\ufe37\ufe39\ufe3f\ufe3d\ufe41\ufe43\ufe3b\ufe3c\ufe44\ufe42\ufe3e\ufe40\ufe3a\ufe38\ufe36\uff3c\uff0f]"

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->c:Ljava/lang/String;

    invoke-static {p1, p0, v0, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v4

    :cond_3
    return v0
.end method

.method public final getAnalyzeResult()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    return-object p0
.end method

.method public final getSplitters()Ljava/util/HashSet;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->splitters:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "splitters"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextLeftBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
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

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isAlphaOrDigit(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;

    invoke-direct {p0, v1, p2, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->match()I

    move-result p0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, p2, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->isSameSentence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;

    invoke-virtual {p1, v1, p2, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;->analyze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->getLeftBoundaryOfWord()I

    move-result p0

    return p0
.end method

.method public getTextRightBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
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

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$normalizeString(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isAlphaOrDigit(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;

    invoke-direct {p0, v1, p3, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;->match()I

    move-result p0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, p2, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->isSameSentence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;

    invoke-virtual {p1, v1, p2, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;->analyze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;->getRightBoundaryOfWord()I

    move-result p0

    return p0
.end method

.method public getTextSentenceBreakPoint(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_4

    sget-object v2, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-static {v2, p1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->access$isDigitSplitter(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->getSplitters()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v0, :cond_3

    return v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public isAlphaOrDigit(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->isAlphaOrDigitImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSelectingWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a:Z

    return p0
.end method

.method public final isSentenceBreakSplitter(C)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->getSplitters()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUseTtsParagraphSplitters()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->getSplitters()Ljava/util/HashSet;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->i:Ljava/util/HashSet;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWord(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v0
.end method

.method public final resetSelectingWord()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a:Z

    return-void
.end method

.method public final resetSplitters()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->e:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->setSplitters(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setAnalyzeResult(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->b:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;

    return-void
.end method

.method public final setSelectingWord(Z)Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a:Z

    return-object p0
.end method

.method public final setSelectingWord(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->a:Z

    return-void
.end method

.method public final setSplitters(Ljava/util/HashSet;)V
    .locals 1
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->splitters:Ljava/util/HashSet;

    return-void
.end method

.method public final useTtsCommaSplitters()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->g:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->setSplitters(Ljava/util/HashSet;)V

    return-void
.end method

.method public final useTtsParagraphSplitters()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->i:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->setSplitters(Ljava/util/HashSet;)V

    return-void
.end method

.method public final useTtsPeriodSplitters()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->h:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->setSplitters(Ljava/util/HashSet;)V

    return-void
.end method
