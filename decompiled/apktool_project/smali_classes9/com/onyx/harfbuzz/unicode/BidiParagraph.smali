.class public Lcom/onyx/harfbuzz/unicode/BidiParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;,
        Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;,
        Lcom/onyx/harfbuzz/unicode/BidiParagraph$b;
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

    iput-wide p1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a:J

    .line 3
    iput-wide p3, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/unicode/BidiParagraph;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a:J

    .line 6
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    return-void
.end method

.method public static synthetic a(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetOnwardRun(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public static finalizable(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)Lcom/onyx/harfbuzz/unicode/BidiParagraph;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiParagraph;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$b;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph$b;-><init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiParagraph$b;

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object of a subclass is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFinalizable(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)Z
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiParagraph;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nCreateLine(JII)J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetBaseLevel(J)B
.end method

.method private static native nGetCharCount(J)I
.end method

.method private static native nGetCharEnd(J)I
.end method

.method private static native nGetCharStart(J)I
.end method

.method private static native nGetLevelsPtr(J)J
.end method

.method private static native nGetOnwardRun(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;
.end method


# virtual methods
.method public final b(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharEnd()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Char Start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Paragraph Range: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-gt p2, p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Char End: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-le p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad Range: ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method public createLine(II)Lcom/onyx/harfbuzz/unicode/BidiLine;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b(II)V

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiLine;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a:J

    iget-wide v3, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v3, v4, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nCreateLine(JII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiLine;-><init>(JJ)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nDispose(J)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiBuffer;->release(J)V

    return-void
.end method

.method public getBaseLevel()B
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetBaseLevel(J)B

    move-result p0

    return p0
.end method

.method public getCharEnd()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetCharEnd(J)I

    move-result p0

    return p0
.end method

.method public getCharLevels()Lcom/onyx/harfbuzz/collections/ByteList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetLevelsPtr(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v3, v4}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetCharCount(J)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public getCharStart()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->nGetCharStart(J)I

    move-result p0

    return p0
.end method

.method public getLogicalRuns()Ljava/lang/Iterable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/onyx/harfbuzz/unicode/BidiRun;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;-><init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;Lcom/onyx/harfbuzz/unicode/BidiParagraph$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiParagraph{charStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getBaseLevel()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharLevels()Lcom/onyx/harfbuzz/collections/ByteList;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/internal/Description;->forByteList(Lcom/onyx/harfbuzz/collections/ByteList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logicalRuns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getLogicalRuns()Ljava/lang/Iterable;

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
