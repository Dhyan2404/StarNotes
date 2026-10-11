.class public final Lcom/sunia/HTREnginev2/jlj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/exoplayer2/source/SampleStream;

.field public d:Z

.field public e:Z

.field public f:Lcom/sunia/HTREnginev2/klj;

.field public g:Z

.field public final h:[Z

.field public final i:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field public final j:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public final k:Lcom/google/android/exoplayer2/MediaSourceList;

.field public l:Lcom/sunia/HTREnginev2/jlj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public o:J


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/sunia/HTREnginev2/klj;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    iput-object p4, p0, Lcom/sunia/HTREnginev2/jlj;->j:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/jlj;->k:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v0, p7, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    iput-object p7, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    sget-object p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jlj;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p8, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/source/SampleStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlj;->h:[Z

    iget-wide v3, p7, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v5, p7, Lcom/sunia/HTREnginev2/klj;->d:J

    move-object v1, p6

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcom/sunia/HTREnginev2/jlj;->e(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/upstream/Allocator;JJ)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/upstream/Allocator;JJ)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 7

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList;->i(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static u(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->B(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->B(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/klj;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->updateClipping(JJ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sunia/HTREnginev2/jlj;->b(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public b(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jlj;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {p1, v6, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/jlj;->g([Lcom/google/android/exoplayer2/source/SampleStream;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->f()V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->h()V

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v8, v0, Lcom/sunia/HTREnginev2/jlj;->h:[Z

    iget-object v9, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/jlj;->c([Lcom/google/android/exoplayer2/source/SampleStream;)V

    iput-boolean v2, v0, Lcom/sunia/HTREnginev2/jlj;->e:Z

    move v6, v2

    :goto_2
    iget-object v7, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v7, v0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    iput-boolean v5, v0, Lcom/sunia/HTREnginev2/jlj;->e:Z

    goto :goto_4

    :cond_2
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public final c([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->r()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->enable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i()J
    .locals 5

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/klj;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/klj;->e:J

    :cond_2
    return-wide v3
.end method

.method public j()Lcom/sunia/HTREnginev2/jlj;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->l:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public k()J
    .locals 2

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    return-wide v0
.end method

.method public m()J
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->n:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    return-object p0
.end method

.method public p(FLcom/google/android/exoplayer2/Timeline;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->v(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v0, p2, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v2, p2, Lcom/sunia/HTREnginev2/klj;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sunia/HTREnginev2/jlj;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    iget-object v2, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v3, v2, Lcom/sunia/HTREnginev2/klj;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    invoke-virtual {v2, p1, p2}, Lcom/sunia/HTREnginev2/klj;->b(J)Lcom/sunia/HTREnginev2/klj;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    return-void
.end method

.method public q()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->l:Lcom/sunia/HTREnginev2/jlj;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->r()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->f()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->k:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/jlj;->u(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public v(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->j:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jlj;->i:[Lcom/google/android/exoplayer2/RendererCapabilities;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->n()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, p0, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object p0

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public w(Lcom/sunia/HTREnginev2/jlj;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/jlj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlj;->l:Lcom/sunia/HTREnginev2/jlj;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->f()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlj;->l:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->h()V

    return-void
.end method

.method public x(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/jlj;->o:J

    return-void
.end method

.method public y(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public z(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
