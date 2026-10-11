.class public final Lcom/sunia/HTREnginev2/uv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:J = 0x211L

.field public static final e:Ljava/lang/String; = "C2Mp3TimestampTracker"


# instance fields
.field public a:J

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 6

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->a:J

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    const-wide/16 v4, 0x211

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long/2addr v2, p1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)J
    .locals 2

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/uv;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->a:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/uv;->c:Z

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)J
    .locals 6

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->a:J

    :cond_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/uv;->c:Z

    if-eqz v0, :cond_1

    iget-wide p0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    return-wide p0

    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/uv;->c:Z

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/uv;->a:J

    const-string p0, "C2Mp3TimestampTracker"

    const-string p1, "MPEG audio header is invalid."

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    return-wide p0

    :cond_3
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/uv;->a(J)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/uv;->b:J

    return-wide p1
.end method
