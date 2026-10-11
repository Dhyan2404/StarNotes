.class public final Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00102\u001a\u00020-\u00a2\u0006\u0004\u0008k\u0010lJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001d\u001a\u00020\u0007J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH\u0007J\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020#H\u0007J\u0006\u0010%\u001a\u00020\u0007J\u0006\u0010&\u001a\u00020\u0007J\u000e\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020*J\u000e\u0010,\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0015R\u0017\u00102\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R(\u0010B\u001a\u0008\u0012\u0004\u0012\u00020*0;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR0\u0010G\u001a\u0010\u0012\u000c\u0012\n C*\u0004\u0018\u00010*0*0;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010=\u001a\u0004\u0008E\u0010?\"\u0004\u0008F\u0010AR0\u0010K\u001a\u0010\u0012\u000c\u0012\n C*\u0004\u0018\u00010*0*0;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010=\u001a\u0004\u0008I\u0010?\"\u0004\u0008J\u0010AR(\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u001a0;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010=\u001a\u0004\u0008M\u0010?\"\u0004\u0008N\u0010AR\"\u0010R\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u00105\u001a\u0004\u0008Q\u00107\"\u0004\u0008,\u00109R\"\u0010U\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u00105\u001a\u0004\u0008T\u00107\"\u0004\u0008(\u00109R0\u0010Z\u001a\u0010\u0012\u000c\u0012\n C*\u0004\u0018\u00010V0V0;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010=\u001a\u0004\u0008X\u0010?\"\u0004\u0008Y\u0010AR\"\u0010a\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u0017\u0010g\u001a\u00020b8\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010i\u00a8\u0006m"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;",
        "d",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "",
        "listener",
        "",
        "setStatusChangedListener",
        "isPlaying",
        "isPaused",
        "isOpen",
        "isStopped",
        "pause",
        "stop",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "seekTo",
        "",
        "index",
        "seekToPosition",
        "",
        "msec",
        "setPlaybackSpeed",
        "resumePlay",
        "startPlay",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "audioData",
        "updateAudioInfo",
        "updateStatus",
        "Lcom/onyx/android/sdk/media/event/PlayChangeEvent;",
        "event",
        "onPlayChangeEvent",
        "Lcom/onyx/android/sdk/media/event/PlayCompleteEvent;",
        "onPlayCompleteEvent",
        "Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;",
        "onMediaItemTransitionEvent",
        "onStart",
        "destroy",
        "value",
        "setCurrentPosition",
        "getCurrentPotion",
        "",
        "getCurrentTime",
        "setDuration",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroidx/databinding/ObservableInt;",
        "j",
        "Landroidx/databinding/ObservableInt;",
        "getPlayIcon",
        "()Landroidx/databinding/ObservableInt;",
        "setPlayIcon",
        "(Landroidx/databinding/ObservableInt;)V",
        "playIcon",
        "Landroidx/databinding/ObservableField;",
        "k",
        "Landroidx/databinding/ObservableField;",
        "getPlayStatus",
        "()Landroidx/databinding/ObservableField;",
        "setPlayStatus",
        "(Landroidx/databinding/ObservableField;)V",
        "playStatus",
        "kotlin.jvm.PlatformType",
        "l",
        "getPlayTime",
        "setPlayTime",
        "playTime",
        "m",
        "getPlayingTime",
        "setPlayingTime",
        "playingTime",
        "n",
        "getAudioDataSet",
        "setAudioDataSet",
        "audioDataSet",
        "o",
        "getDuration",
        "duration",
        "p",
        "getCurrentPosition",
        "currentPosition",
        "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
        "q",
        "getPlaySpeed",
        "setPlaySpeed",
        "playSpeed",
        "r",
        "Z",
        "getChangeMediaItemStop",
        "()Z",
        "setChangeMediaItemStop",
        "(Z)V",
        "changeMediaItemStop",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "s",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "getOnMediaSeekChangeListener",
        "()Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onMediaSeekChangeListener",
        "t",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "statusChangedListener",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/databinding/ObservableInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroidx/databinding/ObservableInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroidx/databinding/ObservableInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Z

