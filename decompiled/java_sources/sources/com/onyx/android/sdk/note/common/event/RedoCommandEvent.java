package com.onyx.android.sdk.note.common.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/event/RedoCommandEvent;", "", "", "component1", "component2", "undoCount", "redoCount", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getUndoCount", "()I", "setUndoCount", "(I)V", "b", "getRedoCount", "setRedoCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(II)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RedoCommandEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int undoCount;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int redoCount;

    public RedoCommandEvent(int i, int i2) {
        this.undoCount = i;
        this.redoCount = i2;
    }

    public static /* synthetic */ RedoCommandEvent copy$default(RedoCommandEvent redoCommandEvent, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = redoCommandEvent.undoCount;
        }
        if ((i3 & 2) != 0) {
            i2 = redoCommandEvent.redoCount;
        }
        return redoCommandEvent.copy(i, i2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getUndoCount() {
        return this.undoCount;
    }

    /* renamed from: component2, reason: from getter */
    public final int getRedoCount() {
        return this.redoCount;
    }

    @NotNull
    public final RedoCommandEvent copy(int undoCount, int redoCount) {
        return new RedoCommandEvent(undoCount, redoCount);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedoCommandEvent)) {
            return false;
        }
        RedoCommandEvent redoCommandEvent = (RedoCommandEvent) other;
        return this.undoCount == redoCommandEvent.undoCount && this.redoCount == redoCommandEvent.redoCount;
    }

    public final int getRedoCount() {
        return this.redoCount;
    }

    public final int getUndoCount() {
        return this.undoCount;
    }

    public int hashCode() {
        return (Integer.hashCode(this.undoCount) * 31) + Integer.hashCode(this.redoCount);
    }

    public final void setRedoCount(int i) {
        this.redoCount = i;
    }

    public final void setUndoCount(int i) {
        this.undoCount = i;
    }

    @NotNull
    public String toString() {
        return "RedoCommandEvent(undoCount=" + this.undoCount + ", redoCount=" + this.redoCount + ')';
    }
}
