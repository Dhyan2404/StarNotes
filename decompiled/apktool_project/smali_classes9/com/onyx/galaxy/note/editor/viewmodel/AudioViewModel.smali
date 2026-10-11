.class public final Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u0081\u00012\u00020\u0001:\u0002\u0081\u0001B\u0010\u0012\u0006\u0010F\u001a\u00020B\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u000cH\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0006\u0010\u0018\u001a\u00020\u0011J\u0006\u0010\u0019\u001a\u00020\u0011J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u001b\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0011J\u0006\u0010\u001d\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0002J\u0006\u0010\u001f\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u0011J\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u0006\u0010(\u001a\u00020\'J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\'J\u0008\u0010+\u001a\u0004\u0018\u00010\u0014J\u0006\u0010,\u001a\u00020\u0002J\u0006\u0010-\u001a\u00020\u0002J\u0006\u0010.\u001a\u00020\u0002J\u0006\u0010/\u001a\u00020\u0002J\u0006\u00100\u001a\u00020\u0002J\u0006\u00101\u001a\u00020\u0002J\u0006\u00102\u001a\u00020\u0002J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J\u0006\u00109\u001a\u00020\u0011J\u0006\u0010:\u001a\u00020\u0011J\u0006\u0010;\u001a\u00020\u0002J\u0006\u0010<\u001a\u00020\u0002J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u000e\u0010A\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=R\u0017\u0010F\u001a\u00020B8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010C\u001a\u0004\u0008D\u0010ER\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00140G8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010H\u001a\u0004\u0008I\u0010JR\u0016\u0010M\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010LR(\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00140N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010$\u001a\u00020V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R0\u0010a\u001a\u0010\u0012\u000c\u0012\n \\*\u0004\u0018\u00010\u00110\u00110G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010H\u001a\u0004\u0008^\u0010J\"\u0004\u0008_\u0010`R\"\u0010g\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\"\u0010i\u001a\u00020h8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\"\u0010p\u001a\u00020o8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u0016\u0010x\u001a\u00020v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010wR\u0016\u0010z\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010|R\u0016\u0010~\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010b\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "m",
        "k",
        "r",
        "q",
        "resumePlay",
        "h",
        "updateStatus",
        "v",
        "t",
        "",
        "duration",
        "setDuration",
        "Lio/reactivex/rxjava3/core/Observable;",
        "s",
        "",
        "g",
        "i",
        "",
        "j",
        "p",
        "o",
        "isRecording",
        "isRunning",
        "getRunningTime",
        "isPlaying",
        "isPlayerOpen",
        "hasRecordFile",
        "startOrStopRecord",
        "toggleRecord",
        "stopRecord",
        "startRecord",
        "new",
        "setNewRecord",
        "expand",
        "collapse",
        "toggleExpand",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "getAudioDataSet",
        "audioData",
        "setAudioDataSet",
        "getRecordTitle",
        "togglePlayer",
        "onPlay",
        "stopPlay",
        "stopAll",
        "destroy",
        "startQuotaTimer",
        "stopQuotaTimer",
        "",
        "getTotalRecordQuota",
        "getConsumedRecordQuota",
        "getRemainRecordQuota",
        "getRedLineQuota",
        "getSingleFileLimit",
        "isQuotaUsedOut",
        "isQuotaReachRedLine",
        "updateQuotaBeforeRecord",
        "checkQuotaBeforeRecord",
        "Landroid/view/View;",
        "parentView",
        "showQuotaNotEnoughDialog",
        "showRecordAutoStopDialog",
        "showReachSingleLimitDialog",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "event",
        "Ljava/lang/String;",
        "dialogPurpose",
        "Landroidx/databinding/ObservableField;",
        "l",
        "Landroidx/databinding/ObservableField;",
        "getTextStatus",
        "()Landroidx/databinding/ObservableField;",
        "setTextStatus",
        "(Landroidx/databinding/ObservableField;)V",
        "textStatus",
        "Landroidx/databinding/ObservableBoolean;",
        "Landroidx/databinding/ObservableBoolean;",
        "getExpand",
        "()Landroidx/databinding/ObservableBoolean;",
        "setExpand",
        "(Landroidx/databinding/ObservableBoolean;)V",
        "kotlin.jvm.PlatformType",
        "n",
        "getNewRecordTip",
        "setNewRecordTip",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "newRecordTip",
        "Z",
        "getResetDurationEveryRecord",
        "()Z",
        "setResetDurationEveryRecord",
        "(Z)V",
        "resetDurationEveryRecord",
        "Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;",
        "recorderViewModel",
        "Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;",
        "getRecorderViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;",
        "setRecorderViewModel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;)V",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;",
        "playerViewModel",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;",
        "getPlayerViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;",
        "setPlayerViewModel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "audioDataSet",
        "Landroid/os/CountDownTimer;",
        "Landroid/os/CountDownTimer;",
        "countDownTimer",
        "useSingleLimit",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_LOAD_CONFIG_FAIL:Ljava/lang/String; = "LoadConfigFail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_QUOTA_RED_LINE:Ljava/lang/String; = "QuotaRedLine"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_QUOTA_USED_OUT:Ljava/lang/String; = "QuotaUsedOut"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_RECORD_AUTO_STOP:Ljava/lang/String; = "RecordAutoStop"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_START_RECORD:Ljava/lang/String; = "StartRecord"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_REACH_LIMIT_ON_STOP:Ljava/lang/String; = "ReachLimitOnStop"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_RED_LINE_ON_START:Ljava/lang/String; = "RedLineOnStart"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_USED_OUT_ON_START:Ljava/lang/String; = "UsedOutOnStart"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_USED_OUT_ON_STOP:Ljava/lang/String; = "UsedOutOnStop"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
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

.field public m:Landroidx/databinding/ObservableBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public playerViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

.field public q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public recorderViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->Companion:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    new-instance p1, Landroidx/databinding/ObservableField;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->recording:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l:Landroidx/databinding/ObservableField;

    new-instance p1, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->o:Z

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;->ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k()V

    return-void
.end method

.method public static final synthetic access$getCountDownTimer$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->r:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getUseSingleLimit$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->s:Z

    return p0
.end method

.method public static final synthetic access$navigate(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->o()V

    return-void
.end method

.method public static final synthetic access$onContinue(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p()V

    return-void
.end method

.method public static final synthetic access$setDialogPurpose$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateStatus(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->u(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public static synthetic setNewRecord$default(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setNewRecord(Z)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->checkQuotaBeforeRecord()V

    return-void
.end method


# virtual methods
.method public final checkQuotaBeforeRecord()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->audio_record_no_quota_info:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "LoadConfigFail"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isQuotaUsedOut()Z

    move-result v0

    const-string v1, "QuotaRedLine"

    if-eqz v0, :cond_1

    const-string v0, "UsedOutOnStart"

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isQuotaReachRedLine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RedLineOnStart"

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "StartRecord"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final collapse()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->destroy()V

    return-void
.end method

.method public final expand()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final g()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$checkDependencyData$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$checkDependencyData$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    const-string p0, "miss record quota"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->assert(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$checkDependencyData$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$checkDependencyData$2;

    const-string v1, "miss record quota red line"

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->assert(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-class v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkDependencyData"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    return-object p0
.end method

.method public final getConsumedRecordQuota()J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getExpand()Landroidx/databinding/ObservableBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method public final getNewRecordTip()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->playerViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "playerViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecordTitle()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->record:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->record:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->recorderViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "recorderViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRedLineQuota()J
    .locals 3

    const-string p0, "joinVipWithRecordQuotaRedLine"

    const-string v0, "redLine"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->minuteToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRemainRecordQuota()J
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getTotalRecordQuota()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getConsumedRecordQuota()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getResetDurationEveryRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->o:Z

    return p0
.end method

.method public final getRunningTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->getTimeString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSingleFileLimit()J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->record_max_single_time:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->minuteToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTextStatus()Landroidx/databinding/ObservableField;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getTotalRecordQuota()J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->INSTANCE:Lcom/onyx/android/sdk/data/account/utils/QuotaManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->getAudioRecordQuota()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final hasRecordFile()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->hasAudioFile()Z

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    const-string v0, "UsedOutOnStart"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "UsedOutOnStop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$string;->quota_audio_used_out:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$string;->quota_audio_used_out_soon:I

    :goto_1
    return p0
.end method

.method public final isPlayerOpen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public final isQuotaReachRedLine()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRemainRecordQuota()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRedLineQuota()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isQuotaUsedOut()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRemainRecordQuota()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecording()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isRecording()Z

    move-result p0

    return p0
.end method

.method public final isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

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

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    const-string v0, "UsedOutOnStart"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "UsedOutOnStop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "joinVipWithRecordQuotaUsedOut"

    goto :goto_1

    :cond_1
    const-string p0, "joinVipWithRecordQuotaRedLine"

    :goto_1
    return-object p0
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setPlayerViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/qi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qi;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setStatusChangedListener(Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setRecorderViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ri;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ri;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->setTimeChangedListener(Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getParentTemplate(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/MessageTemplate;

    move-result-object p0

    const-string v0, "navType1"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplate;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    const-string p0, "statisticType"

    const-string v2, "galaxy_toolbar_audioRecord"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const-string v2, "MemberCharge"

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;)V

    return-void
.end method

.method public final onPlay()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getPlaySpeed()Landroidx/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "record_speed"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "click_galaxy_audioRecord_0004"

    invoke-static {v0, v2, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->togglePlayer()V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    const-string v1, "RedLineOnStart"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "StartRecord"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->pause()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final r()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->startRecorder(Ljava/lang/String;)V

    return-void
.end method

.method public final resumePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->resumePlay()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$a;->e:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAudioDataSet(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;->ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->hasRecordFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->collapse()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setDuration(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateAudioInfo(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final setDuration(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->setDuration(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setDuration(J)V

    return-void
.end method

.method public final setExpand(Landroidx/databinding/ObservableBoolean;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method public final setNewRecord(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setNewRecordTip(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPlayerViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->playerViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    return-void
.end method

.method public final setRecorderViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->recorderViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    return-void
.end method

.method public final setResetDurationEveryRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->o:Z

    return-void
.end method

.method public final setTextStatus(Landroidx/databinding/ObservableField;)V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public final showQuotaNotEnoughDialog(Landroid/view/View;)V
    .locals 21
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "joinVipWithRecordQuotaUsedOut"

    invoke-static {v2}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->isMessageExpired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->i()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isQuotaUsedOut()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "StartRecord"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRemainRecordQuota()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "content1"

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${quota}"

    sget-object v5, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->msToMinute(J)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "${maxQuota}"

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getTotalRecordQuota()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->msToMinute(J)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "button1"

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "button2"

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v3, "getContext(...)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showQuotaNotEnoughDialog$1;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showQuotaNotEnoughDialog$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;->onPositive(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showQuotaNotEnoughDialog$2;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showQuotaNotEnoughDialog$2;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;->onNegative(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final showReachSingleLimitDialog(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/base/R$string;->tip:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/onyx/galaxy/note/R$string;->record_reach_single_limit:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/onyx/galaxy/note/R$string;->record_button_again:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/onyx/galaxy/note/R$string;->record_button_stop:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "getContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showReachSingleLimitDialog$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$showReachSingleLimitDialog$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;->onPositive(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final showRecordAutoStopDialog(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->k:Ljava/lang/String;

    const-string v1, "UsedOutOnStop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->showQuotaNotEnoughDialog(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v1, "ReachLimitOnStop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->showReachSingleLimitDialog(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startOrStopRecord()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopRecord()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->startRecord()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final startQuotaTimer()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getSingleFileLimit()J

    move-result-wide v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRemainRecordQuota()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRemainRecordQuota()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getTotalRecordQuota()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->s:Z

    const-wide/16 v6, 0x3e8

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;-><init>(JJLcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->r:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final startRecord()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->startQuotaTimer()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopPlay()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->expand()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setDuration(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->h()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final stopAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopRecord()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopPlay()V

    return-void
.end method

.method public final stopPlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->stop()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final stopQuotaTimer()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->r:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final stopRecord()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopQuotaTimer()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->stop()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->updateAudioInfoBean(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->resetDuration()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->add(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->q:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateAudioInfo(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;->ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->p:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->updateStatus()V

    return-void
.end method

.method public final toggleExpand()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->m:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->collapse()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->expand()V

    :goto_0
    return-void
.end method

.method public final togglePlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setChangeMediaItemStop(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->resumePlay()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->startPlay()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final toggleRecord()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->resume()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->startRecord()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateStatus()V

    return-void
.end method

.method public final updateQuotaBeforeRecord()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->checkQuotaBeforeRecord()V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->record_quota_query_timeout:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lio/reactivex/rxjava3/core/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pi;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doFinally(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateStatus()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->v()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->t()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l:Landroidx/databinding/ObservableField;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->recording:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$string;->pause_recording:I

    :goto_0
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->hasRecordFile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->l:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecordTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
