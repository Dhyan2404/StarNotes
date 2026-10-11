package com.onyx.galaxy.note.editor.viewmodel;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableField;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.utils.QuotaManager;
import com.onyx.android.sdk.data.common.data.MessageTemplate;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.data.PlaySpeedType;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;
import com.onyx.galaxy.note.message.action.FetchMessageTemplateAction;
import com.onyx.galaxy.note.p048ui.dialog.QuotaNotEnoughPopup;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0081\u00012\u00020\u0001:\u0002\u0081\u0001B\u0010\u0012\u0006\u0010F\u001a\u00020B¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\fH\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\u0006\u0010\u0018\u001a\u00020\u0011J\u0006\u0010\u0019\u001a\u00020\u0011J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u001b\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0011J\u0006\u0010\u001d\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0002J\u0006\u0010\u001f\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u0011J\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u0006\u0010(\u001a\u00020'J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020'J\b\u0010+\u001a\u0004\u0018\u00010\u0014J\u0006\u0010,\u001a\u00020\u0002J\u0006\u0010-\u001a\u00020\u0002J\u0006\u0010.\u001a\u00020\u0002J\u0006\u0010/\u001a\u00020\u0002J\u0006\u00100\u001a\u00020\u0002J\u0006\u00101\u001a\u00020\u0002J\u0006\u00102\u001a\u00020\u0002J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J\u0006\u00109\u001a\u00020\u0011J\u0006\u0010:\u001a\u00020\u0011J\u0006\u0010;\u001a\u00020\u0002J\u0006\u0010<\u001a\u00020\u0002J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u000e\u0010A\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=R\u0017\u0010F\u001a\u00020B8\u0006¢\u0006\f\n\u0004\b\u0013\u0010C\u001a\u0004\bD\u0010ER\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00140G8\u0006¢\u0006\f\n\u0004\b\u0015\u0010H\u001a\u0004\bI\u0010JR\u0016\u0010M\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010LR(\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00140N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010$\u001a\u00020V8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R0\u0010a\u001a\u0010\u0012\f\u0012\n \\*\u0004\u0018\u00010\u00110\u00110G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010H\u001a\u0004\b^\u0010J\"\u0004\b_\u0010`R\"\u0010g\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\"\u0010i\u001a\u00020h8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010p\u001a\u00020o8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u0016\u0010x\u001a\u00020v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010wR\u0016\u0010z\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010|R\u0016\u0010~\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010b¨\u0006\u0082\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "m", C4921e.f26537n, "r", "q", "resumePlay", C6999h.f39688c, "updateStatus", "v", "t", "", "duration", "setDuration", "Lio/reactivex/rxjava3/core/Observable;", "s", "", C6998g.f39679a, "i", "", "j", "p", C4921e.f26528e, "isRecording", "isRunning", "getRunningTime", "isPlaying", "isPlayerOpen", "hasRecordFile", "startOrStopRecord", "toggleRecord", "stopRecord", "startRecord", "new", "setNewRecord", "expand", "collapse", "toggleExpand", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "getAudioDataSet", "audioData", "setAudioDataSet", "getRecordTitle", "togglePlayer", "onPlay", "stopPlay", "stopAll", "destroy", "startQuotaTimer", "stopQuotaTimer", "", "getTotalRecordQuota", "getConsumedRecordQuota", "getRemainRecordQuota", "getRedLineQuota", "getSingleFileLimit", "isQuotaUsedOut", "isQuotaReachRedLine", "updateQuotaBeforeRecord", "checkQuotaBeforeRecord", "Landroid/view/View;", "parentView", "showQuotaNotEnoughDialog", "showRecordAutoStopDialog", "showReachSingleLimitDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, Constants.STRING_SIG, "dialogPurpose", "Landroidx/databinding/ObservableField;", "l", "Landroidx/databinding/ObservableField;", "getTextStatus", "()Landroidx/databinding/ObservableField;", "setTextStatus", "(Landroidx/databinding/ObservableField;)V", "textStatus", "Landroidx/databinding/ObservableBoolean;", "Landroidx/databinding/ObservableBoolean;", "getExpand", "()Landroidx/databinding/ObservableBoolean;", "setExpand", "(Landroidx/databinding/ObservableBoolean;)V", "kotlin.jvm.PlatformType", GoogleApiAvailabilityLight.f29016b, "getNewRecordTip", "setNewRecordTip", "(Landroidx/lifecycle/MutableLiveData;)V", "newRecordTip", Constants.HASIDCALL_INDEX_SIG, "getResetDurationEveryRecord", Constants.BOOLEAN_VALUE_SIG, "setResetDurationEveryRecord", "(Z)V", "resetDurationEveryRecord", "Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;", "recorderViewModel", "Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;", "getRecorderViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;", "setRecorderViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;)V", "Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;", "playerViewModel", "Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;", "getPlayerViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;", "setPlayerViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;)V", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "audioDataSet", "Landroid/os/CountDownTimer;", "Landroid/os/CountDownTimer;", "countDownTimer", "useSingleLimit", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AudioViewModel extends BaseViewModel {

    @NotNull
    public static final String EVENT_LOAD_CONFIG_FAIL = "LoadConfigFail";

    @NotNull
    public static final String EVENT_QUOTA_RED_LINE = "QuotaRedLine";

    @NotNull
    public static final String EVENT_QUOTA_USED_OUT = "QuotaUsedOut";

    @NotNull
    public static final String EVENT_RECORD_AUTO_STOP = "RecordAutoStop";

    @NotNull
    public static final String EVENT_START_RECORD = "StartRecord";

    @NotNull
    public static final String PURPOSE_REACH_LIMIT_ON_STOP = "ReachLimitOnStop";

    @NotNull
    public static final String PURPOSE_RED_LINE_ON_START = "RedLineOnStart";

    @NotNull
    public static final String PURPOSE_USED_OUT_ON_START = "UsedOutOnStart";

    @NotNull
    public static final String PURPOSE_USED_OUT_ON_STOP = "UsedOutOnStop";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> event;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String dialogPurpose;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> textStatus;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ObservableBoolean expand;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Boolean> newRecordTip;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean resetDurationEveryRecord;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public AudioInfoBean audioInfoBean;
    public PlayerViewModel playerViewModel;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public AudioDataSet audioDataSet;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public CountDownTimer countDownTimer;
    public RecorderViewModel recorderViewModel;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean useSingleLimit;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12552a<T, R> implements Function {

        /* renamed from: e */
        public static final C12552a<T, R> f61074e = new C12552a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull FetchAccountQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchMessageTemplateAction().build();
        }
    }

    public AudioViewModel(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.event = new MutableLiveData<>(null);
        this.dialogPurpose = "";
        this.textStatus = new ObservableField<>(ResManager.INSTANCE.getString(C10651R.string.recording));
        this.expand = new ObservableBoolean(false);
        this.newRecordTip = new MutableLiveData<>(Boolean.FALSE);
        this.resetDurationEveryRecord = true;
        this.audioInfoBean = AudioInfoBean.INSTANCE.ensureObject(null);
        this.audioDataSet = new AudioDataSet();
        m50345m();
        m50344k();
    }

    /* renamed from: l */
    public static final void m50337l(AudioViewModel this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateStatus();
    }

    /* renamed from: n */
    public static final void m50338n(AudioViewModel this$0, String text) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(text, "text");
        this$0.updateStatus();
    }

    public static /* synthetic */ void setNewRecord$default(AudioViewModel audioViewModel, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        audioViewModel.setNewRecord(z);
    }

    /* renamed from: u */
    public static final void m50339u(AudioViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkQuotaBeforeRecord();
    }

    public final void checkQuotaBeforeRecord() {
        if (!m50340g()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.audio_record_no_quota_info, false, 2, (Object) null);
            this.event.postValue(EVENT_LOAD_CONFIG_FAIL);
        } else if (isQuotaUsedOut()) {
            this.dialogPurpose = PURPOSE_USED_OUT_ON_START;
            this.event.postValue(EVENT_QUOTA_RED_LINE);
        } else if (!isQuotaReachRedLine()) {
            this.event.postValue(EVENT_START_RECORD);
        } else {
            this.dialogPurpose = PURPOSE_RED_LINE_ON_START;
            this.event.postValue(EVENT_QUOTA_RED_LINE);
        }
    }

    public final void collapse() {
        this.expand.set(false);
    }

    public final void destroy() {
        getRecorderViewModel().destroy();
        getPlayerViewModel().destroy();
    }

    public final void expand() {
        this.expand.set(true);
    }

    /* renamed from: g */
    public final boolean m50340g() {
        try {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            onyxErrorHandler.m72248assert(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$checkDependencyData$1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(AudioViewModel.this.getTotalRecordQuota() > 0);
                }
            }, "miss record quota");
            onyxErrorHandler.m72248assert(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$checkDependencyData$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(StringKt.isNumberStr(MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_RECORD_QUOTA_RED_LINE, MessageTemplateKt.KEY_RED_LINE)));
                }
            }, "miss record quota red line");
            return true;
        } catch (Throwable th) {
            Log.e(AudioViewModel.class.getSimpleName(), "checkDependencyData", th);
            return false;
        }
    }

    @NotNull
    public final AudioDataSet getAudioDataSet() {
        return this.audioDataSet;
    }

    public final long getConsumedRecordQuota() {
        return getAudioDataSet().getDuration();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final MutableLiveData<String> getEvent() {
        return this.event;
    }

    @NotNull
    public final ObservableBoolean getExpand() {
        return this.expand;
    }

    @NotNull
    public final MutableLiveData<Boolean> getNewRecordTip() {
        return this.newRecordTip;
    }

    @NotNull
    public final PlayerViewModel getPlayerViewModel() {
        PlayerViewModel playerViewModel = this.playerViewModel;
        if (playerViewModel != null) {
            return playerViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("playerViewModel");
        return null;
    }

    @Nullable
    public final String getRecordTitle() {
        long duration = getAudioDataSet().getDuration();
        if (duration <= 0) {
            return ResManager.INSTANCE.getString(C10651R.string.record);
        }
        return ResManager.INSTANCE.getString(C10651R.string.record) + '-' + DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, duration, false, null, null, 14, null);
    }

    @NotNull
    public final RecorderViewModel getRecorderViewModel() {
        RecorderViewModel recorderViewModel = this.recorderViewModel;
        if (recorderViewModel != null) {
            return recorderViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recorderViewModel");
        return null;
    }

    public final long getRedLineQuota() {
        return DateTimeUtil.INSTANCE.minuteToMs(Long.parseLong(MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_RECORD_QUOTA_RED_LINE, MessageTemplateKt.KEY_RED_LINE)));
    }

    public final long getRemainRecordQuota() {
        return getTotalRecordQuota() - getConsumedRecordQuota();
    }

    public final boolean getResetDurationEveryRecord() {
        return this.resetDurationEveryRecord;
    }

    @Nullable
    public final String getRunningTime() {
        if (getRecorderViewModel().isRecording()) {
            return getRecorderViewModel().getTimeString();
        }
        if (getPlayerViewModel().isPlaying()) {
            return getPlayerViewModel().getCurrentTime();
        }
        return null;
    }

    public final long getSingleFileLimit() {
        return DateTimeUtil.INSTANCE.minuteToMs(ResManager.INSTANCE.getLong(C10651R.integer.record_max_single_time));
    }

    @NotNull
    public final ObservableField<String> getTextStatus() {
        return this.textStatus;
    }

    public final long getTotalRecordQuota() {
        return QuotaManager.INSTANCE.getAudioRecordQuota();
    }

    /* renamed from: h */
    public final void m50341h() {
        RxTimerUtil.INSTANCE.shortTimer(new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$delayUpdateStatus$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                AudioViewModel.this.updateStatus();
            }
        });
    }

    public final boolean hasRecordFile() {
        return this.audioDataSet.hasAudioFile();
    }

    /* renamed from: i */
    public final int m50342i() {
        String str = this.dialogPurpose;
        return Intrinsics.areEqual(str, PURPOSE_USED_OUT_ON_START) ? true : Intrinsics.areEqual(str, PURPOSE_USED_OUT_ON_STOP) ? C10651R.string.quota_audio_used_out : C10651R.string.quota_audio_used_out_soon;
    }

    public final boolean isPlayerOpen() {
        return getPlayerViewModel().isOpen();
    }

    public final boolean isPlaying() {
        return getPlayerViewModel().isPlaying();
    }

    public final boolean isQuotaReachRedLine() {
        return getRemainRecordQuota() <= getRedLineQuota();
    }

    public final boolean isQuotaUsedOut() {
        return getRemainRecordQuota() < 1000;
    }

    public final boolean isRecording() {
        return getRecorderViewModel().isRecording();
    }

    public final boolean isRunning() {
        return getRecorderViewModel().isRecording() || getPlayerViewModel().isPlaying();
    }

    /* renamed from: j */
    public final String m50343j() {
        String str = this.dialogPurpose;
        return Intrinsics.areEqual(str, PURPOSE_USED_OUT_ON_START) ? true : Intrinsics.areEqual(str, PURPOSE_USED_OUT_ON_STOP) ? MessageTemplateKt.KEY_FUNC_RECORD_QUOTA_USED_OUT : MessageTemplateKt.KEY_FUNC_RECORD_QUOTA_RED_LINE;
    }

    /* renamed from: k */
    public final void m50344k() {
        setPlayerViewModel(new PlayerViewModel(this.editorBundle));
        getPlayerViewModel().setStatusChangedListener(new Consumer() { // from class: com.sunia.HTREnginev2.qi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AudioViewModel.m50337l(AudioViewModel.this, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: m */
    public final void m50345m() {
        setRecorderViewModel(new RecorderViewModel(this.editorBundle));
        getRecorderViewModel().setTimeChangedListener(new Consumer() { // from class: com.sunia.HTREnginev2.ri
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AudioViewModel.m50338n(AudioViewModel.this, (String) obj);
            }
        });
    }

    /* renamed from: o */
    public final void m50346o() {
        MessageTemplate parentTemplate = MessageTemplateKt.getParentTemplate(m50343j());
        String str = (String) parentTemplate.get((Object) MessageTemplateKt.KEY_NAVIGATE_TYPE);
        if (str == null) {
            str = "";
        }
        StringMap stringMap = new StringMap();
        stringMap.putAll(parentTemplate);
        stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, OnyxStatisticConstant.TRIGGER_GALAXY_TOOLBAR_AUDIORECORD);
        Navigator.INSTANCE.navigate(str, stringMap, NavigationType.MEMBER_CHARGE);
    }

    public final void onPlay() {
        String text;
        Map mutableMapOf;
        if (isRecording()) {
            return;
        }
        if (!isPlaying()) {
            EditorBundle editorBundle = this.editorBundle;
            Pair[] pairArr = new Pair[1];
            PlaySpeedType playSpeedType = getPlayerViewModel().getPlaySpeed().get();
            if (playSpeedType == null || (text = playSpeedType.getText()) == null) {
                text = PlaySpeedType.ONE.getText();
            }
            pairArr[0] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_AUDIO_PLAY_SPEED, text);
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(pairArr);
            StatisticsExtKt.reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_AUDIO_PLAY, mutableMapOf);
        }
        togglePlayer();
    }

    /* renamed from: p */
    public final void m50347p() {
        if (Intrinsics.areEqual(this.dialogPurpose, PURPOSE_RED_LINE_ON_START)) {
            this.event.postValue(EVENT_START_RECORD);
        }
    }

    /* renamed from: q */
    public final void m50348q() {
        getPlayerViewModel().pause();
        updateStatus();
    }

    /* renamed from: r */
    public final void m50349r() {
        getRecorderViewModel().startRecorder(this.audioInfoBean.getAudioPath());
    }

    public final void resumePlay() {
        getPlayerViewModel().resumePlay();
        updateStatus();
    }

    /* renamed from: s */
    public final Observable<Unit> m50350s() {
        Observable flatMap = new FetchAccountQuotasAction().build().flatMap(C12552a.f61074e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void setAudioDataSet(@NotNull AudioDataSet audioData) {
        int i;
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        this.audioDataSet = audioData;
        this.audioInfoBean = AudioInfoBean.INSTANCE.ensureObject(null);
        if (hasRecordFile()) {
            i = (int) audioData.getDuration();
        } else {
            collapse();
            i = 0;
        }
        setDuration(i);
        getPlayerViewModel().updateAudioInfo(audioData);
        updateStatus();
        notifyChange();
    }

    public final void setDuration(int duration) {
        getRecorderViewModel().setDuration(duration);
        getPlayerViewModel().setDuration(duration);
    }

    public final void setExpand(@NotNull ObservableBoolean observableBoolean) {
        Intrinsics.checkNotNullParameter(observableBoolean, "<set-?>");
        this.expand = observableBoolean;
    }

    public final void setNewRecord(boolean r1) {
        this.newRecordTip.setValue(Boolean.valueOf(r1));
    }

    public final void setNewRecordTip(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.newRecordTip = mutableLiveData;
    }

    public final void setPlayerViewModel(@NotNull PlayerViewModel playerViewModel) {
        Intrinsics.checkNotNullParameter(playerViewModel, "<set-?>");
        this.playerViewModel = playerViewModel;
    }

    public final void setRecorderViewModel(@NotNull RecorderViewModel recorderViewModel) {
        Intrinsics.checkNotNullParameter(recorderViewModel, "<set-?>");
        this.recorderViewModel = recorderViewModel;
    }

    public final void setResetDurationEveryRecord(boolean z) {
        this.resetDurationEveryRecord = z;
    }

    public final void setTextStatus(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.textStatus = observableField;
    }

    public final void showQuotaNotEnoughDialog(@NotNull View parentView) {
        String replace$default;
        String replace$default2;
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        if (MessageTemplateKt.isMessageExpired(MessageTemplateKt.KEY_FUNC_RECORD_QUOTA_USED_OUT)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, m50342i(), false, 2, (Object) null);
            if (isQuotaUsedOut()) {
                return;
            }
            this.event.setValue(EVENT_START_RECORD);
            return;
        }
        long longValue = ((Number) MathUtils.INSTANCE.atLeast(Long.valueOf(getRemainRecordQuota()), 0L)).longValue();
        String m50343j = m50343j();
        String messageTemplate = MessageTemplateKt.getMessageTemplate(m50343j, "title");
        String messageTemplate2 = MessageTemplateKt.getMessageTemplate(m50343j, MessageTemplateKt.KEY_CONTENT1);
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        replace$default = StringsKt__StringsJVMKt.replace$default(messageTemplate2, "${quota}", String.valueOf((long) dateTimeUtil.msToMinute(longValue)), false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, MessageTemplateKt.PLACEHOLDER_RECORD_MAX_TIME, String.valueOf((long) dateTimeUtil.msToMinute(getTotalRecordQuota())), false, 4, (Object) null);
        String messageTemplate3 = MessageTemplateKt.getMessageTemplate(m50343j, "button1");
        String messageTemplate4 = MessageTemplateKt.getMessageTemplate(m50343j, "button2");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new QuotaNotEnoughPopup(context, messageTemplate, replace$default2, messageTemplate3, messageTemplate4).onPositive(new Function1<QuotaNotEnoughPopup, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$showQuotaNotEnoughDialog$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(QuotaNotEnoughPopup quotaNotEnoughPopup) {
                invoke2(quotaNotEnoughPopup);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull QuotaNotEnoughPopup it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AudioViewModel.this.m50346o();
            }
        }).onNegative(new Function1<QuotaNotEnoughPopup, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$showQuotaNotEnoughDialog$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(QuotaNotEnoughPopup quotaNotEnoughPopup) {
                invoke2(quotaNotEnoughPopup);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull QuotaNotEnoughPopup it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AudioViewModel.this.m50347p();
            }
        }), parentView);
    }

    public final void showReachSingleLimitDialog(@NotNull View parentView) {
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C7106R.string.tip);
        String stringSafely2 = resManager.getStringSafely(C10651R.string.record_reach_single_limit);
        String stringSafely3 = resManager.getStringSafely(C10651R.string.record_button_again);
        String stringSafely4 = resManager.getStringSafely(C10651R.string.record_button_stop);
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new QuotaNotEnoughPopup(context, stringSafely, stringSafely2, stringSafely3, stringSafely4).onPositive(new Function1<QuotaNotEnoughPopup, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$showReachSingleLimitDialog$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(QuotaNotEnoughPopup quotaNotEnoughPopup) {
                invoke2(quotaNotEnoughPopup);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull QuotaNotEnoughPopup it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.dismiss();
                AudioViewModel.this.getEvent().postValue(AudioViewModel.EVENT_START_RECORD);
            }
        }), parentView);
    }

    public final void showRecordAutoStopDialog(@NotNull View parentView) {
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        String str = this.dialogPurpose;
        if (Intrinsics.areEqual(str, PURPOSE_USED_OUT_ON_STOP)) {
            showQuotaNotEnoughDialog(parentView);
        } else if (Intrinsics.areEqual(str, PURPOSE_REACH_LIMIT_ON_STOP)) {
            showReachSingleLimitDialog(parentView);
        }
    }

    public final void startOrStopRecord() {
        if (getRecorderViewModel().isRecording()) {
            stopRecord();
        } else {
            startRecord();
        }
        updateStatus();
    }

    public final void startQuotaTimer() {
        long singleFileLimit = getSingleFileLimit();
        final long longValue = ((Number) MathUtils.INSTANCE.atMost(Long.valueOf(getRemainRecordQuota()), Long.valueOf(singleFileLimit))).longValue();
        this.useSingleLimit = singleFileLimit <= getRemainRecordQuota() && singleFileLimit != getTotalRecordQuota();
        final long j = 1000;
        this.countDownTimer = new CountDownTimer(longValue, j) { // from class: com.onyx.galaxy.note.editor.viewmodel.AudioViewModel$startQuotaTimer$1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                boolean z;
                CountDownTimer countDownTimer;
                AudioViewModel audioViewModel = this;
                z = audioViewModel.useSingleLimit;
                audioViewModel.dialogPurpose = z ? AudioViewModel.PURPOSE_REACH_LIMIT_ON_STOP : AudioViewModel.PURPOSE_USED_OUT_ON_STOP;
                countDownTimer = this.countDownTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                this.getEvent().postValue(AudioViewModel.EVENT_RECORD_AUTO_STOP);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }
        }.start();
    }

    public final void startRecord() {
        if (isRecording()) {
            return;
        }
        startQuotaTimer();
        stopPlay();
        m50349r();
        expand();
        setDuration(0);
        m50341h();
        notifyChange();
    }

    public final void stopAll() {
        stopRecord();
        stopPlay();
    }

    public final void stopPlay() {
        getPlayerViewModel().stop();
        updateStatus();
    }

    public final void stopQuotaTimer() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public final void stopRecord() {
        stopQuotaTimer();
        if (!getRecorderViewModel().isClosed()) {
            getRecorderViewModel().stop();
            getRecorderViewModel().updateAudioInfoBean(this.audioInfoBean);
            if (this.resetDurationEveryRecord) {
                getRecorderViewModel().resetDuration();
            }
        }
        if (this.audioInfoBean.getDuration() > 0) {
            this.audioDataSet.add(this.audioInfoBean);
        }
        getPlayerViewModel().updateAudioInfo(this.audioDataSet);
        this.audioInfoBean = AudioInfoBean.INSTANCE.ensureObject(null);
        this.newRecordTip.setValue(Boolean.TRUE);
        updateStatus();
        notifyChange();
    }

    /* renamed from: t */
    public final void m50351t() {
        getPlayerViewModel().updateStatus();
    }

    public final void toggleExpand() {
        if (this.expand.get()) {
            collapse();
        } else {
            expand();
        }
    }

    public final void togglePlayer() {
        getPlayerViewModel().setChangeMediaItemStop(false);
        if (getPlayerViewModel().isPlaying()) {
            getPlayerViewModel().pause();
        } else if (getPlayerViewModel().isPaused()) {
            getPlayerViewModel().resumePlay();
        } else {
            getPlayerViewModel().startPlay();
        }
        updateStatus();
    }

    public final void toggleRecord() {
        if (getRecorderViewModel().isPlaying()) {
            getRecorderViewModel().pause();
        } else if (getRecorderViewModel().isPaused()) {
            getRecorderViewModel().resume();
        } else {
            startRecord();
        }
        updateStatus();
    }

    public final void updateQuotaBeforeRecord() {
        if (m50340g()) {
            OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, m50350s(), null, null, 3, null);
            checkQuotaBeforeRecord();
            return;
        }
        long j = ResManager.INSTANCE.getLong(C10651R.integer.record_quota_query_timeout);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Unit> doFinally = m50350s().timeout(j, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AudioViewModel.m50339u(AudioViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    public final void updateStatus() {
        m50352v();
        m50351t();
        notifyChange();
    }

    /* renamed from: v */
    public final void m50352v() {
        if (isRecording()) {
            this.textStatus.set(ResManager.INSTANCE.getString(getRecorderViewModel().isPlaying() ? C10651R.string.recording : C10651R.string.pause_recording));
        } else if (hasRecordFile()) {
            this.textStatus.set(getRecordTitle());
        }
    }
}
