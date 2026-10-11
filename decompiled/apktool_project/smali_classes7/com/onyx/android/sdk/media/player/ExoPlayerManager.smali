.class public final Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 o2\u00020\u0001:\u0001oB\u0007\u00a2\u0006\u0004\u0008n\u0010;J\u001e\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010\u0013\u001a\u00020\u0012J\u0014\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0003J\u001c\u0010\u0019\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u001a\u0010#\u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u001dH\u0016J\u0006\u0010$\u001a\u00020\u0003J\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0005J\u0006\u0010\'\u001a\u00020\u001dJ\u000e\u0010)\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0005J\u0016\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0005J\u0006\u00100\u001a\u00020/J\u0006\u00101\u001a\u00020/J\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u0006\u00104\u001a\u00020/J\u0006\u00105\u001a\u00020\u0007J\u0006\u00106\u001a\u00020\u0007J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\u0007J\u0006\u00109\u001a\u00020\u0007J\u000f\u0010<\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010>\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008=\u0010;J\u000f\u0010@\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008?\u0010;J\u000f\u0010B\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008A\u0010;J\u000e\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020/J\u000f\u0010F\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008E\u0010;J\u000f\u0010H\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008G\u0010;J\u000f\u0010J\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008I\u0010;J\u0017\u0010M\u001a\u00020\u00072\u0008\u0010L\u001a\u0004\u0018\u00010K\u00a2\u0006\u0004\u0008M\u0010NR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010PR\u0018\u0010S\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010RR$\u0010Y\u001a\u0004\u0018\u00010\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u00030\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010b\u001a\u00020/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\"\u0010m\u001a\u00020f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010l\u00a8\u0006p"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;",
        "Lcom/google/android/exoplayer2/Player$Listener;",
        "",
        "",
        "audioList",
        "",
        "totalDuration",
        "",
        "g",
        "c",
        "b",
        "e",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "a",
        "d",
        "Lcom/onyx/android/sdk/media/player/state/PlayerState;",
        "state",
        "f",
        "Lcom/google/android/exoplayer2/ExoPlayer;",
        "getExoPlayer",
        "addMediaItem",
        "utteranceId",
        "Ljava/io/File;",
        "audioFile",
        "filePath",
        "play",
        "Lcom/google/android/exoplayer2/PlaybackException;",
        "error",
        "onPlayerError",
        "",
        "playbackState",
        "onPlaybackStateChanged",
        "Lcom/google/android/exoplayer2/MediaItem;",
        "mediaItem",
        "reason",
        "onMediaItemTransition",
        "getCurrentAudioFilePath",
        "getDuration",
        "getCurrentPosition",
        "getCurrentWindowIndex",
        "msec",
        "seekTo",
        "index",
        "prevMsec",
        "prevSeek",
        "nextMsec",
        "nextSeek",
        "",
        "isOpen",
        "isClosed",
        "isPlaying",
        "isPaused",
        "isStopped",
        "start",
        "pause",
        "stop",
        "reset",
        "close",
        "postPlayProgress$sdk_media_release",
        "()V",
        "postPlayProgress",
        "removePlayTimerObserver$sdk_media_release",
        "removePlayTimerObserver",
        "acquireWakeLock$sdk_media_release",
        "acquireWakeLock",
        "releaseWakeLock$sdk_media_release",
        "releaseWakeLock",
        "postEvent",
        "setPostDurationEvent",
        "switchToPausedState$sdk_media_release",
        "switchToPausedState",
        "switchToPlayingState$sdk_media_release",
        "switchToPlayingState",
        "switchToStoppedState$sdk_media_release",
        "switchToStoppedState",
        "",
        "speed",
        "setPlaybackSpeed",
        "(Ljava/lang/Float;)V",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "wakeLockHolder",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "playTimerObserver",
        "Lcom/google/android/exoplayer2/ExoPlayer;",
        "getExoPlayer$sdk_media_release",
        "()Lcom/google/android/exoplayer2/ExoPlayer;",
        "setExoPlayer$sdk_media_release",
        "(Lcom/google/android/exoplayer2/ExoPlayer;)V",
        "exoPlayer",
        "h",
        "Lcom/onyx/android/sdk/media/player/state/PlayerState;",
        "",
        "i",
        "Ljava/util/List;",
        "audioFileList",
        "j",
        "Z",
        "postDurationEvent",
        "k",
        "J",
        "audioDuration",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "l",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "setEventBusHolder",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V",
        "eventBusHolder",
        "<init>",
        "Companion",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:J = 0x3e8L

