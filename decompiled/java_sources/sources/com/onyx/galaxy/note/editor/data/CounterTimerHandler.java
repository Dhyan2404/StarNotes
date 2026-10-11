package com.onyx.galaxy.note.editor.data;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.counter.StopCounterAction;
import com.onyx.galaxy.note.editor.event.CounterSegmentDoneEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 '2\u00020\u0001:\u0002'(B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;", "", "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "registerListener", "unregisterListener", "startTimer", "cancelTimer", "", "currentTime", "c", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "b", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "Ljava/util/List;", "listenerList", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "timerDisposable", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "d", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "getCounterBundle", "()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "setCounterBundle", "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V", "counterBundle", "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "e", "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "entryState", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "Companion", "CounterListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterTimerHandler {
    public static final long COUNT_INTERVAL_MILLIS = 100;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f */
    public static final long f58496f = TimeUnit.HOURS.toMillis(24);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<CounterListener> listenerList;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Disposable timerDisposable;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public CounterBundle counterBundle;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterEntryState entryState;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;", "", "()V", "COUNT_INTERVAL_MILLIS", "", "MAX_COUNT_UP_DURATION_MS", "getMAX_COUNT_UP_DURATION_MS", "()J", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getMAX_COUNT_UP_DURATION_MS() {
            return CounterTimerHandler.f58496f;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;", "", "onTick", "", NotificationCompat.CarExtender.f4980p, "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface CounterListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onTick(@NotNull CounterListener counterListener, long j) {
            }
        }

        void onTick(long timestamp);
    }

    /* renamed from: com.onyx.galaxy.note.editor.data.CounterTimerHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12009a<T> implements Consumer {
        public C12009a() {
        }

        /* renamed from: a */
        public final void m46001a(long j) {
            CounterTimerHandler.this.m46000c(System.currentTimeMillis());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46001a(((Number) obj).longValue());
        }
    }

    public CounterTimerHandler(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        this.listenerList = new ArrayList();
        this.entryState = counterEntry.getEntryState();
    }

    /* renamed from: a */
    public final void m45998a(CounterTaskModel taskModel) {
        if (this.entryState.totalTime() >= taskModel.getDuration()) {
            cancelTimer();
            CounterBundle counterBundle = this.counterBundle;
            if (counterBundle != null) {
                RxBaseAction.execute$default(new StopCounterAction(counterBundle, this.counterEntry, false, false, 12, null), null, null, null, 7, null);
                return;
            }
            return;
        }
        CounterTaskModel.CountTimeSetting currentTimeSetting = this.counterEntry.getCurrentTimeSetting();
        if (currentTimeSetting == null || this.entryState.segmentTotalTime() < currentTimeSetting.getDuration()) {
            return;
        }
        CounterBundle counterBundle2 = this.counterBundle;
        if (counterBundle2 != null) {
            counterBundle2.postEvent(new CounterSegmentDoneEvent(this.counterEntry));
        }
        this.entryState.segment();
    }

    /* renamed from: b */
    public final void m45999b(CounterTaskModel taskModel) {
        if (this.entryState.totalTime() >= f58496f) {
            ToastUtils.INSTANCE.show(C10651R.string.counter_count_up_reach_max, true);
            cancelTimer();
            CounterBundle counterBundle = this.counterBundle;
            if (counterBundle != null) {
                RxBaseAction.execute$default(new StopCounterAction(counterBundle, this.counterEntry, false, false, 12, null), null, null, null, 7, null);
            }
        }
    }

    /* renamed from: c */
    public final void m46000c(long currentTime) {
        CounterTaskModel taskModel = this.counterEntry.getTaskModel();
        if (!this.listenerList.isEmpty()) {
            Iterator<CounterListener> it2 = this.listenerList.iterator();
            while (it2.hasNext()) {
                it2.next().onTick(currentTime);
            }
        }
        if (this.counterEntry.isCountUp()) {
            m45999b(taskModel);
        } else {
            m45998a(taskModel);
        }
    }

    public final void cancelTimer() {
        Disposable disposable;
        if (!RxjavaKt.isDisposed(this.timerDisposable) && (disposable = this.timerDisposable) != null) {
            disposable.dispose();
        }
        this.timerDisposable = null;
    }

    @Nullable
    public final CounterBundle getCounterBundle() {
        return this.counterBundle;
    }

    public final void registerListener(@NotNull CounterListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listenerList.add(listener);
    }

    public final void setCounterBundle(@Nullable CounterBundle counterBundle) {
        this.counterBundle = counterBundle;
    }

    public final void startTimer() {
        this.timerDisposable = Flowable.interval(0L, 100L, TimeUnit.MILLISECONDS).onBackpressureLatest().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12009a()).subscribe();
    }

    public final void unregisterListener(@NotNull CounterListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listenerList.remove(listener);
    }
}
