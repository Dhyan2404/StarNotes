.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;
.super Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final k:I

.field public final l:I

.field public final m:[I

.field public final n:[I

.field public final o:[Lcom/google/android/exoplayer2/Timeline;

.field public final p:[Ljava/lang/Object;

.field public final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$e;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->m:[I

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->n:[I

    new-array p3, p2, [Lcom/google/android/exoplayer2/Timeline;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->o:[Lcom/google/android/exoplayer2/Timeline;

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->p:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->q:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->o:[Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$e;->a:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->n:[I

    aput p2, v2, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->m:[I

    aput p3, v2, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->o:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->o:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->p:[Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$e;->b:Ljava/lang/Object;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->q:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->k:I

    iput p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->l:I

    return-void
.end method


# virtual methods
.method public getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getChildIndexByPeriodIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->m:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method public getChildIndexByWindowIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->n:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method public getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->p:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->m:[I

    aget p0, p0, p1

    return p0
.end method

.method public getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->n:[I

    aget p0, p0, p1

    return p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->l:I

    return p0
.end method

.method public getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->o:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$b;->k:I

    return p0
.end method
