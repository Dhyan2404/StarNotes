.class public final Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000bH\u0014J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000b2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "acceptAudioData",
        "setAcceptAudioData",
        "",
        "audioFilePath",
        "setAudioFilePath",
        "appendMode",
        "setAppendMode",
        "getAudioFilePath",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "path",
        "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
        "p",
        "Lcom/onyx/android/sdk/universal/editor/MediaBundle;",
        "l",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "m",
        "",
        "o",
        "h",
        "Ljava/lang/String;",
        "i",
        "Z",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
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
.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final synthetic access$prepare(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareCreateAudioShape(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->o()V

    return-void
.end method

.method public static final synthetic access$startRecorder(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAudioFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/universal/editor/MediaBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getMediaBundle()Lcom/onyx/android/sdk/universal/editor/MediaBundle;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/note/NoteBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->m()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->getRecordOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;->ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setAudioPath(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setCreationTime(J)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Z)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/onyx/android/sdk/media/config/RecordingConfig;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->getRecordIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/onyx/android/sdk/media/config/FormatConfig;->Companion:Lcom/onyx/android/sdk/media/config/FormatConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig$Companion;->defaultAudioConfig()Lcom/onyx/android/sdk/media/config/FormatConfig;

    move-result-object v2

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->i:Z

    iget-boolean v5, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->j:Z

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/media/config/RecordingConfig;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/media/config/FormatConfig;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->l()Lcom/onyx/android/sdk/universal/editor/MediaBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->startRecording(Lcom/onyx/android/sdk/media/config/RecordingConfig;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnSubscribe(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAcceptAudioData(Z)Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->i:Z

    return-object p0
.end method

.method public final setAppendMode(Z)Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->j:Z

    return-object p0
.end method

.method public final setAudioFilePath(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;->h:Ljava/lang/String;

    return-object p0
.end method
