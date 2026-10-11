package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u000f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "a", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getCounterEntry", "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "b", Constants.HASIDCALL_INDEX_SIG, "getShow", Constants.BOOLEAN_VALUE_SIG, "show", "c", "isExpand", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowCounterEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean show;

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean isExpand;

    public ShowCounterEvent(@NotNull CounterEntry counterEntry, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        this.show = z;
        this.isExpand = z2;
    }

    @NotNull
    public final CounterEntry getCounterEntry() {
        return this.counterEntry;
    }

    public final boolean getShow() {
        return this.show;
    }

    /* renamed from: isExpand, reason: from getter */
    public final boolean getIsExpand() {
        return this.isExpand;
    }

    public /* synthetic */ ShowCounterEvent(CounterEntry counterEntry, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(counterEntry, z, (i & 4) != 0 ? true : z2);
    }
}
