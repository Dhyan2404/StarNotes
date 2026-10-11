package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0007\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "component1", "", "component2", "virtualDocViewInfo", "isScrolling", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "getVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class VirtualDocViewInfoEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public VirtualDocViewInfo virtualDocViewInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean isScrolling;

    public VirtualDocViewInfoEvent(@NotNull VirtualDocViewInfo virtualDocViewInfo, boolean z) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "virtualDocViewInfo");
        this.virtualDocViewInfo = virtualDocViewInfo;
        this.isScrolling = z;
    }

    public static /* synthetic */ VirtualDocViewInfoEvent copy$default(VirtualDocViewInfoEvent virtualDocViewInfoEvent, VirtualDocViewInfo virtualDocViewInfo, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            virtualDocViewInfo = virtualDocViewInfoEvent.virtualDocViewInfo;
        }
        if ((i & 2) != 0) {
            z = virtualDocViewInfoEvent.isScrolling;
        }
        return virtualDocViewInfoEvent.copy(virtualDocViewInfo, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        return this.virtualDocViewInfo;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsScrolling() {
        return this.isScrolling;
    }

    @NotNull
    public final VirtualDocViewInfoEvent copy(@NotNull VirtualDocViewInfo virtualDocViewInfo, boolean isScrolling) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "virtualDocViewInfo");
        return new VirtualDocViewInfoEvent(virtualDocViewInfo, isScrolling);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VirtualDocViewInfoEvent)) {
            return false;
        }
        VirtualDocViewInfoEvent virtualDocViewInfoEvent = (VirtualDocViewInfoEvent) other;
        return Intrinsics.areEqual(this.virtualDocViewInfo, virtualDocViewInfoEvent.virtualDocViewInfo) && this.isScrolling == virtualDocViewInfoEvent.isScrolling;
    }

    @NotNull
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        return this.virtualDocViewInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.virtualDocViewInfo.hashCode() * 31;
        boolean z = this.isScrolling;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final boolean isScrolling() {
        return this.isScrolling;
    }

    public final void setVirtualDocViewInfo(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<set-?>");
        this.virtualDocViewInfo = virtualDocViewInfo;
    }

    @NotNull
    public String toString() {
        return "VirtualDocViewInfoEvent(virtualDocViewInfo=" + this.virtualDocViewInfo + ", isScrolling=" + this.isScrolling + ')';
    }

    public /* synthetic */ VirtualDocViewInfoEvent(VirtualDocViewInfo virtualDocViewInfo, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(virtualDocViewInfo, (i & 2) != 0 ? false : z);
    }
}
