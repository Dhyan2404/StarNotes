.class public abstract Lcom/sunia/HTREnginev2/e0n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/e0n$c;,
        Lcom/sunia/HTREnginev2/e0n$b;
    }
.end annotation


# static fields
.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/zek;

.field public b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public d:Lcom/sunia/HTREnginev2/bfk;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lcom/sunia/HTREnginev2/e0n$b;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/zek;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zek;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    new-instance v0, Lcom/sunia/HTREnginev2/e0n$b;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e0n$b;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->j:Lcom/sunia/HTREnginev2/e0n$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e0n;->c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget p0, p0, Lcom/sunia/HTREnginev2/e0n;->i:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c(J)J
    .locals 2

    iget p0, p0, Lcom/sunia/HTREnginev2/e0n;->i:I

    int-to-long v0, p0

    mul-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e0n;->c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e0n;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/e0n;->l(Z)V

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/e0n;->g:J

    return-void
.end method

.method public abstract f(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method public final g(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/e0n;->a()V

    iget v0, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/e0n;->k(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    :cond_2
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v2, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/e0n;->j(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method

.method public final h(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/zek;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/e0n;->k:J

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/zek;->c()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    iget-object v3, p0, Lcom/sunia/HTREnginev2/e0n;->j:Lcom/sunia/HTREnginev2/e0n$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/e0n;->i(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/sunia/HTREnginev2/e0n$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public abstract i(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/sunia/HTREnginev2/e0n$b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method public final j(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/e0n;->h(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->j:Lcom/sunia/HTREnginev2/e0n$b;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v1, p0, Lcom/sunia/HTREnginev2/e0n;->i:I

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/e0n;->m:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/e0n;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/e0n;->m:Z

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->j:Lcom/sunia/HTREnginev2/e0n$b;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/e0n$b;->b:Lcom/sunia/HTREnginev2/bfk;

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunia/HTREnginev2/e0n$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/e0n$c;-><init>(Lcom/sunia/HTREnginev2/e0n$a;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/zek;->b()Lcom/sunia/HTREnginev2/afk;

    move-result-object v0

    iget v1, v0, Lcom/sunia/HTREnginev2/afk;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_0

    :cond_4
    move v10, v11

    :goto_0
    new-instance v12, Lcom/sunia/HTREnginev2/a0f;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v1, v0, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v6, v0, Lcom/sunia/HTREnginev2/afk;->i:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v8, v0, Lcom/sunia/HTREnginev2/afk;->c:J

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/sunia/HTREnginev2/a0f;-><init>(Lcom/sunia/HTREnginev2/e0n;JJJJZ)V

    iput-object v12, p0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/zek;->f()V

    return v11
.end method

.method public final k(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    invoke-interface {v2, v1}, Lcom/sunia/HTREnginev2/bfk;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    move-object/from16 v6, p2

    iput-wide v2, v6, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v7

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sunia/HTREnginev2/e0n;->e(J)V

    :cond_1
    iget-boolean v2, v0, Lcom/sunia/HTREnginev2/e0n;->l:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    invoke-interface {v2}, Lcom/sunia/HTREnginev2/bfk;->a()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/e0n;->c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iput-boolean v7, v0, Lcom/sunia/HTREnginev2/e0n;->l:Z

    :cond_2
    iget-wide v2, v0, Lcom/sunia/HTREnginev2/e0n;->k:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/zek;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/sunia/HTREnginev2/e0n;->h:I

    const/4 v0, -0x1

    return v0

    :cond_4
    :goto_0
    iput-wide v4, v0, Lcom/sunia/HTREnginev2/e0n;->k:J

    iget-object v1, v0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/zek;->c()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/e0n;->f(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/e0n;->g:J

    add-long v6, v4, v2

    iget-wide v10, v0, Lcom/sunia/HTREnginev2/e0n;->e:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    invoke-virtual {v0, v4, v5}, Lcom/sunia/HTREnginev2/e0n;->b(J)J

    move-result-wide v11

    iget-object v4, v0, Lcom/sunia/HTREnginev2/e0n;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget-object v10, v0, Lcom/sunia/HTREnginev2/e0n;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iput-wide v8, v0, Lcom/sunia/HTREnginev2/e0n;->e:J

    :cond_5
    iget-wide v4, v0, Lcom/sunia/HTREnginev2/e0n;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/sunia/HTREnginev2/e0n;->g:J

    const/4 v0, 0x0

    return v0
.end method

.method public l(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/e0n$b;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/e0n$b;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e0n;->j:Lcom/sunia/HTREnginev2/e0n$b;

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/e0n;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/e0n;->e:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/e0n;->g:J

    return-void
.end method

.method public final m(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0n;->a:Lcom/sunia/HTREnginev2/zek;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/zek;->e()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/e0n;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/e0n;->l(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/sunia/HTREnginev2/e0n;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/e0n;->e:J

    iget-object p1, p0, Lcom/sunia/HTREnginev2/e0n;->d:Lcom/sunia/HTREnginev2/bfk;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/bfk;

    iget-wide p2, p0, Lcom/sunia/HTREnginev2/e0n;->e:J

    invoke-interface {p1, p2, p3}, Lcom/sunia/HTREnginev2/bfk;->b(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/e0n;->h:I

    :cond_1
    :goto_0
    return-void
.end method
