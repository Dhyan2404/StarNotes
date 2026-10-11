.class public final Lcom/sunia/HTREnginev2/mtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

.field public final b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:Lcom/sunia/HTREnginev2/ptl;

.field public g:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public h:Z

.field public volatile i:J

.field public volatile j:I

.field public k:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public l:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public m:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sunia/HTREnginev2/mtl;->d:I

    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/reader/DefaultRtpPayloadReaderFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/rtsp/reader/DefaultRtpPayloadReaderFactory;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/DefaultRtpPayloadReaderFactory;->createPayloadReader(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const p2, 0xffe3

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->e:Ljava/lang/Object;

    new-instance p1, Lcom/sunia/HTREnginev2/ptl;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/ptl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->f:Lcom/sunia/HTREnginev2/ptl;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/mtl;->i:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mtl;->j:I

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/mtl;->l:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/mtl;->m:J

    return-void
.end method

.method public static a(J)J
    .locals 2

    const-wide/16 v0, 0x1e

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/mtl;->h:Z

    return p0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/mtl;->k:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/mtl;->j:I

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/mtl;->i:J

    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    iget v1, p0, Lcom/sunia/HTREnginev2/mtl;->d:I

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->g:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sunia/HTREnginev2/mtl;->g:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/mtl;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const v0, 0xffe3

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/mtl;->a(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->f:Lcom/sunia/HTREnginev2/ptl;

    invoke-virtual {v0, p1, v2, v3}, Lcom/sunia/HTREnginev2/ptl;->e(Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;J)Z

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->f:Lcom/sunia/HTREnginev2/ptl;

    invoke-virtual {p1, v4, v5}, Lcom/sunia/HTREnginev2/ptl;->f(J)Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/mtl;->h:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_6

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/mtl;->i:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->timestamp:J

    iput-wide v6, p0, Lcom/sunia/HTREnginev2/mtl;->i:J

    :cond_4
    iget v0, p0, Lcom/sunia/HTREnginev2/mtl;->j:I

    if-ne v0, p2, :cond_5

    iget p2, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    iput p2, p0, Lcom/sunia/HTREnginev2/mtl;->j:I

    :cond_5
    iget-object p2, p0, Lcom/sunia/HTREnginev2/mtl;->a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/mtl;->i:J

    iget v0, p0, Lcom/sunia/HTREnginev2/mtl;->j:I

    invoke-interface {p2, v6, v7, v0}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;->onReceivingFirstPacket(JI)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/mtl;->h:Z

    :cond_6
    iget-object p2, p0, Lcom/sunia/HTREnginev2/mtl;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/mtl;->k:Z

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/mtl;->l:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_8

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/mtl;->m:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->f:Lcom/sunia/HTREnginev2/ptl;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/ptl;->g()V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/mtl;->l:J

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/mtl;->m:J

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;->seek(JJ)V

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/mtl;->k:Z

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/mtl;->l:J

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/mtl;->m:J

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->payloadData:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    iget-object v6, p0, Lcom/sunia/HTREnginev2/mtl;->a:Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/mtl;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->timestamp:J

    iget v10, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    iget-boolean v11, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->marker:Z

    invoke-interface/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;JIZ)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mtl;->f:Lcom/sunia/HTREnginev2/ptl;

    invoke-virtual {p1, v4, v5}, Lcom/sunia/HTREnginev2/ptl;->f(J)Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_8
    :goto_0
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mtl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/mtl;->l:J

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/mtl;->m:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
