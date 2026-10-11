package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportingEvent;", "", "", "component1", "", "component2", "component3", "noteName", "currentIndex", "total", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getNoteName", "()Ljava/lang/String;", "b", "I", "getCurrentIndex", "()I", "c", "getTotal", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;II)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class UserNoteListImportingEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String noteName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int currentIndex;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int total;

    public UserNoteListImportingEvent(@NotNull String noteName, int i, int i2) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        this.noteName = noteName;
        this.currentIndex = i;
        this.total = i2;
    }

    public static /* synthetic */ UserNoteListImportingEvent copy$default(UserNoteListImportingEvent userNoteListImportingEvent, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = userNoteListImportingEvent.noteName;
        }
        if ((i3 & 2) != 0) {
            i = userNoteListImportingEvent.currentIndex;
        }
        if ((i3 & 4) != 0) {
            i2 = userNoteListImportingEvent.total;
        }
        return userNoteListImportingEvent.copy(str, i, i2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getNoteName() {
        return this.noteName;
    }

    /* renamed from: component2, reason: from getter */
    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    /* renamed from: component3, reason: from getter */
    public final int getTotal() {
        return this.total;
    }

    @NotNull
    public final UserNoteListImportingEvent copy(@NotNull String noteName, int currentIndex, int total) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        return new UserNoteListImportingEvent(noteName, currentIndex, total);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserNoteListImportingEvent)) {
            return false;
        }
        UserNoteListImportingEvent userNoteListImportingEvent = (UserNoteListImportingEvent) other;
        return Intrinsics.areEqual(this.noteName, userNoteListImportingEvent.noteName) && this.currentIndex == userNoteListImportingEvent.currentIndex && this.total == userNoteListImportingEvent.total;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @NotNull
    public final String getNoteName() {
        return this.noteName;
    }

    public final int getTotal() {
        return this.total;
    }

    public int hashCode() {
        return (((this.noteName.hashCode() * 31) + Integer.hashCode(this.currentIndex)) * 31) + Integer.hashCode(this.total);
    }

    @NotNull
    public String toString() {
        return "UserNoteListImportingEvent(noteName=" + this.noteName + ", currentIndex=" + this.currentIndex + ", total=" + this.total + ')';
    }

    public /* synthetic */ UserNoteListImportingEvent(String str, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2);
    }
}
