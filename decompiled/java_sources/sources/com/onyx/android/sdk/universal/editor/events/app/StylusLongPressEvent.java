package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u0004\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;", "", "", "component1", "isLongPressActive", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StylusLongPressEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final boolean isLongPressActive;

    public StylusLongPressEvent(boolean z) {
        this.isLongPressActive = z;
    }

    public static /* synthetic */ StylusLongPressEvent copy$default(StylusLongPressEvent stylusLongPressEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = stylusLongPressEvent.isLongPressActive;
        }
        return stylusLongPressEvent.copy(z);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsLongPressActive() {
        return this.isLongPressActive;
    }

    @NotNull
    public final StylusLongPressEvent copy(boolean isLongPressActive) {
        return new StylusLongPressEvent(isLongPressActive);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof StylusLongPressEvent) && this.isLongPressActive == ((StylusLongPressEvent) other).isLongPressActive;
    }

    public int hashCode() {
        boolean z = this.isLongPressActive;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public final boolean isLongPressActive() {
        return this.isLongPressActive;
    }

    @NotNull
    public String toString() {
        return "StylusLongPressEvent(isLongPressActive=" + this.isLongPressActive + ')';
    }
}
