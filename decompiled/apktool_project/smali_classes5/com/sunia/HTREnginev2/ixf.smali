.class public final Lcom/sunia/HTREnginev2/ixf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# instance fields
.field public final e:Lcom/google/android/exoplayer2/Format;

.field public final f:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

.field public g:[J

.field public h:Z

.field public i:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

.field public j:Z

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Lcom/google/android/exoplayer2/Format;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ixf;->e:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixf;->i:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    new-instance p2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ixf;->f:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/ixf;->l:J

    iget-object p2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    invoke-virtual {p0, p1, p3}, Lcom/sunia/HTREnginev2/ixf;->c(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixf;->i:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(J)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    iget-boolean v3, p0, Lcom/sunia/HTREnginev2/ixf;->h:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/ixf;->l:J

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V
    .locals 7

    iget v0, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v3, v0

    :goto_0
    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ixf;->h:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixf;->i:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    iget-wide v5, p0, Lcom/sunia/HTREnginev2/ixf;->l:J

    cmp-long p2, v5, v1

    if-eqz p2, :cond_1

    invoke-virtual {p0, v5, v6}, Lcom/sunia/HTREnginev2/ixf;->b(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v3, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p1, v3, v4, p2, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    :cond_2
    :goto_1
    return-void
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 6

    iget v0, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/sunia/HTREnginev2/ixf;->h:Z

    if-nez v5, :cond_1

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sunia/HTREnginev2/ixf;->j:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixf;->f:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixf;->i:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->events:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->encode(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    aget-wide p0, p0, v0

    iput-wide p0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    return v3

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixf;->e:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/ixf;->j:Z

    const/4 p0, -0x5

    return p0
.end method

.method public skipData(J)I
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixf;->g:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    sub-int p2, p1, p2

    iput p1, p0, Lcom/sunia/HTREnginev2/ixf;->k:I

    return p2
.end method
