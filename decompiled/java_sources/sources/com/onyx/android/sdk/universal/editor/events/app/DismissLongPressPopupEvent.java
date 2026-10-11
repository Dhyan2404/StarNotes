package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000b\u0010\u0002\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0005HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/DismissLongPressPopupEvent;", "", "component1", "data", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "getData", "()Ljava/lang/Object;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Object;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class DismissLongPressPopupEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final Object data;

    public DismissLongPressPopupEvent(@Nullable Object obj) {
        this.data = obj;
    }

    public static /* synthetic */ DismissLongPressPopupEvent copy$default(DismissLongPressPopupEvent dismissLongPressPopupEvent, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = dismissLongPressPopupEvent.data;
        }
        return dismissLongPressPopupEvent.copy(obj);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Object getData() {
        return this.data;
    }

    @NotNull
    public final DismissLongPressPopupEvent copy(@Nullable Object data) {
        return new DismissLongPressPopupEvent(data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DismissLongPressPopupEvent) && Intrinsics.areEqual(this.data, ((DismissLongPressPopupEvent) other).data);
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    public int hashCode() {
        Object obj = this.data;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @NotNull
    public String toString() {
        return "DismissLongPressPopupEvent(data=" + this.data + ')';
    }
}
