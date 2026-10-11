package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getCounterEntry", "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "b", Constants.HASIDCALL_INDEX_SIG, "isManualStop", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterDoneEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean isManualStop;

    public CounterDoneEvent(@NotNull CounterEntry counterEntry, boolean z) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        this.isManualStop = z;
    }

    @NotNull
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }

    /* renamed from: isManualStop, reason: from getter */
    public final boolean getIsManualStop() {
        return this.isManualStop;
    }

    public /* synthetic */ CounterDoneEvent(CounterEntry counterEntry, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(counterEntry, (i & 2) != 0 ? false : z);
    }
}
