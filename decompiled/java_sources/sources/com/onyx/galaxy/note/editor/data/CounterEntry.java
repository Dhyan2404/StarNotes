package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.replicator.counter.data.CounterRecordState;
import com.onyx.android.sdk.replicator.counter.data.CounterState;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0018¢\u0006\u0004\b0\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\b\u0010\u0017\u001a\u00020\nH\u0002R\u0017\u0010\u001c\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001b\u0010/\u001a\u00020+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u001f\u001a\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "", "", "isRunning", "isCounting", "isStop", "isCountUp", "isMultipleCountDown", "hasCountResult", "hasStart", "", Constants.CLEAR_ATTRIBUTES, gon.f71290o0, "pause", "resume", Constants.RESET, "segment", "stop", "", "getCountPercent", "getCurrentCountPercent", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "getCurrentTimeSetting", "a", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "getTaskModel", "()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "b", "Lkotlin/Lazy;", "getEntryState", "()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "entryState", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "c", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "getEntryRecord", "()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "setEntryRecord", "(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V", "entryRecord", "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;", "d", "getTimerHandler", "()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;", "timerHandler", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterEntry {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterTaskModel taskModel;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy entryState;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public CounterRecordModel entryRecord;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy timerHandler;

    public CounterEntry(@NotNull CounterTaskModel taskModel) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(taskModel, "taskModel");
        this.taskModel = taskModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CounterEntryState>() { // from class: com.onyx.galaxy.note.editor.data.CounterEntry$entryState$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CounterEntryState invoke() {
                return new CounterEntryState(CounterEntry.this);
            }
        });
        this.entryState = lazy;
        this.entryRecord = CounterRecordModel.INSTANCE.createFromTaskModel(taskModel);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CounterTimerHandler>() { // from class: com.onyx.galaxy.note.editor.data.CounterEntry$timerHandler$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CounterTimerHandler invoke() {
                return new CounterTimerHandler(CounterEntry.this);
            }
        });
        this.timerHandler = lazy2;
        this.entryRecord.setTitle(CounterUtils.INSTANCE.getFormatedTaskName(taskModel));
        getEntryState().reset();
    }

    /* renamed from: a */
    public final void m45994a() {
        long coerceAtMost;
        long coerceAtMost2;
        if (isCountUp()) {
            CounterRecordModel counterRecordModel = this.entryRecord;
            coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(getEntryState().segmentTotalTime(), CounterTimerHandler.INSTANCE.getMAX_COUNT_UP_DURATION_MS() - this.entryRecord.getDuration());
            counterRecordModel.addRecord(new CounterRecordModel.TimeRecord(null, coerceAtMost2, 1, null));
        } else {
            CounterRecordModel counterRecordModel2 = this.entryRecord;
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(getEntryState().totalTime(), this.taskModel.getDuration());
            counterRecordModel2.addRecord(new CounterRecordModel.TimeRecord(null, coerceAtMost, 1, null));
        }
    }

    public final void clear() {
        getEntryState().clear();
        this.entryRecord = new CounterRecordModel();
    }

    public final float getCountPercent() {
        if (isCountUp()) {
            return 0.0f;
        }
        return FloatKt.safeDivide((float) getEntryState().totalTime(), Long.valueOf(this.taskModel.getDuration()));
    }

    public final float getCurrentCountPercent() {
        CounterTaskModel.CountTimeSetting currentTimeSetting = getCurrentTimeSetting();
        if (currentTimeSetting == null) {
            return 0.0f;
        }
        return FloatKt.safeDivide((float) getEntryState().segmentTotalTime(), Long.valueOf(currentTimeSetting.getDuration()));
    }

    @Nullable
    public final CounterTaskModel.CountTimeSetting getCurrentTimeSetting() {
        int countTimes;
        if (!isRunning() || isCountUp() || (countTimes = getEntryState().getCountTimes()) < 0 || countTimes >= this.taskModel.getCountList().size()) {
            return null;
        }
        return this.taskModel.getCountList().get(countTimes);
    }

    @NotNull
    public final CounterRecordModel getEntryRecord() {
        return this.entryRecord;
    }

    @NotNull
    public final CounterEntryState getEntryState() {
        return (CounterEntryState) this.entryState.getValue();
    }

    @NotNull
    public final CounterTaskModel getTaskModel() {
        return this.taskModel;
    }

    @NotNull
    public final CounterTimerHandler getTimerHandler() {
        return (CounterTimerHandler) this.timerHandler.getValue();
    }

    public final boolean hasCountResult() {
        return this.entryRecord.getState() == CounterRecordState.DONE.ordinal();
    }

    public final boolean hasStart() {
        return this.entryRecord.getState() != CounterRecordState.IDLE.ordinal();
    }

    public final boolean isCountUp() {
        return this.taskModel.getType() == CounterType.COUNT_UP.ordinal();
    }

    public final boolean isCounting() {
        return getEntryState().getState() == CounterState.STATE_RUNNING;
    }

    public final boolean isMultipleCountDown() {
        return this.taskModel.getType() == CounterType.COUNT_DOWN_MULTIPLE.ordinal();
    }

    public final boolean isRunning() {
        return getEntryState().getIsRunning();
    }

    public final boolean isStop() {
        return getEntryState().getState() == CounterState.STATE_IDLE;
    }

    public final void pause() {
        if (getEntryState().getState() != CounterState.STATE_RUNNING) {
            return;
        }
        getEntryState().pause();
        getTimerHandler().cancelTimer();
    }

    public final void reset() {
        getTimerHandler().cancelTimer();
        this.entryRecord.reset();
        getEntryState().reset();
    }

    public final void resume() {
        if (getEntryState().getState() != CounterState.STATE_PAUSE) {
            return;
        }
        getEntryState().resume();
        getTimerHandler().startTimer();
    }

    public final void segment() {
        m45994a();
        getEntryState().segment();
    }

    public final void setEntryRecord(@NotNull CounterRecordModel counterRecordModel) {
        Intrinsics.checkNotNullParameter(counterRecordModel, "<set-?>");
        this.entryRecord = counterRecordModel;
    }

    public final void start() {
        if (getEntryState().getState() == CounterState.STATE_RUNNING) {
            return;
        }
        getEntryState().start();
        this.entryRecord.inProgress();
        getTimerHandler().startTimer();
    }

    public final void stop() {
        m45994a();
        getEntryState().stop();
        this.entryRecord.complete();
        getTimerHandler().cancelTimer();
    }
}
