.class public final Lcom/sunia/HTREnginev2/hze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/mkf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/hze$b;
    }
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x4

.field public static final l:I = 0x8

.field public static final m:I = 0x8

.field public static final n:I = 0x4

.field public static final o:I = 0x8


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sunia/HTREnginev2/hze$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/sunia/HTREnginev2/m0o;

.field public d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hze;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/sunia/HTREnginev2/m0o;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/m0o;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hze;->c:Lcom/sunia/HTREnginev2/m0o;

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    aget-byte p0, v0, p0

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "processor"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/sunia/HTREnginev2/m0o;->c(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    invoke-static {v2, v0, v1}, Lcom/sunia/HTREnginev2/m0o;->a([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    int-to-long p0, v1

    return-wide p0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/hze;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide p0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/hze;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/hze$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v0}, Lcom/sunia/HTREnginev2/hze$b;->a(Lcom/sunia/HTREnginev2/hze$b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hze;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/hze$b;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/hze$b;->b(Lcom/sunia/HTREnginev2/hze$b;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    return v1

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->c:Lcom/sunia/HTREnginev2/m0o;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/sunia/HTREnginev2/m0o;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/hze;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v3

    :cond_2
    long-to-int v0, v4

    iput v0, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    iput v1, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    :cond_3
    iget v0, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->c:Lcom/sunia/HTREnginev2/m0o;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Lcom/sunia/HTREnginev2/m0o;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    iput v4, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    :cond_4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v5, 0x0

    if-eq v0, v1, :cond_d

    const-wide/16 v6, 0x8

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    iget-wide v8, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    cmp-long v0, v8, v6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid float size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v2, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    long-to-int v4, v8

    invoke-virtual {p0, p1, v4}, Lcom/sunia/HTREnginev2/hze;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    return v1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid element type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_8
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v2, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    long-to-int v4, v4

    invoke-interface {v0, v2, v4, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    return v1

    :cond_9
    iget-wide v6, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v2, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    long-to-int v4, v6

    invoke-static {p1, v4}, Lcom/sunia/HTREnginev2/hze;->e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    return v1

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "String element size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_b
    iget-wide v8, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v2, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    long-to-int v4, v8

    invoke-virtual {p0, p1, v4}, Lcom/sunia/HTREnginev2/hze;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    return v1

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x2a

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid integer size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    add-long/2addr v8, v6

    iget-object p1, p0, Lcom/sunia/HTREnginev2/hze;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/sunia/HTREnginev2/hze$b;

    iget v2, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    invoke-direct {v0, v2, v8, v9, v5}, Lcom/sunia/HTREnginev2/hze$b;-><init>(IJLcom/sunia/HTREnginev2/hze$a;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/hze;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/sunia/HTREnginev2/hze;->f:I

    iget-wide v8, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    return v1

    :cond_e
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/hze;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v3, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/hze;->e:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hze;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hze;->c:Lcom/sunia/HTREnginev2/m0o;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m0o;->e()V

    return-void
.end method
