.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

.field public final f:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final h:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field public j:J

.field public k:[Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->f:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->h:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 p1, 0x0

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->k:[Z

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->f(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->g(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->i(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->j(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->m(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->p()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->q(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;)Z

    move-result p0

    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->v()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->A(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->C(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->D(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->G(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->k:[Z

    array-length v0, v0

    if-nez v0, :cond_0

    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->k:[Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->H(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method
