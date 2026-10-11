package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;", "", "", "component1", "destroy", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getDestroy", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class SaveDocumentEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final boolean destroy;

    public SaveDocumentEvent() {
        this(false, 1, null);
    }

    public static /* synthetic */ SaveDocumentEvent copy$default(SaveDocumentEvent saveDocumentEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = saveDocumentEvent.destroy;
        }
        return saveDocumentEvent.copy(z);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getDestroy() {
        return this.destroy;
    }

    @NotNull
    public final SaveDocumentEvent copy(boolean destroy) {
        return new SaveDocumentEvent(destroy);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SaveDocumentEvent) && this.destroy == ((SaveDocumentEvent) other).destroy;
    }

    public final boolean getDestroy() {
        return this.destroy;
    }

    public int hashCode() {
        boolean z = this.destroy;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    @NotNull
    public String toString() {
        return "SaveDocumentEvent(destroy=" + this.destroy + ')';
    }

    public SaveDocumentEvent(boolean z) {
        this.destroy = z;
    }

    public /* synthetic */ SaveDocumentEvent(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}
