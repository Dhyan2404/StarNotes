package com.onyx.galaxy.note.editor.data;

import android.os.SystemClock;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.replicator.counter.data.CounterState;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.editor.event.CounterStateChangeEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b2\u00103J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\f\u001a\u00020\u0005J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R$\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\"R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\"R\"\u0010+\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0011\u00101\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "", "", "totalTime", "segmentTotalTime", "", Constants.CLEAR_ATTRIBUTES, gon.f71290o0, "pause", "resume", Constants.RESET, "segment", "stop", "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "newState", "c", "b", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "<set-?>", "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "getState", "()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "state", "", "I", "getCountTimes", "()I", "setCountTimes", "(I)V", "countTimes", "d", "J", "e", C6997f.f39671c, "segmentStartPoint", C6998g.f39679a, "currentStartPoint", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isRunning", Constants.BOOLEAN_VALUE_SIG, "setRunning", "(Z)V", "getCurrentTotalTime", "()J", "currentTotalTime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterEntryState {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public CounterState state;

    /* renamed from: c, reason: from kotlin metadata */
    public int countTimes;

    /* renamed from: d, reason: from kotlin metadata */
    public long totalTime;

    /* renamed from: e, reason: from kotlin metadata */
    public long segmentTotalTime;

    /* renamed from: f, reason: from kotlin metadata */
    public long segmentStartPoint;

    /* renamed from: g, reason: from kotlin metadata */
    public long currentStartPoint;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isRunning;

    public CounterEntryState(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        this.state = CounterState.STATE_IDLE;
    }

    /* renamed from: a */
    public final long m45995a() {
        return SystemClock.elapsedRealtime();
    }

    /* renamed from: b */
    public final void m45996b() {
        long currentTotalTime = this.segmentTotalTime + getCurrentTotalTime();
        this.segmentStartPoint = 0L;
        this.totalTime += currentTotalTime;
        this.segmentTotalTime = 0L;
        this.currentStartPoint = m45995a();
    }

    /* renamed from: c */
    public final void m45997c(CounterState newState) {
        CounterState counterState = this.state;
        this.state = newState;
        GlobalBundle.INSTANCE.postEvent(new CounterStateChangeEvent(this.counterEntry, counterState, newState));
    }

    public final void clear() {
        this.countTimes = 0;
        this.segmentTotalTime = 0L;
        this.totalTime = 0L;
        this.segmentStartPoint = 0L;
        this.currentStartPoint = 0L;
    }

    public final int getCountTimes() {
        return this.countTimes;
    }

    public final long getCurrentTotalTime() {
        if (this.currentStartPoint > 0) {
            return m45995a() - this.currentStartPoint;
        }
        return 0L;
    }

    @NotNull
    public final CounterState getState() {
        return this.state;
    }

    /* renamed from: isRunning, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    public final void pause() {
        m45997c(CounterState.STATE_PAUSE);
        this.segmentTotalTime += getCurrentTotalTime();
        this.currentStartPoint = 0L;
    }

    public final void reset() {
        this.countTimes = 0;
        this.segmentTotalTime = 0L;
        this.totalTime = 0L;
        this.segmentStartPoint = 0L;
        this.currentStartPoint = 0L;
        m45997c(CounterState.STATE_IDLE);
        this.isRunning = true;
    }

    public final void resume() {
        m45997c(CounterState.STATE_RUNNING);
        this.currentStartPoint = m45995a();
    }

    public final void segment() {
        this.countTimes++;
        m45996b();
        this.segmentStartPoint = this.currentStartPoint;
    }

    public final long segmentTotalTime() {
        return this.segmentStartPoint > 0 ? this.segmentTotalTime + getCurrentTotalTime() : this.segmentTotalTime;
    }

    public final void setCountTimes(int i) {
        this.countTimes = i;
    }

    public final void setRunning(boolean z) {
        this.isRunning = z;
    }

    public final void start() {
        m45997c(CounterState.STATE_RUNNING);
        this.countTimes = 0;
        this.segmentTotalTime = 0L;
        this.totalTime = 0L;
        long m45995a = m45995a();
        this.currentStartPoint = m45995a;
        this.segmentStartPoint = m45995a;
    }

    public final void stop() {
        m45997c(CounterState.STATE_IDLE);
        m45996b();
        this.currentStartPoint = 0L;
        this.isRunning = false;
    }

    public final long totalTime() {
        return this.segmentStartPoint > 0 ? this.totalTime + segmentTotalTime() : this.totalTime;
    }
}
