.class public final Lcom/google/android/exoplayer2/a;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a$b;,
        Lcom/google/android/exoplayer2/a$d;,
        Lcom/google/android/exoplayer2/a$c;,
        Lcom/google/android/exoplayer2/a$e;
    }
.end annotation


# static fields
.field public static final z0:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field public final A:Lcom/google/android/exoplayer2/StreamVolumeManager;

.field public final B:Lcom/sunia/HTREnginev2/l5o;

.field public final C:Lcom/sunia/HTREnginev2/g7o;

.field public final D:J

.field public E:I

.field public F:Z

.field public G:I

.field public H:I

.field public I:Z

.field public J:I

.field public K:Z

.field public L:Lcom/google/android/exoplayer2/SeekParameters;

.field public M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field public N:Z

.field public O:Lcom/google/android/exoplayer2/Player$Commands;

.field public P:Lcom/google/android/exoplayer2/MediaMetadata;

.field public Q:Lcom/google/android/exoplayer2/MediaMetadata;

.field public R:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public S:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public T:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public U:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public V:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public W:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Y:Z

.field public Z:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final a:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public a0:I

.field public final b:Lcom/google/android/exoplayer2/Player$Commands;

.field public b0:I

.field public final c:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field public c0:I

.field public final d:Landroid/content/Context;

.field public d0:I

.field public final e:Lcom/google/android/exoplayer2/Player;

