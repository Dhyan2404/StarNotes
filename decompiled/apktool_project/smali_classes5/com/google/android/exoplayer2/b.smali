.class public final Lcom/google/android/exoplayer2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:J = 0xe8d4a51000L

.field public static final o:I = 0x64


# instance fields
.field public final a:Lcom/google/android/exoplayer2/Timeline$Period;

.field public final b:Lcom/google/android/exoplayer2/Timeline$Window;

.field public final c:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lcom/sunia/HTREnginev2/jlj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/sunia/HTREnginev2/jlj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lcom/sunia/HTREnginev2/jlj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:I

.field public l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iput-object p2, p0, Lcom/google/android/exoplayer2/b;->d:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method public static B(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 7

    invoke-virtual {p0, p1, p7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, p7, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    :goto_0
    iget-wide v3, p7, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const/4 v1, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result p1

    invoke-virtual {p7, p1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p7, v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result p1

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, v0, 0x1

    iget v3, p6, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p7, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, p7, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p0

    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p1, v2, p4, p5, p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    :cond_1
    invoke-virtual {p7, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    new-instance p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/b;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/b;->w(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private synthetic w(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/b;->D(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/b;->B(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public C(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 10

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/b;->D(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v3, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    or-int/2addr v2, v6

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v7, v3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object v1, p2

    iget-object v6, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/b;->B(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final D(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->l:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/b;->m:J

    return-wide p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    return-wide p0

    :cond_1
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v3, v0, :cond_3

    iget-object p0, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    return-wide p0

    :cond_3
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/b;->e:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    if-nez p1, :cond_5

    iput-object p2, p0, Lcom/google/android/exoplayer2/b;->l:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/android/exoplayer2/b;->m:J

    :cond_5
    return-wide v0
.end method

.method public E()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v1, v1, Lcom/sunia/HTREnginev2/klj;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/klj;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/b;->k:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final F(Lcom/google/android/exoplayer2/Timeline;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, p0, Lcom/google/android/exoplayer2/b;->f:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/b;->g:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v2, v2, Lcom/sunia/HTREnginev2/klj;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    move-result v2

    iget-object v3, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/b;->r(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/klj;)Lcom/sunia/HTREnginev2/klj;

    move-result-object p0

    iput-object p0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public G(Lcom/google/android/exoplayer2/Timeline;JJ)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/b;->r(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/klj;)Lcom/sunia/HTREnginev2/klj;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/b;->i(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/jlj;J)Lcom/sunia/HTREnginev2/klj;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/b;->e(Lcom/sunia/HTREnginev2/klj;Lcom/sunia/HTREnginev2/klj;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    move-object v1, v4

    :goto_1
    iget-wide v4, v3, Lcom/sunia/HTREnginev2/klj;->c:J

    invoke-virtual {v1, v4, v5}, Lcom/sunia/HTREnginev2/klj;->a(J)Lcom/sunia/HTREnginev2/klj;

    move-result-object v4

    iput-object v4, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v3, v3, Lcom/sunia/HTREnginev2/klj;->e:J

    iget-wide v5, v1, Lcom/sunia/HTREnginev2/klj;->e:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/b;->d(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->A()V

    iget-wide p1, v1, Lcom/sunia/HTREnginev2/klj;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->z(J)J

    move-result-wide p1

    :goto_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_5

    iget-object p3, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean p3, p3, Lcom/sunia/HTREnginev2/klj;->f:Z

    if-nez p3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_4

    cmp-long p1, p4, p1

    if-ltz p1, :cond_5

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    return v2

    :cond_7
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public H(Lcom/google/android/exoplayer2/Timeline;I)Z
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/b;->f:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->F(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result p0

    return p0
.end method

.method public I(Lcom/google/android/exoplayer2/Timeline;Z)Z
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/b;->g:Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->F(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result p0

    return p0
.end method

.method public b()Lcom/sunia/HTREnginev2/jlj;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->t()V

    iget v0, p0, Lcom/google/android/exoplayer2/b;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/b;->k:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b;->l:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/b;->m:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->x()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public c()Lcom/sunia/HTREnginev2/jlj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->x()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public final d(JJ)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    cmp-long p0, p1, p3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e(Lcom/sunia/HTREnginev2/klj;Lcom/sunia/HTREnginev2/klj;)Z
    .locals 4

    iget-wide v0, p1, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v2, p2, Lcom/sunia/HTREnginev2/klj;->b:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/b;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/jlj;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b;->l:Ljava/lang/Object;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b;->m:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->t()V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/b;->k:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->x()V

    return-void
.end method

.method public g([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/sunia/HTREnginev2/klj;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/sunia/HTREnginev2/jlj;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-nez v1, :cond_0

    const-wide v1, 0xe8d4a51000L

    move-object/from16 v10, p5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v3, v3, Lcom/sunia/HTREnginev2/klj;->e:J

    add-long/2addr v1, v3

    move-object/from16 v10, p5

    iget-wide v3, v10, Lcom/sunia/HTREnginev2/klj;->b:J

    sub-long/2addr v1, v3

    :goto_0
    move-wide v5, v1

    new-instance v1, Lcom/sunia/HTREnginev2/jlj;

    move-object v3, v1

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/sunia/HTREnginev2/jlj;-><init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/sunia/HTREnginev2/klj;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/jlj;->w(Lcom/sunia/HTREnginev2/jlj;)V

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    iput-object v1, v0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    :goto_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/b;->l:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    iget v2, v0, Lcom/google/android/exoplayer2/b;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/b;->k:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->x()V

    return-object v1
.end method

.method public final h(Lcom/sunia/HTREnginev2/o4l;)Lcom/sunia/HTREnginev2/klj;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v1, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lcom/sunia/HTREnginev2/o4l;->c:J

    iget-wide v5, p1, Lcom/sunia/HTREnginev2/o4l;->s:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/b;->k(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/jlj;J)Lcom/sunia/HTREnginev2/klj;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    invoke-virtual/range {p2 .. p2}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v1

    iget-wide v3, v11, Lcom/sunia/HTREnginev2/klj;->e:J

    add-long/2addr v1, v3

    sub-long v7, v1, p3

    iget-boolean v1, v11, Lcom/sunia/HTREnginev2/klj;->g:Z

    const/4 v13, -0x1

    const/4 v14, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v11, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, v0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v1, v0, Lcom/google/android/exoplayer2/b;->f:I

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/b;->g:Z

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v1

    if-ne v1, v13, :cond_0

    return-object v17

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v1, v2, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v11, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v9, v4, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v3, v1, :cond_3

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v17

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/sunia/HTREnginev2/jlj;->b:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Lcom/google/android/exoplayer2/b;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, v0, Lcom/google/android/exoplayer2/b;->e:J

    :goto_0
    move-wide v12, v5

    move-wide/from16 v17, v15

    move-wide v5, v3

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0x0

    move-wide/from16 v17, v12

    :goto_1
    iget-object v7, v0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/b;->B(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    cmp-long v1, v17, v15

    if-eqz v1, :cond_6

    iget-wide v3, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    cmp-long v1, v3, v15

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v14, :cond_5

    iget-wide v3, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    move-wide v5, v12

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_6

    iget-wide v3, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    move-wide v5, v3

    goto :goto_3

    :cond_6
    move-wide v5, v12

    :goto_3
    move-wide/from16 v3, v17

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/b;->k(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0

    :cond_7
    move v1, v13

    const-wide/16 v12, 0x0

    iget-object v10, v11, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v3, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v2

    if-ne v2, v1, :cond_8

    return-object v17

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v4

    if-ge v4, v2, :cond_9

    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    iget-wide v7, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/b;->l(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0

    :cond_9
    iget-wide v1, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    cmp-long v3, v1, v15

    if-nez v3, :cond_b

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v3, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v17

    :cond_a
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_b
    iget-object v3, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v9, v3, v4}, Lcom/google/android/exoplayer2/b;->n(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v6, v11, Lcom/sunia/HTREnginev2/klj;->c:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/b;->m(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    move v12, v14

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v1

    if-eq v4, v1, :cond_f

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v11, Lcom/sunia/HTREnginev2/klj;->e:J

    iget-wide v7, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/b;->l(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_6
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/android/exoplayer2/b;->n(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/sunia/HTREnginev2/klj;->e:J

    iget-wide v7, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/b;->m(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/sunia/HTREnginev2/jlj;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public final k(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/sunia/HTREnginev2/klj;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v2, p0

    iget-object v3, v2, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v4, p1

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/b;->l(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/b;->m(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/sunia/HTREnginev2/klj;
    .locals 17

    move-object/from16 v0, p0

    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v2, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long v0, v8, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    new-instance v14, Lcom/sunia/HTREnginev2/klj;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object v1, v7

    move-wide/from16 v4, p5

    move-wide v6, v11

    move v11, v13

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sunia/HTREnginev2/klj;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v14
.end method

.method public final m(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/sunia/HTREnginev2/klj;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    iget-object v9, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v12, v11, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_1

    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    move v5, v8

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/b;->s(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/b;->u(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v22

    invoke-virtual {v0, v1, v11, v2}, Lcom/google/android/exoplayer2/b;->t(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v23

    if-eq v5, v8, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v20, v6

    goto :goto_1

    :cond_2
    move/from16 v20, v7

    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v8

    :goto_2
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_2

    :cond_4
    move-wide/from16 v16, v6

    :goto_3
    cmp-long v1, v16, v6

    if-eqz v1, :cond_6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v16, v8

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v16

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    move-wide/from16 v18, v0

    :goto_5
    cmp-long v0, v18, v6

    if-eqz v0, :cond_7

    cmp-long v0, v3, v18

    if-ltz v0, :cond_7

    const-wide/16 v0, 0x1

    sub-long v0, v18, v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v12, v0

    goto :goto_6

    :cond_7
    move-wide v12, v3

    :goto_6
    new-instance v0, Lcom/sunia/HTREnginev2/klj;

    move-object v10, v0

    move-wide/from16 v14, p5

    move/from16 v21, v2

    invoke-direct/range {v10 .. v23}, Lcom/sunia/HTREnginev2/klj;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v0
.end method

.method public final n(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p1, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public o(JLcom/sunia/HTREnginev2/o4l;)Lcom/sunia/HTREnginev2/klj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/b;->h(Lcom/sunia/HTREnginev2/o4l;)Lcom/sunia/HTREnginev2/klj;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/google/android/exoplayer2/b;->i(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/jlj;J)Lcom/sunia/HTREnginev2/klj;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public p()Lcom/sunia/HTREnginev2/jlj;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public q()Lcom/sunia/HTREnginev2/jlj;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    return-object p0
.end method

.method public r(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/klj;)Lcom/sunia/HTREnginev2/klj;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/b;->s(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v11

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/b;->u(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v12

    invoke-virtual {v0, v1, v3, v11}, Lcom/google/android/exoplayer2/b;->t(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v13

    iget-object v4, v2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v6, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    :goto_5
    move v14, v0

    goto :goto_6

    :cond_5
    iget v1, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v4, :cond_6

    iget-object v0, v0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    new-instance v15, Lcom/sunia/HTREnginev2/klj;

    iget-wide v4, v2, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v1, v2, Lcom/sunia/HTREnginev2/klj;->c:J

    move-object v0, v15

    move-wide/from16 v16, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide/from16 v4, v16

    move-wide v6, v7

    move-wide v8, v9

    move v10, v14

    invoke-direct/range {v0 .. v13}, Lcom/sunia/HTREnginev2/klj;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v15
.end method

.method public final s(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 6

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, p0, Lcom/google/android/exoplayer2/b;->f:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/b;->g:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/b;->s(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->a:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne p0, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public v(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x()V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->d:Landroid/os/Handler;

    new-instance v3, Lcom/sunia/HTREnginev2/llj;

    invoke-direct {v3, p0, v0, v1}, Lcom/sunia/HTREnginev2/llj;-><init>(Lcom/google/android/exoplayer2/b;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->s(J)V

    :cond_0
    return-void
.end method

.method public z(Lcom/sunia/HTREnginev2/jlj;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    :goto_1
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->h:Lcom/sunia/HTREnginev2/jlj;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b;->i:Lcom/sunia/HTREnginev2/jlj;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->t()V

    iget v2, p0, Lcom/google/android/exoplayer2/b;->k:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/b;->k:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/b;->j:Lcom/sunia/HTREnginev2/jlj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/jlj;->w(Lcom/sunia/HTREnginev2/jlj;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->x()V

    return v1
.end method
