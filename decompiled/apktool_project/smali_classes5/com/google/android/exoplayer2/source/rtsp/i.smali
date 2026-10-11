.class public final Lcom/google/android/exoplayer2/source/rtsp/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i;->a:J

    return-void
.end method


# virtual methods
.method public createAndOpenDataChannel(I)Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/h;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/i;->a:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/h;-><init>(J)V

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/h;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/h;-><init>(J)V

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/h;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/h;->getLocalPort()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move p0, v3

    :cond_0
    if-eqz p0, :cond_1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/h;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/h;->d(Lcom/google/android/exoplayer2/source/rtsp/h;)V

    return-object p1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/h;->d(Lcom/google/android/exoplayer2/source/rtsp/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw p0
.end method

.method public createFallbackDataChannelFactory()Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/g;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/g;-><init>(J)V

    return-object v0
.end method