.field public e0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:[Lcom/google/android/exoplayer2/Renderer;

.field public f0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public g0:I

.field public final h:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field public h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final i:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public i0:F

.field public final j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field public j0:Z

.field public final k:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public k0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public l0:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Lcom/google/android/exoplayer2/Timeline$Period;

.field public m0:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public n0:Z

.field public final o:Z

.field public o0:Z

.field public final p:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field public p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field public q0:Z

.field public final r:Landroid/os/Looper;

.field public r0:Z

.field public final s:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field public s0:Lcom/google/android/exoplayer2/DeviceInfo;

.field public final t:J

.field public t0:Lcom/google/android/exoplayer2/video/VideoSize;

.field public final u:J

.field public u0:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final v:Lcom/google/android/exoplayer2/util/Clock;

.field public v0:Lcom/sunia/HTREnginev2/o4l;

.field public final w:Lcom/google/android/exoplayer2/a$c;

.field public w0:I

.field public final x:Lcom/google/android/exoplayer2/a$d;

.field public x0:I

.field public final y:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

.field public y0:J

.field public final z:Lcom/google/android/exoplayer2/AudioFocusManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V
    .locals 36
    .param p2    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/util/ConditionVariable;

    :try_start_0
    const-string v3, "ExoPlayerImpl"

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1e

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Init "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ExoPlayerLib/2.17.1"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/a;->d:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->i:Lcom/google/common/base/Function;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->b:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iput-object v4, v1, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput-object v5, v1, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->l:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v5, v1, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->q:I

    iput v5, v1, Lcom/google/android/exoplayer2/a;->a0:I

    iget v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->r:I

    iput v5, v1, Lcom/google/android/exoplayer2/a;->b0:I

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->p:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/a;->j0:Z

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->y:J

    iput-wide v5, v1, Lcom/google/android/exoplayer2/a;->D:J

    new-instance v15, Lcom/google/android/exoplayer2/a$c;

    const/4 v14, 0x0

    invoke-direct {v15, v1, v14}, Lcom/google/android/exoplayer2/a$c;-><init>(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/a$a;)V

    iput-object v15, v1, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    new-instance v13, Lcom/google/android/exoplayer2/a$d;

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/a$d;-><init>(Lcom/google/android/exoplayer2/a$a;)V

    iput-object v13, v1, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    new-instance v6, Landroid/os/Handler;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->j:Landroid/os/Looper;

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/exoplayer2/RenderersFactory;

    move-object v8, v6

    move-object v9, v15

    move-object v10, v15

    move-object v11, v15

    move-object v12, v15

    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v7

    const/4 v12, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v12

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->f:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object v8, v1, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->e:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object v5, v1, Lcom/google/android/exoplayer2/a;->p:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->h:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iput-object v10, v1, Lcom/google/android/exoplayer2/a;->s:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->s:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/a;->o:Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->t:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object v5, v1, Lcom/google/android/exoplayer2/a;->L:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v16, v15

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->u:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/a;->t:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->v:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/a;->u:J

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->z:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/a;->N:Z

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->j:Landroid/os/Looper;

    iput-object v15, v1, Lcom/google/android/exoplayer2/a;->r:Landroid/os/Looper;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->b:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v14, v1, Lcom/google/android/exoplayer2/a;->v:Lcom/google/android/exoplayer2/util/Clock;

    if-nez p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    iput-object v5, v1, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/Player;

    new-instance v9, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v11, Lcom/sunia/HTREnginev2/j0g;

    invoke-direct {v11, v1}, Lcom/sunia/HTREnginev2/j0g;-><init>(Lcom/google/android/exoplayer2/a;)V

    invoke-direct {v9, v15, v14, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v9, v1, Lcom/google/android/exoplayer2/a;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    new-instance v9, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v9, v12}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    new-instance v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length v11, v7

    new-array v11, v11, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v12, v7

    new-array v12, v12, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object/from16 v20, v6

    sget-object v6, Lcom/google/android/exoplayer2/TracksInfo;->EMPTY:Lcom/google/android/exoplayer2/TracksInfo;

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-direct {v9, v11, v12, v6, v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/TracksInfo;Ljava/lang/Object;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/a;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    new-instance v6, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/16 v10, 0x14

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v10

    const/16 v11, 0x1d

    invoke-virtual {v6, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/a;->b:Lcom/google/android/exoplayer2/Player$Commands;

    new-instance v10, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/a;->O:Lcom/google/android/exoplayer2/Player$Commands;

    const/4 v10, 0x0

    invoke-interface {v14, v15, v10}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/a;->h:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v6, Lcom/sunia/HTREnginev2/u0g;

    invoke-direct {v6, v1}, Lcom/sunia/HTREnginev2/u0g;-><init>(Lcom/google/android/exoplayer2/a;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/a;->i:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-static {v9}, Lcom/sunia/HTREnginev2/o4l;->k(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-interface {v4, v5, v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V

    sget v10, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v10, v5, :cond_2

    new-instance v5, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/a$b;->a()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v5

    :goto_2
    move-object/from16 v22, v5

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->g:Lcom/google/common/base/Supplier;

    invoke-interface {v11}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/LoadControl;

    iget v12, v1, Lcom/google/android/exoplayer2/a;->E:I

    move-object/from16 v24, v13

    iget-boolean v13, v1, Lcom/google/android/exoplayer2/a;->F:Z

    move-object/from16 v25, v14

    iget-object v14, v1, Lcom/google/android/exoplayer2/a;->L:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->w:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->x:J

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/a;->N:Z

    move-object/from16 v29, v5

    move-object/from16 v5, v29

    move-object/from16 v31, v6

    move-object/from16 v30, v20

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move/from16 v32, v10

    move-object/from16 v11, v21

    const/16 v17, 0x0

    move-object v10, v11

    move-object/from16 v33, v11

    move v11, v12

    move v12, v13

    move-object/from16 v34, v24

    move-object v13, v4

    move-object/from16 v23, v17

    move-object/from16 v20, v25

    move-object/from16 v35, v16

    move-wide/from16 v16, v2

    move/from16 v18, v0

    move-object/from16 v19, v26

    move-object/from16 v21, v31

    invoke-direct/range {v5 .. v22}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    move-object/from16 v0, v29

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/google/android/exoplayer2/a;->i0:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/exoplayer2/a;->E:I

    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/a;->Q:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v3, -0x1

    iput v3, v1, Lcom/google/android/exoplayer2/a;->w0:I

    const/16 v3, 0x15

    move/from16 v5, v32

    if-ge v5, v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a;->w0(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/a;->g0:I

    goto :goto_3

    :cond_3
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/a;->g0:I

    :goto_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/a;->k0:Ljava/util/List;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/a;->n0:Z

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/a;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    new-instance v5, Landroid/os/Handler;

    move-object/from16 v6, v26

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v6, v33

    invoke-interface {v6, v5, v4}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    move-object/from16 v4, v35

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/a;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    move-object/from16 v5, p1

    iget-wide v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->c:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o(J)V

    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    move-object/from16 v7, v30

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->y:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-boolean v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->o:Z

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    new-instance v0, Lcom/google/android/exoplayer2/AudioFocusManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    iget-boolean v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->m:Z

    if-eqz v6, :cond_5

    iget-object v14, v1, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_4

    :cond_5
    move-object/from16 v14, v23

    :goto_4
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/AudioFocusManager;->n(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    new-instance v0, Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget-object v4, v1, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;->m(I)V

    new-instance v4, Lcom/sunia/HTREnginev2/l5o;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/sunia/HTREnginev2/l5o;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    iget v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->n:I

    if-eqz v6, :cond_6

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v2

    :goto_5
    invoke-virtual {v4, v12}, Lcom/sunia/HTREnginev2/l5o;->a(Z)V

    new-instance v4, Lcom/sunia/HTREnginev2/g7o;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/sunia/HTREnginev2/g7o;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->n:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    move v12, v3

    goto :goto_6

    :cond_7
    move v12, v2

    :goto_6
    invoke-virtual {v4, v12}, Lcom/sunia/HTREnginev2/g7o;->a(Z)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->j0(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->s0:Lcom/google/android/exoplayer2/DeviceInfo;

    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, v1, Lcom/google/android/exoplayer2/a;->t0:Lcom/google/android/exoplayer2/video/VideoSize;

    iget v0, v1, Lcom/google/android/exoplayer2/a;->g0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/a;->g0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/a;->a0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/a;->b0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/a;->j0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    const/4 v0, 0x7

    move-object/from16 v2, v34

    invoke-virtual {v1, v6, v0, v2}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    const/4 v0, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    throw v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x1e
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public static synthetic A(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->C0(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method private synthetic A0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->v0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic B(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;->A0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private synthetic B0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->h:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/sunia/HTREnginev2/x0g;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/x0g;-><init>(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic C(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->a1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic C0(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic D(IILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->y0(IILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic D0(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public static synthetic E(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->X0(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic E0(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public static synthetic F(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->S:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method private synthetic F0(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->Q:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a;->j0:Z

    return p0
.end method

.method public static synthetic G0(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method public static synthetic H(Lcom/google/android/exoplayer2/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->j0:Z

    return p1
.end method

.method public static synthetic H0(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic I(Lcom/google/android/exoplayer2/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->k0:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic I0(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic J(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public static synthetic J0(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic K(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method public static synthetic K0(FLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method public static synthetic L(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->i0()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private synthetic L0(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->O:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public static synthetic M(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public static synthetic M0(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public static synthetic N(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method public static synthetic N0(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public static synthetic O(Lcom/google/android/exoplayer2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a;->Y:Z

    return p0
.end method

.method public static synthetic O0(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public static synthetic P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic P0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic Q(Lcom/google/android/exoplayer2/a;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->d1(II)V

    return-void
.end method

.method public static synthetic Q0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic R(Lcom/google/android/exoplayer2/a;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->m1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic R0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public static synthetic S(Lcom/google/android/exoplayer2/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->j1()V

    return-void
.end method

.method public static synthetic S0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public static synthetic T(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->r0(ZI)I

    move-result p0

    return p0
.end method

.method public static synthetic T0(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public static synthetic U(Lcom/google/android/exoplayer2/a;ZII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->r1(ZII)V

    return-void
.end method

.method public static synthetic U0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/o4l;->g:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onLoadingChanged(Z)V

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/o4l;->g:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public static synthetic V(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/StreamVolumeManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-object p0
.end method

.method public static synthetic V0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->e:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public static synthetic W(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->j0(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->e:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public static synthetic X(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->s0:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p0
.end method

.method public static synthetic X0(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public static synthetic Y(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->s0:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p1
.end method

.method public static synthetic Y0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->m:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public static synthetic Z(Lcom/google/android/exoplayer2/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->u1()V

    return-void
.end method

.method public static synthetic Z0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->x0(Lcom/sunia/HTREnginev2/o4l;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public static synthetic a0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->e0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method public static synthetic a1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public static synthetic b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->J0(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic c0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->R:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic d(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->H0(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic d0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->t0:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->P0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->T0(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/exoplayer2/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->U:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->z0(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->f0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method public static synthetic h(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->R0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic i(FLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->K0(FLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->V0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static j0(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->d()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    return-object v0
.end method

.method public static synthetic k(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->W0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic l(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->I0(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic m(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->Z0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic n(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->Y0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic o(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->S0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic p(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->Q0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic q(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->U0(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic r(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;->L0(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static r0(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public static synthetic s(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;->B0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic t(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->N0(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic u(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->D0(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static u0(Lcom/sunia/HTREnginev2/o4l;)J
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/o4l;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/o4l;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static synthetic v(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->E0(ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic w(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->G0(ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic x(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;->F0(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static x0(Lcom/sunia/HTREnginev2/o4l;)Z
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method public static synthetic y(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->O0(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic y0(IILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic z(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->M0(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method private synthetic z0(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/Player;

    new-instance v0, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/a;->l0(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/a;->G:I

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->h0(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->k0()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/a;->q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v4

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 13
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public final b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;
    .locals 19
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/o4l;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sunia/HTREnginev2/o4l;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual/range {p1 .. p2}, Lcom/sunia/HTREnginev2/o4l;->j(Lcom/google/android/exoplayer2/Timeline;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sunia/HTREnginev2/o4l;->l()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/a;->y0:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    sget-object v16, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/a;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v0

    invoke-virtual/range {v6 .. v18}, Lcom/sunia/HTREnginev2/o4l;->c(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iget-wide v1, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/o4l;->q:J

    return-object v0

    :cond_2
    iget-object v3, v6, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v14, v8

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a;->getContentPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_a

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    iget-object v2, v6, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_e

    :cond_6
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_3
    iget-wide v8, v6, Lcom/sunia/HTREnginev2/o4l;->s:J

    iget-wide v10, v6, Lcom/sunia/HTREnginev2/o4l;->s:J

    iget-wide v12, v6, Lcom/sunia/HTREnginev2/o4l;->d:J

    iget-wide v2, v6, Lcom/sunia/HTREnginev2/o4l;->s:J

    sub-long v2, v0, v2

    iget-object v4, v6, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v5, v6, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v15, v6, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    move-object v7, v14

    move-wide/from16 p0, v0

    move-object v0, v14

    move-object v1, v15

    move-wide v14, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    invoke-virtual/range {v6 .. v18}, Lcom/sunia/HTREnginev2/o4l;->c(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v6

    move-wide/from16 v0, p0

    iput-wide v0, v6, Lcom/sunia/HTREnginev2/o4l;->q:J

    goto/16 :goto_8

    :cond_8
    move-object v0, v14

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v1, v6, Lcom/sunia/HTREnginev2/o4l;->r:J

    sub-long v3, v12, v8

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-wide v1, v6, Lcom/sunia/HTREnginev2/o4l;->q:J

    iget-object v3, v6, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v6, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v12, v14

    :cond_9
    iget-object v3, v6, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, v6, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v6, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v6 .. v18}, Lcom/sunia/HTREnginev2/o4l;->c(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v6

    iput-wide v1, v6, Lcom/sunia/HTREnginev2/o4l;->q:J

    goto :goto_8

    :cond_a
    :goto_4
    move-object v1, v0

    move-object v0, v14

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_b

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_5

    :cond_b
    iget-object v2, v6, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_5
    move-object/from16 v16, v2

    if-eqz v7, :cond_c

    iget-object v1, v1, Lcom/google/android/exoplayer2/a;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_7

    :cond_d
    iget-object v1, v6, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    :goto_7
    move-object/from16 v18, v1

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-wide v1, v12

    invoke-virtual/range {v6 .. v18}, Lcom/sunia/HTREnginev2/o4l;->c(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v6

    iput-wide v1, v6, Lcom/sunia/HTREnginev2/o4l;->q:J

    :cond_e
    :goto_8
    return-object v6
.end method

.method public final c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/exoplayer2/a;->w0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/a;->y0:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/a;->x0:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/a;->F:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    new-instance v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->m0:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->l0:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/a;->d1(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->U:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->Z:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    return-object p0
.end method

.method public final d1(II)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/a;->c0:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/a;->d0:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/a;->c0:I

    iput p2, p0, Lcom/google/android/exoplayer2/a;->d0:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v0, Lcom/sunia/HTREnginev2/yzf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/yzf;-><init>(II)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->c()V

    return-void
.end method

.method public final e1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 1

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide p0

    add-long/2addr p3, p0

    return-wide p3
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/o4l;->p:Z

    return p0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p(Z)V

    return-void
.end method

.method public final f1(II)Lcom/sunia/HTREnginev2/o4l;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->g1(II)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->k0()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0, v3, v5}, Lcom/google/android/exoplayer2/a;->q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v6, v5, v3}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v3

    iget v5, v3, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v6, 0x4

    if-eq v5, v1, :cond_1

    if-eq v5, v6, :cond_1

    if-ge p1, p2, :cond_1

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3, v6}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k0(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v3
.end method

.method public final g1(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->r:Landroid/os/Looper;

    return-object p0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object p0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->f0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->S:Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget p0, p0, Lcom/google/android/exoplayer2/a;->g0:I

    return p0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->O:Lcom/google/android/exoplayer2/Player$Commands;

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/o4l;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public getContentBufferedPosition()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/a;->y0:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, Lcom/sunia/HTREnginev2/o4l;->q:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->k:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/a;->e1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v1, v0, Lcom/sunia/HTREnginev2/o4l;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/o4l;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentCues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k0:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->p0()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/a;->x0:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->o0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;

    return-object p0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->s0:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p0
.end method

.method public getDeviceVolume()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->g()I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a;->N:Z

    return p0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/o4l;->l:Z

    return p0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method public getPlaybackState()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->e:I

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget p0, p0, Lcom/sunia/HTREnginev2/o4l;->m:I

    return p0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object p0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->Q:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getRendererCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    array-length p0, p0

    return p0
.end method

.method public getRendererType(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget p0, p0, Lcom/google/android/exoplayer2/a;->E:I

    return p0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/a;->t:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/a;->u:J

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->L:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a;->F:Z

    return p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a;->j0:Z

    return p0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/o4l;->r:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget p0, p0, Lcom/google/android/exoplayer2/a;->b0:I

    return p0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->e0:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->R:Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method public getVideoScalingMode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget p0, p0, Lcom/google/android/exoplayer2/a;->a0:I

    return p0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->t0:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p0
.end method

.method public getVolume()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget p0, p0, Lcom/google/android/exoplayer2/a;->i0:F

    return p0
.end method

.method public final h0(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$c;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/a;->o:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/MediaSourceList$c;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplayer2/a$e;

    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaSourceList$c;->b:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaSourceList$c;->a:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/a$e;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-object v0
.end method

.method public final h1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->Z:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->Z:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/a;->Z:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final i0()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final i1(IILjava/lang/Object;)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public increaseDeviceVolume()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->i()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->j()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/o4l;->g:Z

    return p0
.end method

.method public isPlayingAd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p0

    return p0
.end method

.method public final j1()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/a;->i0:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->h()F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    return-void
.end method

.method public final k0()Lcom/google/android/exoplayer2/Timeline;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/v4l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/v4l;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v0
.end method

.method public final k1(Ljava/util/List;IJZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->p0()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentPosition()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/a;->G:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/a;->G:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/google/android/exoplayer2/a;->g1(II)V

    :cond_0
    move-object v5, p1

    invoke-virtual {p0, v7, p1}, Lcom/google/android/exoplayer2/a;->h0(ILjava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->k0()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    if-ge v1, v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    move-wide/from16 v10, p3

    invoke-direct {v0, v5, v1, v10, v11}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0

    :cond_2
    :goto_0
    move-wide/from16 v10, p3

    const/4 v8, -0x1

    if-eqz p5, :cond_3

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a;->F:Z

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v2

    goto :goto_1

    :cond_3
    if-ne v1, v8, :cond_4

    move v1, v2

    move-wide v10, v3

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0, v5, v1, v10, v11}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v2

    iget v3, v2, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v1, v8, :cond_7

    if-eq v3, v6, :cond_7

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    if-lt v1, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    :cond_7
    :goto_3
    invoke-virtual {v2, v3}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v2

    iget-object v8, v0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move v10, v1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->K0(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move v5, v6

    goto :goto_4

    :cond_8
    move v5, v7

    :goto_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a;->o0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v8

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public final l0(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->p:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final l1(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->Y:Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/a;->d1(II)V

    :goto_0
    return-void
.end method

.method public final m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->p0()I

    move-result v0

    new-instance v8, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/a;->v:Lcom/google/android/exoplayer2/util/Clock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/PlayerMessage;-><init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V

    return-object v8
.end method

.method public final m1(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->V:Landroid/view/Surface;

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v4, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt p2, v5, :cond_0

    if-ltz p3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/a;->G:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v6, p2, p1

    sub-int/2addr v4, v6

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-static {v4, p1, p2, v3}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->k0()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/exoplayer2/a;->q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v6, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v5, p1, p2, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a0(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public final n0(Lcom/sunia/HTREnginev2/o4l;Lcom/sunia/HTREnginev2/o4l;ZIZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/o4l;",
            "Lcom/sunia/HTREnginev2/o4l;",
            "ZIZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    iget-object v2, p2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v5, p0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, p0, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    :goto_0
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    iget-object p0, p2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object p0, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_6

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public n1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->n0:Z

    return-void
.end method

.method public final o0(Lcom/sunia/HTREnginev2/o4l;)J
    .locals 4

    iget-object v0, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/a;->y0:J

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object v0, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p1, Lcom/sunia/HTREnginev2/o4l;->s:J

    return-wide p0

    :cond_1
    iget-object v0, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/sunia/HTREnginev2/o4l;->s:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/a;->e1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final o1(Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->f:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->U:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/a;->D:J

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    move v5, v3

    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->U:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->V:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->V:Landroid/view/Surface;

    goto :goto_2

    :cond_3
    move v5, v3

    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->U:Ljava/lang/Object;

    if-eqz v5, :cond_5

    new-instance p1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/google/android/exoplayer2/a;->p1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method public final p0()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/a;->w0:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return p0
.end method

.method public final p1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->f1(II)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, p1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    iget-wide v1, p1, Lcom/sunia/HTREnginev2/o4l;->s:J

    iput-wide v1, p1, Lcom/sunia/HTREnginev2/o4l;->q:J

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/sunia/HTREnginev2/o4l;->r:J

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object p1

    :cond_1
    move-object v3, p1

    iget p1, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/a;->G:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h1()V

    iget-object p1, v3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/a;->o0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v9

    const/4 v11, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public prepare()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->q(ZI)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a;->r0(ZI)I

    move-result v3

    .line 5
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/a;->r1(ZII)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget v1, v0, Lcom/sunia/HTREnginev2/o4l;->e:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/o4l;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v5

    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f0()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    move-object v4, p0

    .line 12
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->prepare()V

    return-void
.end method

.method public final q0(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getContentPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v7, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v10

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v8, p0, Lcom/google/android/exoplayer2/a;->E:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/a;->F:Z

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v0(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->p0()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    :cond_6
    invoke-virtual {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final q1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->O:Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/Player;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->b:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getAvailableCommands(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/a;->O:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/t0g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t0g;-><init>(Lcom/google/android/exoplayer2/a;)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public final r1(ZII)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    if-eq p2, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-boolean v5, v1, Lcom/sunia/HTREnginev2/o4l;->l:Z

    if-ne v5, v4, :cond_2

    iget v5, v1, Lcom/sunia/HTREnginev2/o4l;->m:I

    if-ne v5, v2, :cond_2

    return-void

    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    invoke-virtual {v1, v4, v2}, Lcom/sunia/HTREnginev2/o4l;->e(ZI)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->O0(ZI)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public release()V
    .locals 6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.17.1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->y:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->k()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/l5o;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/g7o;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->j()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/p0g;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/p0g;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->h:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->s:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lcom/sunia/HTREnginev2/o4l;->b(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/o4l;->s:J

    iput-wide v4, v0, Lcom/sunia/HTREnginev2/o4l;->q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/sunia/HTREnginev2/o4l;->r:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->V:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/a;->V:Landroid/view/Surface;

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->k0:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/a;->r0:Z

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->f1(II)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v1

    iget-object p1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a;->o0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->prepare()V

    return-void
.end method

.method public final s0(J)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move v5, v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v3, v0

    move-object v4, v3

    move v5, v1

    move-object v1, v4

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v6

    new-instance p1, Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-static {p2}, Lcom/google/android/exoplayer2/a;->u0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v10, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v11, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method public final s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    iget-object v9, v6, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iput-object v7, v6, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v9, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a;->n0(Lcom/sunia/HTREnginev2/o4l;Lcom/sunia/HTREnginev2/o4l;ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v6, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v7, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v6, Lcom/google/android/exoplayer2/a;->m:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v4, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v6, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v4, v6, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    :cond_1
    if-nez v1, :cond_2

    iget-object v4, v9, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    iget-object v5, v7, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v2, v6, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    iget-object v4, v7, Lcom/sunia/HTREnginev2/o4l;->j:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/a;->u0:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a;->i0()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    :cond_3
    iget-object v4, v6, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v10

    iput-object v2, v6, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-boolean v2, v9, Lcom/sunia/HTREnginev2/o4l;->l:Z

    iget-boolean v5, v7, Lcom/sunia/HTREnginev2/o4l;->l:Z

    const/4 v11, 0x0

    if-eq v2, v5, :cond_4

    move v2, v10

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_0
    iget v5, v9, Lcom/sunia/HTREnginev2/o4l;->e:I

    iget v12, v7, Lcom/sunia/HTREnginev2/o4l;->e:I

    if-eq v5, v12, :cond_5

    move v5, v10

    goto :goto_1

    :cond_5
    move v5, v11

    :goto_1
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a;->u1()V

    :cond_7
    iget-boolean v12, v9, Lcom/sunia/HTREnginev2/o4l;->g:Z

    iget-boolean v13, v7, Lcom/sunia/HTREnginev2/o4l;->g:Z

    if-eq v12, v13, :cond_8

    move v12, v10

    goto :goto_2

    :cond_8
    move v12, v11

    :goto_2
    if-eqz v12, :cond_9

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/a;->t1(Z)V

    :cond_9
    iget-object v13, v9, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v14, v7, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v14, Lcom/sunia/HTREnginev2/b1g;

    move/from16 v15, p2

    invoke-direct {v14, v7, v15}, Lcom/sunia/HTREnginev2/b1g;-><init>(Lcom/sunia/HTREnginev2/o4l;I)V

    invoke-virtual {v13, v11, v14}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_a
    if-eqz p5, :cond_b

    move/from16 v11, p9

    invoke-virtual {v6, v8, v9, v11}, Lcom/google/android/exoplayer2/a;->t0(ILcom/sunia/HTREnginev2/o4l;I)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v11

    move-wide/from16 v13, p7

    invoke-virtual {v6, v13, v14}, Lcom/google/android/exoplayer2/a;->s0(J)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v13

    iget-object v14, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v15, Lcom/sunia/HTREnginev2/f0g;

    invoke-direct {v15, v8, v11, v13}, Lcom/sunia/HTREnginev2/f0g;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    const/16 v8, 0xb

    invoke-virtual {v14, v8, v15}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v8, Lcom/sunia/HTREnginev2/g0g;

    invoke-direct {v8, v3, v0}, Lcom/sunia/HTREnginev2/g0g;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    invoke-virtual {v1, v10, v8}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_c
    iget-object v0, v9, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v1, v7, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/h0g;

    invoke-direct {v1, v7}, Lcom/sunia/HTREnginev2/h0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    iget-object v0, v7, Lcom/sunia/HTREnginev2/o4l;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/i0g;

    invoke-direct {v1, v7}, Lcom/sunia/HTREnginev2/i0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_d
    iget-object v0, v9, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v7, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eq v0, v1, :cond_e

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v1, v7, Lcom/sunia/HTREnginev2/o4l;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/k0g;

    invoke-direct {v3, v7, v0}, Lcom/sunia/HTREnginev2/k0g;-><init>(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/l0g;

    invoke-direct {v3, v7}, Lcom/sunia/HTREnginev2/l0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v4, :cond_f

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->P:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/m0g;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/m0g;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_f
    if-eqz v12, :cond_10

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/n0g;

    invoke-direct {v1, v7}, Lcom/sunia/HTREnginev2/n0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_10
    const/4 v0, -0x1

    if-nez v5, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/o0g;

    invoke-direct {v3, v7}, Lcom/sunia/HTREnginev2/o0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_12
    if-eqz v5, :cond_13

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/sunia/HTREnginev2/zzf;

    invoke-direct {v3, v7}, Lcom/sunia/HTREnginev2/zzf;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/sunia/HTREnginev2/a0g;

    move/from16 v3, p3

    invoke-direct {v2, v7, v3}, Lcom/sunia/HTREnginev2/a0g;-><init>(Lcom/sunia/HTREnginev2/o4l;I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_14
    iget v1, v9, Lcom/sunia/HTREnginev2/o4l;->m:I

    iget v2, v7, Lcom/sunia/HTREnginev2/o4l;->m:I

    if-eq v1, v2, :cond_15

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/sunia/HTREnginev2/b0g;

    invoke-direct {v2, v7}, Lcom/sunia/HTREnginev2/b0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_15
    invoke-static {v9}, Lcom/google/android/exoplayer2/a;->x0(Lcom/sunia/HTREnginev2/o4l;)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/a;->x0(Lcom/sunia/HTREnginev2/o4l;)Z

    move-result v2

    if-eq v1, v2, :cond_16

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/sunia/HTREnginev2/c0g;

    invoke-direct {v2, v7}, Lcom/sunia/HTREnginev2/c0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_16
    iget-object v1, v9, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, v7, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/sunia/HTREnginev2/d0g;

    invoke-direct {v2, v7}, Lcom/sunia/HTREnginev2/d0g;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_17
    if-eqz p4, :cond_18

    iget-object v1, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/sunia/HTREnginev2/e0g;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/e0g;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a;->q1()V

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    iget-boolean v0, v9, Lcom/sunia/HTREnginev2/o4l;->o:Z

    iget-boolean v1, v7, Lcom/sunia/HTREnginev2/o4l;->o:Z

    if-eq v0, v1, :cond_19

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    iget-boolean v2, v7, Lcom/sunia/HTREnginev2/o4l;->o:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadSchedulingEnabledChanged(Z)V

    goto :goto_3

    :cond_19
    iget-boolean v0, v9, Lcom/sunia/HTREnginev2/o4l;->p:Z

    iget-boolean v1, v7, Lcom/sunia/HTREnginev2/o4l;->p:Z

    if-eq v0, v1, :cond_1a

    iget-object v0, v6, Lcom/google/android/exoplayer2/a;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    iget-boolean v2, v7, Lcom/sunia/HTREnginev2/o4l;->p:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalSleepingForOffloadChanged(Z)V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public seekTo(IJ)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->q:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    if-ltz p1, :cond_3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    if-ge p1, v5, :cond_3

    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/a;->G:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/sunia/HTREnginev2/o4l;)V

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->i:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackState()I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v5, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v5, v6}, Lcom/sunia/HTREnginev2/o4l;->h(I)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v5

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v6, v4, p1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x0(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/a;->o0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v10

    move-object v0, p0

    move-object v1, v5

    move v5, v6

    move v6, v7

    move-wide v7, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->r0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->h0:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->m(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/w0g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/w0g;-><init>(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->n(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackState()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->q(ZI)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/a;->r0(ZI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/a;->r1(ZII)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget v0, p0, Lcom/google/android/exoplayer2/a;->g0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->w0(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->w0(I)I

    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/a;->g0:I

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/y0g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/y0g;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->m0:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->l(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->A:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->n(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->K:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->K:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->H0(Z)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->p1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_0
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->r0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->y:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setWakeMode(I)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->l0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->l0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a;->k1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a;->k1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->N:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->N:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->M0(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->q(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a;->r0(ZI)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/a;->r1(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/o4l;->n:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/o4l;->g(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v2

    iget v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Q0(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->Q:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->Q:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v0, Lcom/sunia/HTREnginev2/z0g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/z0g;-><init>(Lcom/google/android/exoplayer2/a;)V

    const/16 p0, 0xf

    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget v0, p0, Lcom/google/android/exoplayer2/a;->E:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/a;->E:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->S0(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/r0g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/r0g;-><init>(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->L:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->L:Lcom/google/android/exoplayer2/SeekParameters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->U0(Lcom/google/android/exoplayer2/SeekParameters;)V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->F:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->F:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->W0(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/sunia/HTREnginev2/a1g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/a1g;-><init>(Z)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->k0()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/a;->c1(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/a;->b1(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/sunia/HTREnginev2/o4l;

    move-result-object v4

    iget v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/a;->G:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->M:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->j:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->Y0(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->j0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->j0:Z

    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v0, Lcom/sunia/HTREnginev2/v0g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/v0g;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->g:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v0, Lcom/sunia/HTREnginev2/s0g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/s0g;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iget v0, p0, Lcom/google/android/exoplayer2/a;->b0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/a;->b0:I

    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->l0:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    iput p1, p0, Lcom/google/android/exoplayer2/a;->a0:I

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/a;->i1(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->Y:Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->W:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->l1(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->x:Lcom/google/android/exoplayer2/a$d;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->m0(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->l1(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->h1()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->Z:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->w:Lcom/google/android/exoplayer2/a$c;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a;->o1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->m1(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->d1(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/a;->i0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/a;->i0:F

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->j1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->k:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v0, Lcom/sunia/HTREnginev2/q0g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/q0g;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/l5o;->a(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/g7o;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/l5o;->a(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/g7o;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/l5o;->a(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/g7o;->a(Z)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->v1()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->z:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->q(ZI)I

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/a;->p1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->k0:Ljava/util/List;

    return-void
.end method

.method public final t0(ILcom/sunia/HTREnginev2/o4l;I)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iget-object v3, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v6, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v1, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v9, v3

    move v10, v6

    move-object v6, v7

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v7, p3

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move v10, v4

    :goto_0
    if-nez p1, :cond_3

    iget-object v3, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/a;->u0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v4

    goto :goto_2

    :cond_1
    iget-object v3, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->u0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v11, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    add-long v2, v3, v11

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/a;->u0(Lcom/sunia/HTREnginev2/o4l;)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v1, Lcom/sunia/HTREnginev2/o4l;->s:J

    add-long/2addr v2, v4

    :goto_1
    move-wide v4, v2

    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/Player$PositionInfo;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v11

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v13

    iget-object v1, v1, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v15, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object v5, v0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v0
.end method

.method public final t1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->p0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->q0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final u1()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->experimentalIsSleepingForOffload()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sunia/HTREnginev2/l5o;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/g7o;->b(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->B:Lcom/sunia/HTREnginev2/l5o;

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/l5o;->b(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->C:Lcom/sunia/HTREnginev2/g7o;

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/g7o;->b(Z)V

    :goto_2
    return-void
.end method

.method public final v0(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 12

    iget v2, p0, Lcom/google/android/exoplayer2/a;->G:I

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/a;->G:I

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v3, p0, Lcom/google/android/exoplayer2/a;->H:I

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/a;->I:Z

    :cond_0
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v3, p0, Lcom/google/android/exoplayer2/a;->J:I

    :cond_1
    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/o4l;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer2/a;->w0:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/a;->y0:J

    iput v5, p0, Lcom/google/android/exoplayer2/a;->x0:I

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v2

    check-cast v3, Lcom/sunia/HTREnginev2/v4l;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/v4l;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/google/android/exoplayer2/a;->n:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/a$e;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/Timeline;

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/a$e;->b(Lcom/google/android/exoplayer2/a$e;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/Timeline;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/a;->I:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v8, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-object v8, v8, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v8, v3, Lcom/sunia/HTREnginev2/o4l;->d:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/a;->v0:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v10, v3, Lcom/sunia/HTREnginev2/o4l;->s:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :cond_6
    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-object v6, v3, Lcom/sunia/HTREnginev2/o4l;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v7, v3, Lcom/sunia/HTREnginev2/o4l;->d:J

    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/google/android/exoplayer2/a;->e1(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    iget-wide v2, v2, Lcom/sunia/HTREnginev2/o4l;->d:J

    :goto_4
    move-wide v7, v2

    goto :goto_5

    :cond_9
    move-wide v7, v6

    :goto_5
    move v6, v4

    goto :goto_6

    :cond_a
    move-wide v7, v6

    move v6, v5

    :goto_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/a;->I:Z

    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/sunia/HTREnginev2/o4l;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/a;->J:I

    const/4 v4, 0x0

    iget v9, p0, Lcom/google/android/exoplayer2/a;->H:I

    const/4 v10, -0x1

    move-object v0, p0

    move v5, v6

    move v6, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a;->s1(Lcom/sunia/HTREnginev2/o4l;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final v1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/a;->n0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/a;->o0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->o0:Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final w0(I)I
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a;->T:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p0

    return p0
.end method
