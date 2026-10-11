package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;", "", "", "component1", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getStrokeColor", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangeStrokeColorEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int strokeColor;

    public ChangeStrokeColorEvent(int i) {
        this.strokeColor = i;
    }

    public static /* synthetic */ ChangeStrokeColorEvent copy$default(ChangeStrokeColorEvent changeStrokeColorEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = changeStrokeColorEvent.strokeColor;
        }
        return changeStrokeColorEvent.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getStrokeColor() {
        return this.strokeColor;
    }

    @NotNull
    public final ChangeStrokeColorEvent copy(int strokeColor) {
        return new ChangeStrokeColorEvent(strokeColor);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ChangeStrokeColorEvent) && this.strokeColor == ((ChangeStrokeColorEvent) other).strokeColor;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public int hashCode() {
        return Integer.hashCode(this.strokeColor);
    }

    @NotNull
    public String toString() {
        return "ChangeStrokeColorEvent(strokeColor=" + this.strokeColor + ')';
    }
}
