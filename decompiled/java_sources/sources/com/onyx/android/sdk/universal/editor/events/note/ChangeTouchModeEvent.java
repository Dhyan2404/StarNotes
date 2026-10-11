package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "", "", "hasReadingMode", "isModeChanged", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "component1", "component2", "oldTouchMode", "newTouchMode", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "getOldTouchMode", "()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "b", "getNewTouchMode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangeTouchModeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorTouchMode oldTouchMode;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorTouchMode newTouchMode;

    public ChangeTouchModeEvent(@NotNull EditorTouchMode oldTouchMode, @NotNull EditorTouchMode newTouchMode) {
        Intrinsics.checkNotNullParameter(oldTouchMode, "oldTouchMode");
        Intrinsics.checkNotNullParameter(newTouchMode, "newTouchMode");
        this.oldTouchMode = oldTouchMode;
        this.newTouchMode = newTouchMode;
    }

    public static /* synthetic */ ChangeTouchModeEvent copy$default(ChangeTouchModeEvent changeTouchModeEvent, EditorTouchMode editorTouchMode, EditorTouchMode editorTouchMode2, int i, Object obj) {
        if ((i & 1) != 0) {
            editorTouchMode = changeTouchModeEvent.oldTouchMode;
        }
        if ((i & 2) != 0) {
            editorTouchMode2 = changeTouchModeEvent.newTouchMode;
        }
        return changeTouchModeEvent.copy(editorTouchMode, editorTouchMode2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorTouchMode getOldTouchMode() {
        return this.oldTouchMode;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EditorTouchMode getNewTouchMode() {
        return this.newTouchMode;
    }

    @NotNull
    public final ChangeTouchModeEvent copy(@NotNull EditorTouchMode oldTouchMode, @NotNull EditorTouchMode newTouchMode) {
        Intrinsics.checkNotNullParameter(oldTouchMode, "oldTouchMode");
        Intrinsics.checkNotNullParameter(newTouchMode, "newTouchMode");
        return new ChangeTouchModeEvent(oldTouchMode, newTouchMode);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangeTouchModeEvent)) {
            return false;
        }
        ChangeTouchModeEvent changeTouchModeEvent = (ChangeTouchModeEvent) other;
        return this.oldTouchMode == changeTouchModeEvent.oldTouchMode && this.newTouchMode == changeTouchModeEvent.newTouchMode;
    }

    @NotNull
    public final EditorTouchMode getNewTouchMode() {
        return this.newTouchMode;
    }

    @NotNull
    public final EditorTouchMode getOldTouchMode() {
        return this.oldTouchMode;
    }

    public final boolean hasReadingMode() {
        return this.oldTouchMode.isReadingMode() || this.newTouchMode.isReadingMode();
    }

    public int hashCode() {
        return (this.oldTouchMode.hashCode() * 31) + this.newTouchMode.hashCode();
    }

    public final boolean isModeChanged() {
        return this.oldTouchMode != this.newTouchMode;
    }

    @NotNull
    public String toString() {
        return "ChangeTouchModeEvent(oldTouchMode=" + this.oldTouchMode + ", newTouchMode=" + this.newTouchMode + ')';
    }
}
