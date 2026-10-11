.class public Lcom/onyx/harfbuzz/unicode/BidiLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/unicode/BidiLine$c;,
        Lcom/onyx/harfbuzz/unicode/BidiLine$d;,
        Lcom/onyx/harfbuzz/unicode/BidiLine$e;,
        Lcom/onyx/harfbuzz/unicode/BidiLine$b;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiBuffer;->retain(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->a:J

    .line 3
    iput-wide p3, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiLine;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/unicode/BidiLine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiLine;->a:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->a:J

    .line 6
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    return-void
.end method

.method public static synthetic a(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->nGetRunCount(J)I

    move-result p0

    return p0
.end method

.method public static synthetic b(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiLine;->nGetVisualRun(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public static finalizable(Lcom/onyx/harfbuzz/unicode/BidiLine;)Lcom/onyx/harfbuzz/unicode/BidiLine;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiLine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiLine;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiLine$b;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/unicode/BidiLine$b;-><init>(Lcom/onyx/harfbuzz/unicode/BidiLine;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiLine$b;

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object of a subclass is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFinalizable(Lcom/onyx/harfbuzz/unicode/BidiLine;)Z
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiLine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/onyx/harfbuzz/unicode/BidiLine$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetCharEnd(J)I
.end method

.method private static native nGetCharStart(J)I
.end method

.method private static native nGetRunCount(J)I
.end method

.method private static native nGetVisualRun(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->nDispose(J)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiBuffer;->release(J)V

    return-void
.end method

.method public getCharEnd()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->nGetCharEnd(J)I

    move-result p0

    return p0
.end method

.method public getCharStart()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->nGetCharStart(J)I

    move-result p0

    return p0
.end method

.method public getMirroringPairs()Ljava/lang/Iterable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/onyx/harfbuzz/unicode/BidiPair;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiLine$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine$c;-><init>(Lcom/onyx/harfbuzz/unicode/BidiLine;Lcom/onyx/harfbuzz/unicode/BidiLine$a;)V

    return-object v0
.end method

.method public getVisualRuns()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/unicode/BidiRun;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine$e;-><init>(Lcom/onyx/harfbuzz/unicode/BidiLine;Lcom/onyx/harfbuzz/unicode/BidiLine$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiLine{charStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiLine;->getCharStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiLine;->getCharEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visualRuns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiLine;->getVisualRuns()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/internal/Description;->forIterable(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mirroringPairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiLine;->getMirroringPairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/internal/Description;->forIterable(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
