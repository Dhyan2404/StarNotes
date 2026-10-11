.class public final Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;,
        Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 h2\u00020\u0001:\u0001hB\u0007\u00a2\u0006\u0004\u0008g\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0004J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u001aJ\u000f\u0010%\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010\'\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008&\u0010$J\u0006\u0010)\u001a\u00020(J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020\u001aJ\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aJ\u000f\u00102\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u00081\u0010$J\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001aJ\u000f\u00106\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u00085\u0010$J\u000f\u00108\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u00087\u0010$J\u000f\u0010:\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u00089\u0010$J\u000f\u0010<\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008;\u0010$J\u000f\u0010>\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008=\u0010$R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010IR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010NR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010PR\"\u0010X\u001a\u00020R8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\"\u0010_\u001a\u00020Y8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\"\u0010f\u001a\u00020`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010e\u00a8\u0006i"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;",
        "",
        "Lcom/onyx/android/sdk/media/config/RecordingConfig;",
        "config",
        "",
        "k",
        "o",
        "j",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
        "e",
        "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
        "state",
        "f",
        "c",
        "",
        "bytes",
        "m",
        "l",
        "p",
        "n",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "h",
        "",
        "g",
        "r",
        "",
        "acceptAudioData",
        "setAcceptAudioData",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "startRecording",
        "pauseRecording",
        "resumeRecording",
        "stopRecording",
        "cancelTimer$sdk_media_release",
        "()V",
        "cancelTimer",
        "startTimer$sdk_media_release",
        "startTimer",
        "",
        "getRecordDuration",
        "",
        "getRecordFilePath",
        "isOpen",
        "isClosed",
        "isPlaying",
        "isPaused",
        "isStopped",
        "postRecordChangeEvent$sdk_media_release",
        "postRecordChangeEvent",
        "postDurationEvent",
        "setPostDurationEvent",
        "acquireWakeLock$sdk_media_release",
        "acquireWakeLock",
        "releaseWakeLock$sdk_media_release",
        "releaseWakeLock",
        "switchToRecordingState$sdk_media_release",
        "switchToRecordingState",
        "switchToPauseState$sdk_media_release",
        "switchToPauseState",
        "switchToStopState$sdk_media_release",
        "switchToStopState",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "a",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "wakeLockHolder",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "b",
        "Lkotlin/Lazy;",
        "i",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "recordingScheduler",
        "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "d",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "stateSubject",
        "Lcom/onyx/android/sdk/media/config/RecordingConfig;",
        "recordingConfig",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "recordChangeObserver",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecorder;",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecorder;",
        "getAudioRecord$sdk_media_release",
        "()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;",
        "setAudioRecord$sdk_media_release",
        "(Lcom/onyx/android/sdk/media/recorder/AudioRecorder;)V",
        "audioRecord",
        "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "getAudioEncoder$sdk_media_release",
        "()Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "setAudioEncoder$sdk_media_release",
        "(Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;)V",
        "audioEncoder",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
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
.field public static final Companion:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:F = 32768.0f

.field public static final k:J = 0x64L

.field public static final l:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/media/config/RecordingConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->Companion:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->l:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

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

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->a:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    sget-object v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$recordingScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$recordingScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    new-instance v0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    invoke-direct {v0, v3, v2, v3}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method

