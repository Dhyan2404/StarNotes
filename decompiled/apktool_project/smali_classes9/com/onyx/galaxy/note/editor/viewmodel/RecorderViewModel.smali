.class public final Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00102\u001a\u00020-\u00a2\u0006\u0004\u0008H\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0014\u0010\u0010\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000eJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0007J\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0010\u0010 \u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0015J\u0006\u0010#\u001a\u00020\u0015J\u0006\u0010$\u001a\u00020\u0015J\u0006\u0010%\u001a\u00020\u0015J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010\'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u0004J\u0010\u0010*\u001a\u00020\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u0006J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004R\u0017\u00102\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\"\u0010\u000c\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u0008\u0012\u00106\"\u0004\u0008\u0011\u00107R0\u0010@\u001a\u0010\u0012\u000c\u0012\n 9*\u0004\u0018\u00010\u00060\u0006088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010D\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u00105\u001a\u0004\u0008B\u00106\"\u0004\u0008C\u00107R\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010F\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "value",
        "",
        "f",
        "",
        "text",
        "g",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;",
        "d",
        "id",
        "duration",
        "e",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "listener",
        "setTimeChangedListener",
        "setDuration",
        "getDuration",
        "resetDuration",
        "getTimeString",
        "",
        "accept",
        "setAcceptAudioData",
        "Lcom/onyx/android/sdk/media/event/RecordChangeEvent;",
        "event",
        "onRecordChangeEvent",
        "getRecordFilePath",
        "",
        "getRecordDuration",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "updateAudioInfoBean",
        "isClosed",
        "isRecording",
        "isStopped",
        "isPlaying",
        "isPaused",
        "pause",
        "resume",
        "stop",
        "audioPath",
        "startRecorder",
        "onStart",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroidx/databinding/ObservableInt;",
        "j",
        "Landroidx/databinding/ObservableInt;",
        "()Landroidx/databinding/ObservableInt;",
        "(Landroidx/databinding/ObservableInt;)V",
        "Landroidx/databinding/ObservableField;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/databinding/ObservableField;",
        "getTime",
        "()Landroidx/databinding/ObservableField;",
        "setTime",
        "(Landroidx/databinding/ObservableField;)V",
        "time",
        "l",
        "getRecordIcon",
        "setRecordIcon",
        "recordIcon",
        "m",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "timeChangedListener",
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

.field public l:Landroidx/databinding/ObservableInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    new-instance p1, Landroidx/databinding/ObservableField;

    const-string v0, "00:00"

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableInt;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_note_recording_circle:I

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->onStart()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getMediaBundle()Lcom/onyx/android/sdk/universal/editor/MediaBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;I)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v0, "record_id"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->msToSecLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "record_times"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {p1, p2}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "click_galaxy_audioRecord_0002"

    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final f(I)V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    int-to-long v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->m:Lio/reactivex/rxjava3/functions/Consumer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->acceptSafety(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final getDuration()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0}, Landroidx/databinding/ObservableInt;->get()I

    move-result p0

    return p0
.end method

.method public final getDuration()Landroidx/databinding/ObservableInt;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getRecordDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRecordFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecordIcon()Landroidx/databinding/ObservableInt;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public final getTime()Landroidx/databinding/ObservableField;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getTimeString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final isClosed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isClosed()Z

    move-result p0

    return p0
.end method

.method public final isPaused()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isPaused()Z

    move-result p0

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public final isRecording()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPaused()Z

    move-result p0

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

.method public final isStopped()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isStopped()Z

    move-result p0

    return p0
.end method

.method public final onRecordChangeEvent(Lcom/onyx/android/sdk/media/event/RecordChangeEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/media/event/RecordChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/event/RecordChangeEvent;->getDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_media_pause:I

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->f(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/event/RecordChangeEvent;->getRecordId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->e(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_media_start:I

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->record:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->g(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->setDuration(I)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->pauseRecording()V

    return-void
.end method

.method public final resetDuration()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public final resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->resumeRecording()V

    return-void
.end method

.method public final setAcceptAudioData(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->setAcceptAudioData(Z)Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    return-void
.end method

.method public final setDuration(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->f(I)V

    if-lez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_media_start:I

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_0
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
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->j:Landroidx/databinding/ObservableInt;

    return-void
.end method

.method public final setRecordIcon(Landroidx/databinding/ObservableInt;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->l:Landroidx/databinding/ObservableInt;

    return-void
.end method

.method public final setTime(Landroidx/databinding/ObservableField;)V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->k:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final setTimeChangedListener(Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->m:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method

.method public final startRecorder(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/galaxy/note/editor/service/RecordService;->Companion:Lcom/onyx/galaxy/note/editor/service/RecordService$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/service/RecordService$Companion;->startService(Landroid/content/Context;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->setAudioFilePath(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->d()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->stopRecording()Z

    sget-object p0, Lcom/onyx/galaxy/note/editor/service/RecordService;->Companion:Lcom/onyx/galaxy/note/editor/service/RecordService$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/service/RecordService$Companion;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method public final updateAudioInfoBean(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->getRecordFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setAudioPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->getRecordDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setCreationTime(J)V

    :cond_0
    return-void
.end method
