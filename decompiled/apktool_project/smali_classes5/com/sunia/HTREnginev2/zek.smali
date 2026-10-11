.class public final Lcom/sunia/HTREnginev2/zek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/afk;

.field public final b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/afk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/afk;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/zek;->d:I

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/zek;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    iget v4, v3, Lcom/sunia/HTREnginev2/afk;->g:I

    if-ge v2, v4, :cond_1

    iget-object v2, v3, Lcom/sunia/HTREnginev2/afk;->j:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sunia/HTREnginev2/zek;->d:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method

.method public b()Lcom/sunia/HTREnginev2/afk;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    return-object p0
.end method

.method public c()Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object p0
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/zek;->e:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/zek;->e:Z

    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/zek;->e:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v2, p1}, Lcom/sunia/HTREnginev2/afk;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v2, p1, v0}, Lcom/sunia/HTREnginev2/afk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    iget v3, v2, Lcom/sunia/HTREnginev2/afk;->h:I

    iget v2, v2, Lcom/sunia/HTREnginev2/afk;->b:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/zek;->a(I)I

    move-result v2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/sunia/HTREnginev2/zek;->d:I

    add-int/2addr v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->skipFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iput v2, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    goto :goto_4

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    iget v2, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/zek;->a(I)I

    move-result v2

    iget v3, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    iget v4, p0, Lcom/sunia/HTREnginev2/zek;->d:I

    add-int/2addr v3, v4

    if-lez v2, :cond_9

    iget-object v4, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->readFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    :cond_7
    iget-object v4, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/afk;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/zek;->e:Z

    :cond_9
    iget-object v2, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    iget v2, v2, Lcom/sunia/HTREnginev2/afk;->g:I

    if-ne v3, v2, :cond_a

    const/4 v3, -0x1

    :cond_a
    iput v3, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    goto/16 :goto_1

    :cond_b
    return v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zek;->a:Lcom/sunia/HTREnginev2/afk;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/afk;->b()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/zek;->c:I

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/zek;->e:Z

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zek;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    return-void
.end method
