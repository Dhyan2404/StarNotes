.class public final Lcom/sunia/HTREnginev2/vkn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/sunia/HTREnginev2/f0f;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[J

.field public k:[Z

.field public l:Z

.field public m:[Z

.field public n:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->g:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->h:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->i:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->j:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->k:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->m:[Z

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/vkn;->p:Z

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/vkn;->p:Z

    return-void
.end method

.method public c(I)J
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vkn;->j:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/vkn;->l:Z

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/vkn;->p:Z

    return-void
.end method

.method public e(II)V
    .locals 1

    iput p1, p0, Lcom/sunia/HTREnginev2/vkn;->e:I

    iput p2, p0, Lcom/sunia/HTREnginev2/vkn;->f:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->h:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->g:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->h:[I

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->i:[I

    array-length p1, p1

    if-ge p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x7d

    div-int/lit8 p2, p2, 0x64

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->i:[I

    new-array p1, p2, [J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->j:[J

    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->k:[Z

    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vkn;->m:[Z

    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/vkn;->e:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/vkn;->q:J

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/vkn;->r:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/vkn;->l:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/vkn;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vkn;->n:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void
.end method

.method public g(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/vkn;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vkn;->m:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
