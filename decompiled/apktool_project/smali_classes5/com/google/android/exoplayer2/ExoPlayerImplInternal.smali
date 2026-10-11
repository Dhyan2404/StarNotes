.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field public static final I0:Ljava/lang/String; = "ExoPlayerImplInternal"

.field public static final J0:I = 0x0

.field public static final K0:I = 0x1

.field public static final L0:I = 0x2

.field public static final M0:I = 0x3

.field public static final N0:I = 0x4

.field public static final O0:I = 0x5

.field public static final P0:I = 0x6

.field public static final Q0:I = 0x7

.field public static final R0:I = 0x8

.field public static final S0:I = 0x9

.field public static final T0:I = 0xa

.field public static final U0:I = 0xb

.field public static final V0:I = 0xc

.field public static final W0:I = 0xd

.field public static final X0:I = 0xe

.field public static final Y0:I = 0xf

.field public static final Z0:I = 0x10

.field public static final a1:I = 0x11

.field public static final b1:I = 0x12

.field public static final c1:I = 0x13

.field public static final d1:I = 0x14

.field public static final e1:I = 0x15

.field public static final f1:I = 0x16

.field public static final g1:I = 0x17

.field public static final h1:I = 0x18

.field public static final i1:I = 0x19

.field public static final j1:I = 0xa

.field public static final k1:I = 0x3e8

.field public static final l1:J = 0x7d0L

.field public static final m1:J = 0xfa0L


# instance fields
.field public A0:I

.field public B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public C0:J

.field public D0:I

.field public E0:Z

.field public F0:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public G0:J

.field public H0:J

.field public J:Lcom/google/android/exoplayer2/SeekParameters;

.field public O:Lcom/sunia/HTREnginev2/o4l;

.field public Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field public Z:Z

.field public final e:[Lcom/google/android/exoplayer2/Renderer;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field public final h:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public final i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final j:Lcom/google/android/exoplayer2/LoadControl;

.field public final k:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field public k0:Z

.field public final l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field public final m:Landroid/os/HandlerThread;

.field public final n:Landroid/os/Looper;

.field public final o:Lcom/google/android/exoplayer2/Timeline$Window;

.field public final p:Lcom/google/android/exoplayer2/Timeline$Period;

.field public final q:J

.field public q0:Z

.field public final r:Z

.field public final s:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;",
            ">;"
        }
    .end annotation
.end field

.field public t0:Z

.field public final u:Lcom/google/android/exoplayer2/util/Clock;

.field public u0:Z

.field public final v:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public v0:I

.field public final w:Lcom/google/android/exoplayer2/b;

.field public w0:Z

.field public final x:Lcom/google/android/exoplayer2/MediaSourceList;

.field public x0:Z

.field public final y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field public y0:Z

.field public final z:J

