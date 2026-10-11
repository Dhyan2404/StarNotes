package com.onyx.galaxy.note.editor.event;

import com.onyx.android.sdk.replicator.counter.data.CounterState;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "component1", "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "component2", "component3", "counterEntry", "oldState", "newState", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getCounterEntry", "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "b", "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "getOldState", "()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;", "c", "getNewState", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Lcom/onyx/android/sdk/replicator/counter/data/CounterState;Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class CounterStateChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final CounterState oldState;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final CounterState newState;

    public CounterStateChangeEvent(@NotNull CounterEntry counterEntry, @NotNull CounterState oldState, @NotNull CounterState newState) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        Intrinsics.checkNotNullParameter(newState, "newState");
        this.counterEntry = counterEntry;
        this.oldState = oldState;
        this.newState = newState;
    }

    public static /* synthetic */ CounterStateChangeEvent copy$default(CounterStateChangeEvent counterStateChangeEvent, CounterEntry counterEntry, CounterState counterState, CounterState counterState2, int i, Object obj) {
        if ((i & 1) != 0) {
            counterEntry = counterStateChangeEvent.counterEntry;
        }
        if ((i & 2) != 0) {
            counterState = counterStateChangeEvent.oldState;
        }
        if ((i & 4) != 0) {
            counterState2 = counterStateChangeEvent.newState;
        }
        return counterStateChangeEvent.copy(counterEntry, counterState, counterState2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final CounterState getOldState() {
        return this.oldState;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final CounterState getNewState() {
        return this.newState;
    }

    @NotNull
    public final CounterStateChangeEvent copy(@NotNull CounterEntry counterEntry, @NotNull CounterState oldState, @NotNull CounterState newState) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        Intrinsics.checkNotNullParameter(newState, "newState");
        return new CounterStateChangeEvent(counterEntry, oldState, newState);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CounterStateChangeEvent)) {
            return false;
        }
        CounterStateChangeEvent counterStateChangeEvent = (CounterStateChangeEvent) other;
        return Intrinsics.areEqual(this.counterEntry, counterStateChangeEvent.counterEntry) && this.oldState == counterStateChangeEvent.oldState && this.newState == counterStateChangeEvent.newState;
    }

    @NotNull
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }

    @NotNull
    public final CounterState getNewState() {
        return this.newState;
    }

    @NotNull
    public final CounterState getOldState() {
        return this.oldState;
    }

    public int hashCode() {
        return (((this.counterEntry.hashCode() * 31) + this.oldState.hashCode()) * 31) + this.newState.hashCode();
    }

    @NotNull
    public String toString() {
        return "CounterStateChangeEvent(counterEntry=" + this.counterEntry + ", oldState=" + this.oldState + ", newState=" + this.newState + ')';
    }
}
