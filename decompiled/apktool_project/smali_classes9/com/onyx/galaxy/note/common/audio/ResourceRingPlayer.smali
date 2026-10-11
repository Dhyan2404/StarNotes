.class public final Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceRingPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceRingPlayer.kt\ncom/onyx/galaxy/note/common/audio/ResourceRingPlayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b\u00a2\u0006\u0004\u0008*\u0010+J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0017R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008\u0014\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer;",
        "mp",
        "",
        "onCompletion",
        "",
        "volume",
        "setVolume",
        "release",
        "stop",
        "",
        "isPlaying",
        "play",
        "c",
        "a",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "",
        "b",
        "I",
        "rawResId",
        "Z",
        "playInSilentMode",
        "d",
        "Landroid/media/MediaPlayer;",
        "mediaPlayer",
        "e",
        "F",
        "currentVolume",
        "f",
        "isSelfStopped",
        "Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;",
        "g",
        "Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;",
        "muteStrategy",
        "Landroid/content/BroadcastReceiver;",
        "h",
        "Lkotlin/Lazy;",
        "()Landroid/content/BroadcastReceiver;",
        "modeChangeReceiver",
        "<init>",
        "(Landroid/content/Context;IZ)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResourceRingPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceRingPlayer.kt\ncom/onyx/galaxy/note/common/audio/ResourceRingPlayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Z

.field public d:Landroid/media/MediaPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:F

.field public f:Z

.field public final g:Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->b:I

    .line 4
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->c:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    iput p2, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->e:F

    .line 6
    new-instance p2, Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;

    invoke-direct {p2, p1, p3}, Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->g:Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer$modeChangeReceiver$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer$modeChangeReceiver$2;-><init>(Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->h:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static final synthetic access$checkPlaybackState(Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->g:Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;->shouldMute()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->stop()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->f:Z

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->getSystemMusicVolumeRatio(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->e:F

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    :try_start_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolume failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->stop()V

    return-void
.end method

.method public final play()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->stop()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->g:Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;->shouldMute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->f:Z

    :try_start_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a:Landroid/content/Context;

    iget v2, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->b:I

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget v2, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->e:F

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play failed rawResId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " playInSilentMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->c:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->b()Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->e:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->c()V

    return-void
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->f:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->d:Landroid/media/MediaPlayer;

    return-void
.end method