.field public static final n:I = 0x190

.field public static final o:Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/media/player/state/PlayerState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:J

.field public l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->Companion:Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;

    new-instance v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->o:Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->e:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    new-instance v0, Lcom/onyx/android/sdk/media/player/state/PlayerStoppedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/player/state/PlayerStoppedState;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->i:Ljava/util/List;

    iput-boolean v2, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->j:Z

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    invoke-direct {v0, v3, v2, v3}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public static final synthetic access$getOurInstance$cp()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->o:Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    return-object v0
.end method

.method public static final synthetic access$postPlayChangeEvent(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->d()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$getPlayTimerObserver$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$getPlayTimerObserver$1;-><init>(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final acquireWakeLock$sdk_media_release()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->e:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final addMediaItem(Ljava/lang/String;Ljava/io/File;)Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/Player;->addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    return-object p0
.end method

.method public final addMediaItem(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audioList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->addMediaItem(Ljava/lang/String;Ljava/io/File;)Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->stop()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->d()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->e()V

    return-void
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->postPlayProgress$sdk_media_release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/player/state/PlayerState;->pause(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->d()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->reset()V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getDuration()J

    move-result-wide v7

    long-to-float v3, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToLong(F)J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v1

    new-instance v3, Lcom/onyx/android/sdk/media/event/PlayChangeEvent;

    long-to-int v1, v1

    long-to-int v2, v7

    invoke-direct {v3, v1, v2, v0}, Lcom/onyx/android/sdk/media/event/PlayChangeEvent;-><init>(III)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayChangeEvent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$seekToDefaultPosition$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$seekToDefaultPosition$1;-><init>(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/media/player/state/PlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    return-void
.end method

.method public final g(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->i:Ljava/util/List;

    iput-wide p2, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->k:J

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->addMediaItem(Ljava/util/List;)V

    return-void
.end method

.method public final getCurrentAudioFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->i:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentWindowIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDuration()J
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iget-wide v3, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->k:J

    :cond_1
    return-wide v3
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    const-string v2, "setConstantBitrateSeekingEnabled(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getExoPlayer$sdk_media_release()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPaused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    instance-of p0, p0, Lcom/onyx/android/sdk/media/player/state/PlayerPausedState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStopped()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    instance-of p0, p0, Lcom/onyx/android/sdk/media/player/state/PlayerStoppedState;

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

.method public final nextSeek(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getDuration()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->seekTo(J)V

    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/MediaItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v0, Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playbackState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->c()V

    :goto_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/player/state/PlayerState;->stop(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final pause()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/player/state/PlayerState;->pause(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    return-void
.end method

.method public final play(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->play(Ljava/util/List;J)V

    return-void
.end method

.method public final play(Ljava/util/List;J)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "audioList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->close()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g(Ljava/util/List;J)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->start()V

    return-void
.end method

.method public final postPlayProgress$sdk_media_release()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->removePlayTimerObserver$sdk_media_release()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->a()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JJLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final prevSeek(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->seekTo(J)V

    return-void
.end method

.method public final releaseWakeLock$sdk_media_release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->e:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->releaseWakeLock()V

    return-void
.end method

.method public final removePlayTimerObserver$sdk_media_release()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->stop()V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->clearMediaItems()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->k:J

    return-void
.end method

.method public final seekTo(IJ)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    instance-of p0, p0, Lcom/onyx/android/sdk/media/player/state/PlayerPlayingState;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :goto_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->seekTo(IJ)V

    return-void
.end method

.method public final setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->l:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public final setExoPlayer$sdk_media_release(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ExoPlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method public final setPlaybackSpeed(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->g:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method public final setPostDurationEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->j:Z

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/player/state/PlayerState;->start(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->h:Lcom/onyx/android/sdk/media/player/state/PlayerState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/player/state/PlayerState;->stop(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    return-void
.end method

.method public final switchToPausedState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/player/state/PlayerPausedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/player/state/PlayerPausedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f(Lcom/onyx/android/sdk/media/player/state/PlayerState;)V

    return-void
.end method

.method public final switchToPlayingState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/player/state/PlayerPlayingState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/player/state/PlayerPlayingState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f(Lcom/onyx/android/sdk/media/player/state/PlayerState;)V

    return-void
.end method

.method public final switchToStoppedState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/player/state/PlayerStoppedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/player/state/PlayerStoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->f(Lcom/onyx/android/sdk/media/player/state/PlayerState;)V

    return-void
.end method
