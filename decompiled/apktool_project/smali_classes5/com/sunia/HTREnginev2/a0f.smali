.class public final Lcom/sunia/HTREnginev2/a0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/bfk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/a0f$b;
    }
.end annotation


# static fields
.field public static final m:I = 0x11940

.field public static final n:I = 0x186a0

.field public static final o:I = 0x7530

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/afk;

.field public final b:J

.field public final c:J

.field public final d:Lcom/sunia/HTREnginev2/e0n;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/e0n;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0f;->d:Lcom/sunia/HTREnginev2/e0n;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/a0f;->b:J

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/a0f;->c:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    :goto_2
    new-instance p1, Lcom/sunia/HTREnginev2/afk;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/afk;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    return-void
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/a0f;)Lcom/sunia/HTREnginev2/e0n;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0f;->d:Lcom/sunia/HTREnginev2/e0n;

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/a0f;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->b:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/a0f;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->c:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/a0f;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a0f;->g()Lcom/sunia/HTREnginev2/a0f$b;

    move-result-object p0

    return-object p0
.end method

.method public b(J)V
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->h:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    iget-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->b:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->i:J

    iget-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->c:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->j:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->k:J

    iget-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a0f;->l:J

    return-void
.end method

.method public g()Lcom/sunia/HTREnginev2/a0f$b;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/a0f$b;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/a0f$b;-><init>(Lcom/sunia/HTREnginev2/a0f;Lcom/sunia/HTREnginev2/a0f$a;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final h(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/sunia/HTREnginev2/a0f;->i:J

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v2, v0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    invoke-virtual {v2, v1, v7, v8}, Lcom/sunia/HTREnginev2/afk;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/a0f;->i:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lcom/sunia/HTREnginev2/afk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/a0f;->h:J

    iget-object v2, v0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v9, v2, Lcom/sunia/HTREnginev2/afk;->c:J

    sub-long/2addr v7, v9

    iget v11, v2, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v2, v2, Lcom/sunia/HTREnginev2/afk;->i:I

    add-int/2addr v11, v2

    const-wide/16 v12, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_3

    const-wide/32 v14, 0x11940

    cmp-long v2, v7, v14

    if-gez v2, :cond_3

    return-wide v3

    :cond_3
    cmp-long v2, v7, v12

    if-gez v2, :cond_4

    iput-wide v5, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    iput-wide v9, v0, Lcom/sunia/HTREnginev2/a0f;->l:J

    goto :goto_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v11

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/sunia/HTREnginev2/a0f;->i:J

    iget-object v3, v0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v3, v3, Lcom/sunia/HTREnginev2/afk;->c:J

    iput-wide v3, v0, Lcom/sunia/HTREnginev2/a0f;->k:J

    :goto_0
    iget-wide v3, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/a0f;->i:J

    sub-long/2addr v3, v5

    const-wide/32 v9, 0x186a0

    cmp-long v3, v3, v9

    if-gez v3, :cond_5

    iput-wide v5, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    return-wide v5

    :cond_5
    int-to-long v3, v11

    const-wide/16 v5, 0x1

    if-gtz v2, :cond_6

    const-wide/16 v9, 0x2

    goto :goto_1

    :cond_6
    move-wide v9, v5

    :goto_1
    mul-long/2addr v3, v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/a0f;->j:J

    iget-wide v11, v0, Lcom/sunia/HTREnginev2/a0f;->i:J

    sub-long v9, v3, v11

    mul-long/2addr v7, v9

    iget-wide v9, v0, Lcom/sunia/HTREnginev2/a0f;->l:J

    iget-wide v13, v0, Lcom/sunia/HTREnginev2/a0f;->k:J

    sub-long/2addr v9, v13

    div-long/2addr v7, v9

    add-long v9, v1, v7

    sub-long v13, v3, v5

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/afk;->b()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/afk;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sunia/HTREnginev2/afk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget v1, v0, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v0, v0, Lcom/sunia/HTREnginev2/afk;->i:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/afk;->c:J

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget v3, v2, Lcom/sunia/HTREnginev2/afk;->b:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, p1}, Lcom/sunia/HTREnginev2/afk;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/a0f;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/sunia/HTREnginev2/afk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget v3, v2, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v2, v2, Lcom/sunia/HTREnginev2/afk;->i:I

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->skipFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/afk;->c:J

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final j(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/afk;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sunia/HTREnginev2/afk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v1, v0, Lcom/sunia/HTREnginev2/afk;->c:J

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/a0f;->h:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    :cond_0
    iget v1, v0, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v0, v0, Lcom/sunia/HTREnginev2/afk;->i:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->i:J

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f;->a:Lcom/sunia/HTREnginev2/afk;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/afk;->c:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->k:J

    goto :goto_0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_3

    if-ne v0, v2, :cond_0

    return-wide v3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a0f;->h(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    return-wide v0

    :cond_2
    iput v5, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a0f;->j(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    iput v2, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    iget-wide p0, p0, Lcom/sunia/HTREnginev2/a0f;->k:J

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sunia/HTREnginev2/a0f;->g:J

    iput v1, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->c:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a0f;->i(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/a0f;->f:J

    iput v2, p0, Lcom/sunia/HTREnginev2/a0f;->e:I

    iget-wide p0, p0, Lcom/sunia/HTREnginev2/a0f;->g:J

    return-wide p0
.end method