.field public z0:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object v9, p3

    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move/from16 v11, p6

    iput v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    move/from16 v11, p7

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->J:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0:J

    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k0:Z

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q:J

    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Z

    invoke-static {p3}, Lcom/sunia/HTREnginev2/o4l;->k(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/Renderer;->init(ILcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Ljava/util/Set;

    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/exoplayer2/b;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/b;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/MediaSourceList;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method public static J(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget p3, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    move v0, p2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method

.method public static L(Lcom/google/android/exoplayer2/Renderer;)Z
    .locals 0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static N(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz p0, :cond_0

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

.method private synthetic O()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic P(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->P(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0:Z

    return p1
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method public static q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->b(IJLjava/lang/Object;)V

    return-void
.end method

.method public static r0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->getMediaItemIndex()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->b(IJLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    return v12

    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->f:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->g:J

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v5, v1, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->b(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method public static s(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static t0(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;Lcom/google/android/exoplayer2/b;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;
    .locals 30
    .param p2    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;

    invoke-static {}, Lcom/sunia/HTREnginev2/o4l;->l()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0

    :cond_0
    iget-object v14, v8, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->N(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v13

    iget-object v0, v8, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, v8, Lcom/sunia/HTREnginev2/o4l;->s:J

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v0, v8, Lcom/sunia/HTREnginev2/o4l;->c:J

    :goto_1
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    move v14, v6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    move/from16 v2, v19

    move v3, v2

    move/from16 v4, v20

    goto :goto_4

    :cond_3
    iget-wide v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->c:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-wide v0, v15

    move/from16 v2, v19

    goto :goto_2

    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v6, v14

    move/from16 v2, v20

    :goto_2
    iget v3, v8, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move/from16 v3, v20

    goto :goto_3

    :cond_5
    move/from16 v3, v19

    :goto_3
    move/from16 v4, v19

    :goto_4
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    goto :goto_6

    :cond_6
    move-object/from16 v21, v14

    move v14, v6

    iget-object v0, v8, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_5
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_6
    move-object/from16 v6, v21

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    iget-object v5, v8, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move/from16 v4, v20

    goto :goto_7

    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v4, v19

    :goto_7
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v29, v27

    goto :goto_6

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_5

    :cond_a
    if-eqz v13, :cond_c

    iget-object v0, v8, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v6, v21

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v8, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v11, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v1, v8, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v4, v15, v0

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v12, v1

    move-wide v0, v2

    goto :goto_8

    :cond_b
    move-wide v0, v15

    :goto_8
    move v3, v14

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v20

    goto :goto_9

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move v3, v14

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_9
    if-eq v3, v14, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_a

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    :goto_a
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/b;->C(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v3, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_f

    iget v4, v6, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v14, :cond_e

    if-lt v3, v4, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v3, v19

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v3, v20

    :goto_c
    iget-object v4, v6, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_d

    :cond_10
    move/from16 v20, v19

    :goto_d
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->J(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    :cond_12
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-wide v0, v8, Lcom/sunia/HTREnginev2/o4l;->s:J

    goto :goto_e

    :cond_13
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget v1, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v0

    goto :goto_e

    :cond_14
    const-wide/16 v0, 0x0

    :cond_15
    :goto_e
    move-wide/from16 v23, v0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0
.end method

.method public static u0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->b:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static v0(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final A(Ljava/io/IOException;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i1(ZZ)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    return-void
.end method

.method public final A0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final B(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v3, v1}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->i()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/sunia/HTREnginev2/o4l;->q:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sunia/HTREnginev2/o4l;->r:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->n()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l1(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_4
    return-void
.end method

.method public final B0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget p5, p5, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2, p2, p3}, Lcom/sunia/HTREnginev2/jlj;->z(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p1

    move p5, v0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->b()Lcom/sunia/HTREnginev2/jlj;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    const-wide p4, 0xe8d4a51000L

    invoke-virtual {v2, p4, p5}, Lcom/sunia/HTREnginev2/jlj;->x(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    iget-boolean p1, v2, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    invoke-virtual {p1, p2, p3}, Lcom/sunia/HTREnginev2/klj;->b(J)Lcom/sunia/HTREnginev2/klj;

    move-result-object p1

    iput-object p1, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    goto :goto_4

    :cond_8
    iget-boolean p1, v2, Lcom/sunia/HTREnginev2/jlj;->e:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    iget-object p3, v2, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    move-wide p2, p1

    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q()V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->f()V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final C(Lcom/google/android/exoplayer2/Timeline;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;Lcom/google/android/exoplayer2/b;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v9, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->c:J

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->d:Z

    iget-wide v13, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->b:J

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v1, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v1, v13, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v15

    :goto_1
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v1, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v1, v15, :cond_2

    invoke-virtual {v11, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    :cond_2
    invoke-virtual {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_3
    if-nez v16, :cond_4

    :try_start_1
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u()J

    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    move v15, v5

    move-wide/from16 v5, v21

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/b;->G(Lcom/google/android/exoplayer2/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0(Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move v15, v5

    const/16 v20, 0x4

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    goto/16 :goto_6

    :cond_4
    move/from16 v20, v4

    move v15, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/b;->r(Lcom/google/android/exoplayer2/Timeline;Lcom/sunia/HTREnginev2/klj;)Lcom/sunia/HTREnginev2/klj;

    move-result-object v2

    iput-object v2, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->A()V

    :cond_5
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v13, v0

    :cond_7
    :goto_3
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->f:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_4

    :cond_8
    move-wide/from16 v6, v18

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_9

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v0, :cond_a

    const/16 v23, 0x1

    goto :goto_5

    :cond_a
    move/from16 v23, v15

    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/o4l;->d:J

    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v17, v20

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o0()V

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v12, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, v12}, Lcom/sunia/HTREnginev2/o4l;->j(Lcom/google/android/exoplayer2/Timeline;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    iput-object v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    :cond_d
    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    return-void

    :catchall_2
    move-exception v0

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    :goto_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->f:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_f

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v1, v1, Lcom/sunia/HTREnginev2/o4l;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_12

    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_10

    const/16 v23, 0x1

    goto :goto_8

    :cond_10
    const/16 v23, 0x0

    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v5, v1, Lcom/sunia/HTREnginev2/o4l;->d:J

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    move/from16 v17, v20

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o0()V

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v12, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v1, v12}, Lcom/sunia/HTREnginev2/o4l;->j(Lcom/google/android/exoplayer2/Timeline;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    throw v0
.end method

.method public final C0(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D0(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v1, v0

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    :goto_0
    return-void
.end method

.method public final D(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b;->v(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1, v0, v1}, Lcom/sunia/HTREnginev2/jlj;->p(FLcom/google/android/exoplayer2/Timeline;)V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->n()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l1(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v7, p1, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q()V

    return-void
.end method

.method public final D0(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h(Lcom/google/android/exoplayer2/PlayerMessage;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget p1, p1, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xf

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final E(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p3, p1}, Lcom/sunia/HTREnginev2/o4l;->g(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p1(F)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length p3, p0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object v0, p0, p4

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/Renderer;->setPlaybackSpeed(FF)V

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final E0(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/m1g;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/m1g;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final F(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    return-void
.end method

.method public final F0(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;
    .locals 13
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v4, p4

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v2, v2, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o0()V

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v6, v2, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaSourceList;->t()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->n()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    :goto_2
    if-nez v2, :cond_3

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v6

    :goto_3
    iget-object v7, v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v2, :cond_4

    iget-object v8, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v9, v8, Lcom/sunia/HTREnginev2/klj;->c:J

    cmp-long v9, v9, v4

    if-eqz v9, :cond_4

    invoke-virtual {v8, v4, v5}, Lcom/sunia/HTREnginev2/klj;->a(J)Lcom/sunia/HTREnginev2/klj;

    move-result-object v8

    iput-object v8, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    :cond_4
    move-object v10, v3

    move-object v11, v6

    move-object v12, v7

    goto :goto_4

    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v7, v7, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    goto :goto_4

    :cond_6
    move-object v12, v2

    move-object v10, v3

    move-object v11, v6

    :goto_4
    if-eqz p8, :cond_7

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x()J

    move-result-wide v8

    move-object v0, v2

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Lcom/sunia/HTREnginev2/o4l;->c(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    return-object v0
.end method

.method public final G0(Lcom/google/android/exoplayer2/Renderer;J)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    instance-of p0, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    :cond_0
    return-void
.end method

.method public final H(Lcom/google/android/exoplayer2/Renderer;Lcom/sunia/HTREnginev2/jlj;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    iget-object p2, p2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean p2, p2, Lcom/sunia/HTREnginev2/klj;->f:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized H0(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1, v0, v2, v2, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    new-instance v0, Lcom/sunia/HTREnginev2/n1g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/n1g;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q1(Lcom/google/common/base/Supplier;J)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final I()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H(Lcom/google/android/exoplayer2/Renderer;Lcom/sunia/HTREnginev2/jlj;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x0:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final J0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    new-instance v1, Lcom/sunia/HTREnginev2/v4l;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sunia/HTREnginev2/v4l;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->d(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->E(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public final K()Z
    .locals 5

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->k()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public K0(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$c;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$a;)V

    const/16 p1, 0x11

    invoke-interface {p0, p1, v7}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final L0(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-nez p1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/o4l;->d(Z)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :goto_1
    return-void
.end method

.method public final M()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v1, v1, Lcom/sunia/HTREnginev2/klj;->e:J

    iget-boolean v0, v0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public M0(Z)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final N0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k0:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o0()V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    :cond_0
    return-void
.end method

.method public O0(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final P0(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlayWhenReadyChangeReason(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p3, p1, p2}, Lcom/sunia/HTREnginev2/o4l;->e(ZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c0(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n1()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget p1, p1, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jlj;->d(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k1()V

    return-void
.end method

.method public Q0(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x4

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lcom/sunia/HTREnginev2/o4l;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_0
    return-void
.end method

.method public final R0(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    return-void
.end method

.method public final S(JJ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0(JJ)V

    const/4 p0, 0x1

    return p0
.end method

.method public S0(I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final T(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D0:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->f:I

    if-gt v4, v0, :cond_3

    if-ne v4, v0, :cond_4

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->g:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->f:I

    if-lt v4, v0, :cond_6

    if-ne v4, v0, :cond_7

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->g:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->h:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->f:I

    if-ne v4, v0, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->g:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_d

    cmp-long v4, v4, p3

    if-gtz v4, :cond_d

    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D0(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_b
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    throw p1

    :cond_d
    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D0:I

    :cond_e
    :goto_5
    return-void
.end method

.method public final T0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/b;->H(Lcom/google/android/exoplayer2/Timeline;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    return-void
.end method

.method public final U()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b;->y(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/b;->o(JLcom/sunia/HTREnginev2/o4l;)Lcom/sunia/HTREnginev2/klj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/b;->g([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/sunia/HTREnginev2/klj;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    iget-object v2, v1, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->K()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q()V

    :goto_0
    return-void
.end method

.method public U0(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final V()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b1()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->R()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->b()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/jlj;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    if-ne v6, v5, :cond_1

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v1, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v5, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v10, v1, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v8, v1, Lcom/sunia/HTREnginev2/klj;->c:J

    xor-int/lit8 v12, v2, 0x1

    const/4 v13, 0x0

    move-object v4, p0

    move-wide v6, v10

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o0()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n1()V

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final V0(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->J:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method public final W()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->I()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/b;->c()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v11, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v7, v5, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v10, v7, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v12, v0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    move-object v9, v11

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    iget-boolean v0, v5, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0(J)V

    return-void

    :cond_4
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v7, -0x2

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v0

    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v8, v8, v0

    if-eqz v3, :cond_6

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v7

    invoke-virtual {p0, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v1, v1, Lcom/sunia/HTREnginev2/klj;->i:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    if-eqz v1, :cond_d

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v1

    if-ge v4, v5, :cond_d

    aget-object v1, v1, v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v4

    if-eqz v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v5, v5, Lcom/sunia/HTREnginev2/klj;->e:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v5

    iget-object v7, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v7, v7, Lcom/sunia/HTREnginev2/klj;->e:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v2

    :goto_4
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public W0(Z)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final X()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lcom/sunia/HTREnginev2/jlj;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final X0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/b;->I(Lcom/google/android/exoplayer2/Timeline;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    return-void
.end method

.method public final Y()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->j()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public Y0(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x15

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final Z(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->a:I

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->c:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->d:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->x(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public final Z0(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->F(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public a0(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;-><init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 p1, 0x13

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final a1(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1
    return-void
.end method

.method public final b0()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b1()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    iget-boolean p0, v0, Lcom/sunia/HTREnginev2/jlj;->g:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final c0(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c1()Z
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->K()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->k()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    iget v8, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JJF)Z

    move-result p0

    return p0
.end method

.method public final d0()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d1()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->r()I

    move-result p2

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;->c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->f(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public e0(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final e1(Z)Z
    .locals 12

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->M()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v1, p1, Lcom/sunia/HTREnginev2/o4l;->g:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    iget-object v1, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v10, v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jlj;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v1, v1, Lcom/sunia/HTREnginev2/klj;->i:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    iget-object v3, p1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget v8, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public f(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$a;)V

    const/16 p2, 0x12

    const/4 p3, 0x0

    invoke-interface {p0, p2, p1, p3, v7}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public f0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final f1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0(Z)V

    return-void
.end method

.method public final g0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->y(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final g1()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->e()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    throw v0
.end method

.method public declared-synchronized h0()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/sunia/HTREnginev2/l1g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l1g;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q1(Lcom/google/common/base/Supplier;J)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h1()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g()V

    goto/16 :goto_7

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L0(Z)V

    goto/16 :goto_7

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->N0(Z)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Y()V

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z0(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_7

    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j0(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_7

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;)V

    goto/16 :goto_7

    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;I)V

    goto/16 :goto_7

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->J0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$b;)V

    goto/16 :goto_7

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    goto/16 :goto_7

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E0(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_7

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_7

    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->X0(Z)V

    goto/16 :goto_7

    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->T0(I)V

    goto/16 :goto_7

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m0()V

    goto/16 :goto_7

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_7

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i0()V

    return v4

    :pswitch_13
    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i1(ZZ)V

    goto/16 :goto_7

    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->V0(Lcom/google/android/exoplayer2/SeekParameters;)V

    goto/16 :goto_7

    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->R0(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto/16 :goto_7

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;)V

    goto/16 :goto_7

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j()V

    goto/16 :goto_7

    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->P0(ZIZI)V

    goto/16 :goto_7

    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    goto/16 :goto_7

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_3
    move-exception p1

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_4
    move-exception p1

    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v0, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v0, 0xbbb

    :goto_5
    move v2, v0

    goto :goto_6

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    goto :goto_5

    :cond_9
    const/16 v0, 0xbbc

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_5
    move-exception p1

    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_6
    move-exception p1

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->R()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->a(Lcom/google/android/exoplayer2/Renderer;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n(Lcom/google/android/exoplayer2/Renderer;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    return-void
.end method

.method public final i0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i1(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x0:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n0(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    return-void
.end method

.method public final j()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m1()V

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v3, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n1()V

    iget-boolean v9, v3, Lcom/sunia/HTREnginev2/jlj;->d:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v10

    iget-object v9, v3, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v10, v15, Lcom/sunia/HTREnginev2/o4l;->s:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    move v8, v5

    move v9, v8

    move v7, v12

    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    if-eqz v8, :cond_3

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v12

    :goto_1
    iget-object v4, v3, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    if-nez v4, :cond_5

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v12

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v12

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move v9, v12

    :goto_6
    if-nez v4, :cond_9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    iget-object v4, v3, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_b
    iget-object v4, v3, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v4, v4, Lcom/sunia/HTREnginev2/klj;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_d

    iget-boolean v7, v3, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v7, :cond_d

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v7, v7, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    move v4, v12

    :goto_8
    if-eqz v4, :cond_e

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    if-eqz v5, :cond_e

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v5, v5, Lcom/sunia/HTREnginev2/o4l;->m:I

    const/4 v7, 0x5

    invoke-virtual {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->P0(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    iget-object v4, v3, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v4, v4, Lcom/sunia/HTREnginev2/klj;->i:Z

    if-eqz v4, :cond_f

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j1()V

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v4, v4, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e1(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g1()V

    goto :goto_9

    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v4, v4, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    if-nez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->M()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d0()V

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->notifyRebuffer()V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j1()V

    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v4, v4, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17

    move v4, v12

    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v7

    iget-object v8, v3, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v4, v3, Lcom/sunia/HTREnginev2/o4l;->g:Z

    if-nez v4, :cond_17

    iget-wide v3, v3, Lcom/sunia/HTREnginev2/o4l;->r:J

    const-wide/32 v7, 0x7a120

    cmp-long v3, v3, v7

    if-gez v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->K()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    move v3, v12

    :goto_b
    if-nez v3, :cond_18

    iput-wide v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    goto :goto_c

    :cond_18
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    goto :goto_c

    :cond_19
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v3, v3, v7

    if-gez v3, :cond_20

    :goto_c
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v7, v4, Lcom/sunia/HTREnginev2/o4l;->o:Z

    if-eq v3, v7, :cond_1a

    invoke-virtual {v4, v3}, Lcom/sunia/HTREnginev2/o4l;->d(Z)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v3, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v3, v5, :cond_1c

    :cond_1b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v3, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    :cond_1c
    const-wide/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->S(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_e

    :cond_1d
    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    if-eqz v4, :cond_1e

    if-eq v3, v6, :cond_1e

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0(JJ)V

    goto :goto_d

    :cond_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    :goto_d
    move v1, v12

    :goto_e
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v3, v2, Lcom/sunia/HTREnginev2/o4l;->p:Z

    if-eq v3, v1, :cond_1f

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/o4l;->i(Z)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_1f
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y0:Z

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_f
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    return-void
.end method

.method public final j0(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/MediaSourceList;->C(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method public final j1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->f()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n(Lcom/google/android/exoplayer2/Renderer;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v6, p1

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d1()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v3, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$a;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$a;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->b(Lcom/google/android/exoplayer2/Renderer;)V

    if-eqz v14, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_4
    return-void
.end method

.method public k0(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x14

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final k1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v2, v1, Lcom/sunia/HTREnginev2/o4l;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/o4l;->a(Z)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m([Z)V

    return-void
.end method

.method public final l0()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    aget-object v8, v5, v3

    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget-object v5, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v10, v5, v3

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->m()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v13

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public final l1(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/LoadControl;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public final m([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-boolean v3, p1, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/sunia/HTREnginev2/jlj;->g:Z

    return-void
.end method

.method public final m0()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v4, v1, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, v0, v4}, Lcom/sunia/HTREnginev2/jlj;->v(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v13

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_6

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v6

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    move-result v16

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v7, v0, [Z

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v14, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    move-object v12, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/sunia/HTREnginev2/jlj;->b(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v1, v8, :cond_1

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v9

    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    iget-wide v2, v0, Lcom/sunia/HTREnginev2/o4l;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    if-eqz v14, :cond_2

    invoke-virtual {v10, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    aput-boolean v2, v0, v9

    iget-object v3, v11, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v9

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v2

    if-eq v3, v2, :cond_3

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_3

    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    iget-wide v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m([Z)V

    goto :goto_4

    :cond_6
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b;->z(Lcom/sunia/HTREnginev2/jlj;)Z

    iget-boolean v0, v1, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-wide v2, v0, Lcom/sunia/HTREnginev2/klj;->b:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v1, v4, v5}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/sunia/HTREnginev2/jlj;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    :cond_7
    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B(Z)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v0, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n1()V

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    move v4, v9

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method public final m1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->U()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->W()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->X()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->V()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method public final n0(ZZZZ)V
    .locals 29

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->F0:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t0:Z

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->f()V

    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0:I

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->N(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    :goto_5
    if-eqz p2, :cond_5

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    move v0, v3

    :goto_6
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/b;->f()V

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0:Z

    new-instance v3, Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v5, v4, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget v11, v4, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eqz p4, :cond_6

    goto :goto_7

    :cond_6
    iget-object v2, v4, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :goto_7
    move-object v12, v2

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_8

    :cond_7
    iget-object v2, v4, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_8
    move-object v14, v2

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_9

    :cond_8
    iget-object v2, v4, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_9
    move-object v15, v2

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_a

    :cond_9
    iget-object v0, v4, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    :goto_a
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v2, v0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/sunia/HTREnginev2/o4l;->m:I

    move/from16 v19, v2

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z0:Z

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v28}, Lcom/sunia/HTREnginev2/o4l;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    if-eqz p3, :cond_a

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->A()V

    :cond_a
    return-void
.end method

.method public final n1()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p0(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->g(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v2, v2, Lcom/sunia/HTREnginev2/o4l;->s:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->T(JJ)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iput-wide v0, v2, Lcom/sunia/HTREnginev2/o4l;->s:J

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sunia/HTREnginev2/o4l;->q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/o4l;->r:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v1, v0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    :cond_5
    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G0:J

    return-void
.end method

.method public final o0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-boolean v0, v0, Lcom/sunia/HTREnginev2/klj;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q0:Z

    return-void
.end method

.method public final o1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e0(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x10

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final p0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/jlj;->z(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->c(J)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b0()V

    return-void
.end method

.method public final p1(F)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->o()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlj;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v5, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final declared-synchronized q1(Lcom/google/common/base/Supplier;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$d;->e:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final u()J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->q()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jlj;->l()J

    move-result-wide v1

    iget-boolean v3, v0, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->L(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/jlj;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final v(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/o4l;->l()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/b;->C(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget p1, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public w()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Landroid/os/Looper;

    return-object p0
.end method

.method public final w0(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final x()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/o4l;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public x0(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final y(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->j()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {v0, v3, v4}, Lcom/sunia/HTREnginev2/jlj;->y(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final y0(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/jlj;->f:Lcom/sunia/HTREnginev2/klj;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/klj;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v3, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v1, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v5, v1, Lcom/sunia/HTREnginev2/o4l;->c:J

    iget-wide v7, v1, Lcom/sunia/HTREnginev2/o4l;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    :cond_0
    return-void
.end method

.method public final z(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b;->v(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C0:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/b;->y(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q()V

    return-void
.end method

.method public final z0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x1

    iget v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w0:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v7, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v7, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v16, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v16

    goto/16 :goto_4

    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    :goto_1
    iget-object v14, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    iget-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v15, v15, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/b;->C(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v4, v5, :cond_2

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    move-object v9, v7

    move v10, v8

    goto :goto_4

    :cond_3
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    move-wide/from16 v16, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v7, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$f;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v1, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v1, v8, :cond_6

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a1(I)V

    :cond_6
    invoke-virtual {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n0(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->p()Lcom/sunia/HTREnginev2/jlj;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v7, v1, Lcom/sunia/HTREnginev2/jlj;->d:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/sunia/HTREnginev2/jlj;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->J:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    :goto_6
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v6, v3, Lcom/sunia/HTREnginev2/o4l;->s:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v6, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_9
    iget-wide v7, v3, Lcom/sunia/HTREnginev2/o4l;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    return-void

    :cond_a
    move-wide v1, v4

    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget v3, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A0(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->G(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O:Lcom/sunia/HTREnginev2/o4l;

    throw v0
.end method
