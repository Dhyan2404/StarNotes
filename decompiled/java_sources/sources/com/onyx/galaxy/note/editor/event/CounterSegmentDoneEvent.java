package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getCounterEntry", "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterSegmentDoneEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    public CounterSegmentDoneEvent(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
    }

    @NotNull
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }
}
