.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
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
        Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a;

.field public final b:Lcom/google/android/exoplayer2/util/ConditionVariable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move/from16 v0, p8

    .line 2
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p9

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p10

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object v1, p0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->b:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 9
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/a;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplayer2/a;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->b:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 11
    throw p1
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->a(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->b:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearAuxEffectInfo()V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    return-object p0
.end method

.method public d(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->n1(Z)V

    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->decreaseDeviceVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->experimentalIsSleepingForOffload()Z

    move-result p0

    return p0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getClock()Lcom/google/android/exoplayer2/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentAdGroupIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentAdIndexInAdGroup()I

    move-result p0

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

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentCues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentPeriodIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceVolume()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getDeviceVolume()I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPauseAtEndOfMediaItems()Z

    move-result p0

    return p0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result p0

    return p0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackState()I

    move-result p0

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaybackSuppressionReason()I

    move-result p0

    return p0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object p0

    return-object p0
.end method

.method public getRendererCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getRendererCount()I

    move-result p0

    return p0
.end method

.method public getRendererType(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->getRendererType(I)I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getShuffleModeEnabled()Z

    move-result p0

    return p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getSkipSilenceEnabled()Z

    move-result p0

    return p0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVideoChangeFrameRateStrategy()I

    move-result p0

    return p0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getVideoScalingMode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVideoScalingMode()I

    move-result p0

    return p0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public getVolume()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->getVolume()F

    move-result p0

    return p0
.end method

.method public increaseDeviceVolume()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->increaseDeviceVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isDeviceMuted()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isLoading()Z

    move-result p0

    return p0
.end method

.method public isPlayingAd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method public moveMediaItems(III)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->moveMediaItems(III)V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->release()V

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->removeMediaItems(II)V

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->retry()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->seekTo(IJ)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setDeviceVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setForegroundMode(Z)V

    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setHandleAudioBecomingNoisy(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setHandleWakeLock(Z)V

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a;->setMediaItems(Ljava/util/List;IJ)V

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setPauseAtEndOfMediaItems(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoScalingMode(I)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setVolume(F)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->setWakeMode(I)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->stop()V

    return-void
.end method

.method public stop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->c()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->a:Lcom/google/android/exoplayer2/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->stop(Z)V

    return-void
.end method
