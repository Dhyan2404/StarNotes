.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:I

.field public G:I

.field public H:I

.field public I:J

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:J

.field public P:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Q:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public R:J

.field public S:J

.field public T:F

.field public final a:Z

.field public final b:[J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b:[J

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->e:Ljava/util/List;

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f:Ljava/util/List;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g:Ljava/util/List;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->I:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r:J

    iget-object p2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->i:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->u:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->t:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->s:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    return-void
.end method

.method public static c(II)Z
    .locals 4

    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public static d(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method public static e(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

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

.method public static f(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public a(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 65

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b:[J

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    const-wide/16 v3, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b:[J

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->I:J

    sub-long v6, v1, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    aget-wide v9, v5, v8

    add-long/2addr v9, v6

    aput-wide v9, v5, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j(J)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h(J)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g(J)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b(J)[J

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v5

    move-object v11, v6

    goto :goto_0

    :cond_1
    move-object v9, v1

    move-object v11, v2

    :goto_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->m:Z

    const/4 v5, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v5

    :goto_2
    if-eqz v1, :cond_4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    aget-wide v6, v9, v6

    :goto_3
    move-wide/from16 v18, v6

    aget-wide v6, v9, v5

    cmp-long v3, v6, v3

    if-lez v3, :cond_5

    move/from16 v17, v5

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->e:Ljava/util/List;

    goto :goto_5

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->e:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    move-object/from16 v28, v3

    if-eqz p1, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f:Ljava/util/List;

    goto :goto_6

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_6
    move-object/from16 v29, v3

    new-instance v3, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    if-eqz p1, :cond_8

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->c:Ljava/util/List;

    goto :goto_7

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->c:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7
    move-object v10, v4

    iget-wide v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j:J

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->K:Z

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k:Z

    xor-int/lit8 v15, v4, 0x1

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l:Z

    xor-int/lit8 v20, v1, 0x1

    iget v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->n:I

    iget v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->o:I

    iget v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->p:I

    iget v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->q:I

    move/from16 v22, v6

    iget-wide v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r:J

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->i:Z

    move/from16 v25, v8

    move-object/from16 v24, v9

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->v:J

    move-wide/from16 v26, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->w:J

    move-wide/from16 v30, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->x:J

    move-wide/from16 v32, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->y:J

    move-wide/from16 v34, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->z:J

    move-wide/from16 v36, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->A:J

    move-wide/from16 v38, v8

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->s:I

    const/4 v9, -0x1

    move/from16 v40, v8

    if-ne v8, v9, :cond_9

    const/16 v42, 0x0

    goto :goto_8

    :cond_9
    const/16 v42, 0x1

    :goto_8
    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->t:J

    const-wide/16 v43, -0x1

    cmp-long v41, v8, v43

    move-wide/from16 v46, v8

    if-nez v41, :cond_a

    const/16 v45, 0x0

    goto :goto_9

    :cond_a
    const/16 v45, 0x1

    :goto_9
    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->u:J

    cmp-long v41, v8, v43

    move-wide/from16 v43, v8

    if-nez v41, :cond_b

    const/16 v48, 0x0

    goto :goto_a

    :cond_b
    const/16 v48, 0x1

    :goto_a
    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->B:J

    move-wide/from16 v49, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->C:J

    move-wide/from16 v51, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->D:J

    move-wide/from16 v53, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->E:J

    move-wide/from16 v55, v8

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->F:I

    if-lez v8, :cond_c

    const/16 v58, 0x1

    goto :goto_b

    :cond_c
    const/16 v58, 0x0

    :goto_b
    iget v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->G:I

    move/from16 v60, v9

    iget-object v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g:Ljava/util/List;

    move-object/from16 v61, v9

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h:Ljava/util/List;

    move-object/from16 v62, v0

    move v0, v7

    move-object v7, v3

    move/from16 v59, v8

    move-wide/from16 v63, v55

    const/4 v8, 0x1

    move-wide/from16 v55, v53

    move-wide/from16 v53, v51

    move-wide/from16 v51, v49

    move-wide/from16 v49, v43

    move/from16 v44, v40

    move-wide/from16 v40, v38

    move-wide/from16 v38, v36

    move-wide/from16 v36, v34

    move-wide/from16 v34, v32

    move-wide/from16 v32, v30

    move-wide/from16 v30, v26

    move/from16 v27, v25

    move-object/from16 v9, v24

    move/from16 v16, v4

    move/from16 v21, v1

    move/from16 v23, v0

    move/from16 v24, v2

    move-wide/from16 v25, v5

    move/from16 v43, v45

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-wide/from16 v48, v49

    move-wide/from16 v50, v51

    move-wide/from16 v52, v53

    move-wide/from16 v54, v55

    move-wide/from16 v56, v63

    invoke-direct/range {v7 .. v62}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public final b(J)[J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    aget-wide v5, v0, v2

    sub-long v3, p1, v3

    long-to-float v0, v3

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    mul-float/2addr v0, p0

    float-to-long v3, v0

    add-long/2addr v5, v3

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide p1, p0, v1

    aput-wide v5, p0, v2

    return-object p0
.end method

.method public final g(J)V
    .locals 7

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->Q:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->S:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->z:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->z:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->A:J

    int-to-long v5, v0

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->A:J

    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->S:J

    return-void
.end method

.method public final h(J)V
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->P:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->R:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->v:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->v:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->w:J

    int-to-long v7, v3

    mul-long/2addr v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->w:J

    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v0, v4, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->x:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->x:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->y:J

    int-to-long v5, v0

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->y:J

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->R:J

    return-void
.end method

.method public final i(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 4
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->Q:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g(J)V

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->u:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->u:J

    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->Q:Lcom/google/android/exoplayer2/Format;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final j(J)V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->O:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r:J

    :cond_1
    return-void
.end method

.method public final k(JJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eq v0, v1, :cond_2

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v0, v0, v6

    cmp-long v7, v0, p3

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    new-array v8, v3, [J

    aput-wide p1, v8, v2

    aput-wide v0, v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    cmp-long v0, p3, v4

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    new-array v0, v3, [J

    aput-wide p1, v0, v2

    aput-wide p3, v0, v6

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b(J)[J

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->P:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h(J)V

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->s:I

    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->t:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v0, v1, :cond_2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->t:J

    :cond_2
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->P:Lcom/google/android/exoplayer2/Format;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->e:Ljava/util/List;

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJZIZZLcom/google/android/exoplayer2/PlaybackException;Ljava/lang/Exception;JJLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 15
    .param p10    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/google/android/exoplayer2/video/VideoSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v9

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    iget-wide v13, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v13, v14, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k(JJ)V

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->J:Z

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v11, 0x0

    if-eq v2, v3, :cond_1

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->J:Z

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    if-eq v2, v12, :cond_2

    const/4 v13, 0x4

    if-eq v2, v13, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->L:Z

    :cond_3
    if-eqz v4, :cond_4

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->M:Z

    iget v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->F:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->F:I

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g:Ljava/util/List;

    new-instance v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v11, v1, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v2

    if-nez v2, :cond_5

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->M:Z

    :cond_5
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->K:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->L:Z

    if-nez v2, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/TracksInfo;->isTypeSelected(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    invoke-virtual {p0, v1, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_6
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/TracksInfo;->isTypeSelected(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->i(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {p0, v1, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {p0, v1, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->i(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_9
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->P:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_a

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, v8, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, v8, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_a
    if-eqz p9, :cond_b

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->N:Z

    :cond_b
    if-eqz p8, :cond_c

    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->E:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->E:J

    :cond_c
    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->D:J

    move/from16 v4, p7

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->D:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->B:J

    add-long v2, v2, p12

    iput-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->B:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->C:J

    add-long v2, v2, p14

    iput-wide v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->C:J

    if-eqz v5, :cond_d

    iget v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->G:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->G:I

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h:Ljava/util/List;

    new-instance v3, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v3, v1, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->q(Lcom/google/android/exoplayer2/Player;)I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    if-ne v4, v2, :cond_e

    iget v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_10

    :cond_e
    iget-wide v4, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    if-eqz p3, :cond_f

    iget-wide v9, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    :cond_f
    invoke-virtual {p0, v4, v5, v9, v10}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k(JJ)V

    iget-wide v4, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h(J)V

    iget-wide v4, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g(J)V

    :cond_10
    iput v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->T:F

    iget v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    if-eq v3, v2, :cond_11

    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_11
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJ)V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :cond_1
    :goto_0
    iget-wide v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k(JJ)V

    iget-wide p2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->h(J)V

    iget-wide p2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->g(J)V

    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->r(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->K:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->L:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->J:Z

    return-void
.end method

.method public final q(Lcom/google/android/exoplayer2/Player;)I
    .locals 5

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->J:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->K:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->M:Z

    if-eqz v1, :cond_1

    const/16 p0, 0xd

    return p0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->K:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->N:Z

    return p0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->L:Z

    const/16 v2, 0xe

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/16 p0, 0xb

    return p0

    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v4, :cond_8

    if-ne p0, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0xa

    goto :goto_0

    :cond_7
    const/4 p0, 0x6

    :goto_0
    return p0

    :cond_8
    :goto_1
    return v4

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_a

    return v1

    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result p0

    if-eqz p0, :cond_b

    const/16 v2, 0x9

    :cond_b
    return v2

    :cond_c
    if-ne v0, v3, :cond_d

    iget p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    if-eqz p1, :cond_d

    const/16 p0, 0xc

    return p0

    :cond_d
    iget p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    return p0
.end method

.method public final r(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 10

    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->I:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-wide v3, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->I:J

    sub-long v5, v3, v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->b:[J

    iget v7, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    aget-wide v8, v0, v7

    add-long/2addr v8, v5

    aput-wide v8, v0, v7

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v8

    if-nez v0, :cond_1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j:J

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->m:Z

    invoke-static {v7, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->c(II)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->m:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k:Z

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->e(I)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->k:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l:Z

    const/16 v3, 0xb

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->l:Z

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->n:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->n:I

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->p:I

    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->q:I

    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->O:J

    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    if-ne p1, v1, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->o:I

    :cond_6
    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->j(J)V

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->H:I

    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->I:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->a:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$a;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    invoke-direct {v0, p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
