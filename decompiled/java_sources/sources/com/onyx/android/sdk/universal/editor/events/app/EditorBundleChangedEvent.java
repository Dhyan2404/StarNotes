package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "component1", "component2", Keywords.FUNC_LAST_STRING, Keywords.FUNC_CURRENT_STRING, "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getLast", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", "getCurrent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class EditorBundleChangedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorBundle last;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorBundle current;

    public EditorBundleChangedEvent(@NotNull EditorBundle last, @NotNull EditorBundle current) {
        Intrinsics.checkNotNullParameter(last, "last");
        Intrinsics.checkNotNullParameter(current, "current");
        this.last = last;
        this.current = current;
    }

    public static /* synthetic */ EditorBundleChangedEvent copy$default(EditorBundleChangedEvent editorBundleChangedEvent, EditorBundle editorBundle, EditorBundle editorBundle2, int i, Object obj) {
        if ((i & 1) != 0) {
            editorBundle = editorBundleChangedEvent.last;
        }
        if ((i & 2) != 0) {
            editorBundle2 = editorBundleChangedEvent.current;
        }
        return editorBundleChangedEvent.copy(editorBundle, editorBundle2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorBundle getLast() {
        return this.last;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EditorBundle getCurrent() {
        return this.current;
    }

    @NotNull
    public final EditorBundleChangedEvent copy(@NotNull EditorBundle last, @NotNull EditorBundle current) {
        Intrinsics.checkNotNullParameter(last, "last");
        Intrinsics.checkNotNullParameter(current, "current");
        return new EditorBundleChangedEvent(last, current);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EditorBundleChangedEvent)) {
            return false;
        }
        EditorBundleChangedEvent editorBundleChangedEvent = (EditorBundleChangedEvent) other;
        return Intrinsics.areEqual(this.last, editorBundleChangedEvent.last) && Intrinsics.areEqual(this.current, editorBundleChangedEvent.current);
    }

    @NotNull
    public final EditorBundle getCurrent() {
        return this.current;
    }

    @NotNull
    public final EditorBundle getLast() {
        return this.last;
    }

    public int hashCode() {
        return (this.last.hashCode() * 31) + this.current.hashCode();
    }

    @NotNull
    public String toString() {
        return "EditorBundleChangedEvent(last=" + this.last + ", current=" + this.current + ')';
    }
}
