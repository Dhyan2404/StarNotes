.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;
.super Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final k:Lcom/google/android/exoplayer2/Timeline;

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->k:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->l:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->m:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->n:I

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    div-int/2addr p0, v0

    if-gt p2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p0, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getChildIndexByPeriodIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->l:I

    div-int/2addr p1, p0

    return p1
.end method

.method public getChildIndexByWindowIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->m:I

    div-int/2addr p1, p0

    return p1
.end method

.method public getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->l:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->m:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public getPeriodCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->l:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->n:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->k:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getWindowCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->m:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$b;->n:I

    mul-int/2addr v0, p0

    return v0
.end method