.method public static final synthetic access$createAudioStream(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createAudioStreamByState(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOurInstance$cp()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->l:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    return-object v0
.end method

.method public static final synthetic access$initializeRecording(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->k(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    return-void
.end method

.method public static final synthetic access$processAudioChunk(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;[B)Lcom/onyx/android/sdk/media/bean/AudioDataBean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->m([B)Lcom/onyx/android/sdk/media/bean/AudioDataBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->q(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "activeRecordingStream finished"

    invoke-virtual {v0, p0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->l()V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock$sdk_media_release()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->a:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$a;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$c;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ci;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ci;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final cancelTimer$sdk_media_release()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final e()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$d;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->switchMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "switchMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "empty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->getMaxAmplitude()I

    move-result p0

    return p0
.end method

.method public final getAudioEncoder$sdk_media_release()Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    return-object p0
.end method

.method public final getAudioRecord$sdk_media_release()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getRecordDuration()J
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->getRecordDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRecordFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFilePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final i()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final isClosed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final isPaused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/media/bean/AudioStatus;->STATUS_PAUSE:Lcom/onyx/android/sdk/media/bean/AudioStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/media/bean/AudioStatus;->STATUS_PLAYING:Lcom/onyx/android/sdk/media/bean/AudioStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStopped()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/media/bean/AudioStatus;->STATUS_STOP:Lcom/onyx/android/sdk/media/bean/AudioStatus;

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

.method public final j(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFormatConfig()Lcom/onyx/android/sdk/media/config/FormatConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getEncoderByMine(Lcom/onyx/android/sdk/media/config/FormatConfig;)Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->init(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->o(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFormatConfig()Lcom/onyx/android/sdk/media/config/FormatConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->createAudioRecord(Lcom/onyx/android/sdk/media/config/FormatConfig;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->j(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->start(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method

.method public final l()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish recording, duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->n()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->releaseWakeLock$sdk_media_release()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->p()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->postRecordChangeEvent$sdk_media_release()V

    return-void
.end method

.method public final m([B)Lcom/onyx/android/sdk/media/bean/AudioDataBean;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->encode([B)Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getAcceptAudioData()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-array p1, v0, [B

    :goto_1
    new-instance p0, Lcom/onyx/android/sdk/media/bean/AudioDataBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/android/sdk/media/bean/AudioDataBean;-><init>([BJ)V

    return-object p0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->releaseRecord()V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    invoke-interface {v0}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->flush()V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->stop()V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    iget-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->setAcceptAudioData(Z)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->switchToStopState$sdk_media_release()V

    return-void
.end method

.method public final pauseRecording()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->pause(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method

.method public final postRecordChangeEvent$sdk_media_release()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getPostDurationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x47000000    # 32768.0f

    div-float/2addr v0, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxAmplitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", recordDuration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v2, Lcom/onyx/android/sdk/media/event/RecordChangeEvent;

    iget-object v3, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getRecordId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v4

    long-to-int p0, v4

    invoke-direct {v2, v3, v0, p0}, Lcom/onyx/android/sdk/media/event/RecordChangeEvent;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)V
    .locals 4

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v0, Lcom/onyx/android/sdk/media/event/PlayStatusChangeEvent;

    invoke-interface {p1}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/media/event/PlayStatusChangeEvent;-><init>(Lcom/onyx/android/sdk/media/bean/AudioStatus;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final releaseWakeLock$sdk_media_release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->a:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->releaseWakeLock()V

    return-void
.end method

.method public final resumeRecording()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->resume(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method

.method public final setAcceptAudioData(Z)Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->setAcceptAudioData(Z)V

    :goto_0
    return-object p0
.end method

.method public final setAudioEncoder$sdk_media_release(Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h:Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    return-void
.end method

.method public final setAudioRecord$sdk_media_release(Lcom/onyx/android/sdk/media/recorder/AudioRecorder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecorder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->g:Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->i:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public final setPostDurationEvent(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->e:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->setPostDurationEvent(Z)V

    :goto_0
    return-void
.end method

.method public final startRecording(Lcom/onyx/android/sdk/media/config/RecordingConfig;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/media/config/RecordingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/media/config/RecordingConfig;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$f;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/di;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/di;-><init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final startTimer$sdk_media_release()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->f:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x64

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JJLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final stopRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c:Lcom/onyx/android/sdk/media/recorder/state/RecorderState;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState;->stop(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final switchToPauseState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/state/RecorderPausedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderPausedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->r(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)V

    return-void
.end method

.method public final switchToRecordingState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/state/RecorderRecordingState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderRecordingState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->r(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)V

    return-void
.end method

.method public final switchToStopState$sdk_media_release()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->r(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->d:Lio/reactivex/rxjava3/subjects/Subject;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_0
    return-void
.end method