.field public final s:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Landroidx/databinding/ObservableInt;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_play:I

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->j:Landroidx/databinding/ObservableInt;

    new-instance p1, Landroidx/databinding/ObservableField;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->play:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->k:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableField;

    const-string v0, "00:00"

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->l:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->m:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    new-instance p1, Landroidx/databinding/ObservableInt;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->p:Landroidx/databinding/ObservableInt;

    new-instance p1, Landroidx/databinding/ObservableField;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    new-instance p1, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel$onMediaSeekChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel$onMediaSeekChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->s:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->onStart()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getMediaBundle()Lcom/onyx/android/sdk/universal/editor/MediaBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAudioDataSet()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getChangeMediaItemStop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->r:Z

    return p0
.end method

.method public final getCurrentPosition()Landroidx/databinding/ObservableInt;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->p:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public final getCurrentPotion()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->p:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0}, Landroidx/databinding/ObservableInt;->get()I

    move-result p0

    return p0
.end method

.method public final getCurrentTime()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getCurrentPotion()I

    move-result p0

    int-to-long v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()Landroidx/databinding/ObservableInt;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getOnMediaSeekChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->s:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public final getPlayIcon()Landroidx/databinding/ObservableInt;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->j:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public final getPlaySpeed()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getPlayStatus()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->k:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getPlayTime()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->l:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getPlayingTime()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->m:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final isPaused()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isPaused()Z

    move-result p0

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public final isStopped()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isStopped()Z

    move-result p0

    return p0
.end method

.method public final onMediaItemTransitionEvent(Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->r:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->r:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->pause()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateStatus()V

    :cond_0
    return-void
.end method

.method public final onPlayChangeEvent(Lcom/onyx/android/sdk/media/event/PlayChangeEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/media/event/PlayChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/event/PlayChangeEvent;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getPositionOffset(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/event/PlayChangeEvent;->getCurrentPosition()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setCurrentPosition(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateStatus()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->t:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->acceptSafety(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public final onPlayCompleteEvent(Lcom/onyx/android/sdk/media/event/PlayCompleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/event/PlayCompleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateStatus()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->t:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->acceptSafety(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setCurrentPosition(I)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->pause()V

    :cond_0
    return-void
.end method

.method public final resumePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->startPlay()V

    :goto_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->startPlay()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getIndex(J)I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getPositionOffset(I)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->seekTo(IJ)V

    return-void
.end method

.method public final seekTo(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioInfoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getIndex(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->resumePlay()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->seekToPosition(I)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel$seekTo$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel$seekTo$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    :cond_1
    return-void
.end method

.method public final seekToPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->startPlay()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->seekTo(IJ)V

    return-void
.end method

.method public final setAudioDataSet(Landroidx/databinding/ObservableField;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setChangeMediaItemStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->r:Z

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->p:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->m:Landroidx/databinding/ObservableField;

    sget-object v9, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    int-to-long v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->l:Landroidx/databinding/ObservableField;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->m:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0}, Landroidx/databinding/ObservableInt;->get()I

    move-result p0

    int-to-long v2, p0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCurrentPosition(Landroidx/databinding/ObservableInt;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->p:Landroidx/databinding/ObservableInt;

    return-void
.end method

.method public final setDuration(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final setDuration(Landroidx/databinding/ObservableInt;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->o:Landroidx/databinding/ObservableInt;

    return-void
.end method

.method public final setPlayIcon(Landroidx/databinding/ObservableInt;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->j:Landroidx/databinding/ObservableInt;

    return-void
.end method

.method public final setPlaySpeed(Landroidx/databinding/ObservableField;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setPlayStatus(Landroidx/databinding/ObservableField;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->k:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setPlayTime(Landroidx/databinding/ObservableField;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->l:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setPlaybackSpeed()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->Companion:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;->toggleSpeedType(Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;)Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->getSpeed()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->setPlaybackSpeed(Ljava/lang/Float;)V

    return-void
.end method

.method public final setPlayingTime(Landroidx/databinding/ObservableField;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->m:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setStatusChangedListener(Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->t:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method

.method public final startPlay()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioPathList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->play(Ljava/util/List;J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->q:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->getSpeed()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->setPlaybackSpeed(Ljava/lang/Float;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->d()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setCurrentPosition(I)V

    return-void
.end method

.method public final updateAudioInfo(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setDuration(J)V

    return-void
.end method

.method public final updateStatus()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->j:Landroidx/databinding/ObservableInt;

    if-eqz v0, :cond_0

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_media_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_media_play:I

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableInt;->set(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->k:Landroidx/databinding/ObservableField;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$string;->pause:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$string;->play:I

    :goto_1
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method
