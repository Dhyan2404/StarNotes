package com.onyx.galaxy.note.editor.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;", "", "", "component1", "keyboardHeight", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getKeyboardHeight", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class KeyboardOpenEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int keyboardHeight;

    public KeyboardOpenEvent(int i) {
        this.keyboardHeight = i;
    }

    public static /* synthetic */ KeyboardOpenEvent copy$default(KeyboardOpenEvent keyboardOpenEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = keyboardOpenEvent.keyboardHeight;
        }
        return keyboardOpenEvent.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getKeyboardHeight() {
        return this.keyboardHeight;
    }

    @NotNull
    public final KeyboardOpenEvent copy(int keyboardHeight) {
        return new KeyboardOpenEvent(keyboardHeight);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof KeyboardOpenEvent) && this.keyboardHeight == ((KeyboardOpenEvent) other).keyboardHeight;
    }

    public final int getKeyboardHeight() {
        return this.keyboardHeight;
    }

    public int hashCode() {
        return Integer.hashCode(this.keyboardHeight);
    }

    @NotNull
    public String toString() {
        return "KeyboardOpenEvent(keyboardHeight=" + this.keyboardHeight + ')';
    }
}
