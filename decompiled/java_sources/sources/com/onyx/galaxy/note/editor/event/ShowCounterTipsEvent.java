package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getCounterEntry", "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "b", "I", "getType", "()I", "type", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowCounterTipsEvent {
    public static final int TIPS_TYPE_COUNT_DOWN_END = 0;
    public static final int TIPS_TYPE_COUNT_DOWN_END_ONE = 1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata */
    public final int type;

    public ShowCounterTipsEvent(@NotNull CounterEntry counterEntry, int i) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        this.type = i;
    }

    @NotNull
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }

    public final int getType() {
        return this.type;
    }
}
