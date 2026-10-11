.class public final Lcom/google/android/exoplayer2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a$c;-><init>(Lcom/google/android/exoplayer2/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a$c;->j(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a$c;->n(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a$c;->l(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic d(IZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a$c;->m(IZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a$c;->h(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic f(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a$c;->k(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/a$c;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a$c;->i(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private synthetic i(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->M(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic k(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public static synthetic m(IZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public static synthetic n(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a;->getPlayWhenReady()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->T(ZI)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a;->U(Lcom/google/android/exoplayer2/a;ZII)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/a;->U(Lcom/google/android/exoplayer2/a;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a;->F(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/a;->g0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->g0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->F(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->I(Lcom/google/android/exoplayer2/a;Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/f1g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/f1g;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->Z(Lcom/google/android/exoplayer2/a;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->J(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a;->K(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->L(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/a;->M(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/a;->N(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/d1g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d1g;-><init>(Lcom/google/android/exoplayer2/a$c;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e1g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/e1g;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p2}, Lcom/google/android/exoplayer2/a;->f0(Lcom/google/android/exoplayer2/a;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/j1g;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/j1g;-><init>()V

    const/16 p2, 0x1a

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->G(Lcom/google/android/exoplayer2/a;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->H(Lcom/google/android/exoplayer2/a;Z)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/h1g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/h1g;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a;->V(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/a;->W(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->X(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->Y(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/g1g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/g1g;-><init>(Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/i1g;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/i1g;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->R(Lcom/google/android/exoplayer2/a;Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/a;->Q(Lcom/google/android/exoplayer2/a;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a;->P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/a;->Q(Lcom/google/android/exoplayer2/a;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/a;->Q(Lcom/google/android/exoplayer2/a;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a;->c0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/a;->a0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->a0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->c0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->b0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/a;->d0(Lcom/google/android/exoplayer2/a;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->e0(Lcom/google/android/exoplayer2/a;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/k1g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/k1g;-><init>(Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->S(Lcom/google/android/exoplayer2/a;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p0, p3, p4}, Lcom/google/android/exoplayer2/a;->Q(Lcom/google/android/exoplayer2/a;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->O(Lcom/google/android/exoplayer2/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a;->O(Lcom/google/android/exoplayer2/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a;->P(Lcom/google/android/exoplayer2/a;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/a$c;->e:Lcom/google/android/exoplayer2/a;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/a;->Q(Lcom/google/android/exoplayer2/a;II)V

    return-void
.end method
