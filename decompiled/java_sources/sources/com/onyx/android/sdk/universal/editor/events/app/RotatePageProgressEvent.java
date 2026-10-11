package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J#\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "component1", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "component2", "rotatePageArgs", "virtualPages", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "getRotatePageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "b", "Ljava/util/List;", "getVirtualPages", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RotatePageProgressEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final RotatePageArgs rotatePageArgs;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<VirtualPage> virtualPages;

    public RotatePageProgressEvent(@NotNull RotatePageArgs rotatePageArgs, @NotNull List<VirtualPage> virtualPages) {
        Intrinsics.checkNotNullParameter(rotatePageArgs, "rotatePageArgs");
        Intrinsics.checkNotNullParameter(virtualPages, "virtualPages");
        this.rotatePageArgs = rotatePageArgs;
        this.virtualPages = virtualPages;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RotatePageProgressEvent copy$default(RotatePageProgressEvent rotatePageProgressEvent, RotatePageArgs rotatePageArgs, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            rotatePageArgs = rotatePageProgressEvent.rotatePageArgs;
        }
        if ((i & 2) != 0) {
            list = rotatePageProgressEvent.virtualPages;
        }
        return rotatePageProgressEvent.copy(rotatePageArgs, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RotatePageArgs getRotatePageArgs() {
        return this.rotatePageArgs;
    }

    @NotNull
    public final List<VirtualPage> component2() {
        return this.virtualPages;
    }

    @NotNull
    public final RotatePageProgressEvent copy(@NotNull RotatePageArgs rotatePageArgs, @NotNull List<VirtualPage> virtualPages) {
        Intrinsics.checkNotNullParameter(rotatePageArgs, "rotatePageArgs");
        Intrinsics.checkNotNullParameter(virtualPages, "virtualPages");
        return new RotatePageProgressEvent(rotatePageArgs, virtualPages);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RotatePageProgressEvent)) {
            return false;
        }
        RotatePageProgressEvent rotatePageProgressEvent = (RotatePageProgressEvent) other;
        return Intrinsics.areEqual(this.rotatePageArgs, rotatePageProgressEvent.rotatePageArgs) && Intrinsics.areEqual(this.virtualPages, rotatePageProgressEvent.virtualPages);
    }

    @NotNull
    public final RotatePageArgs getRotatePageArgs() {
        return this.rotatePageArgs;
    }

    @NotNull
    public final List<VirtualPage> getVirtualPages() {
        return this.virtualPages;
    }

    public int hashCode() {
        return (this.rotatePageArgs.hashCode() * 31) + this.virtualPages.hashCode();
    }

    @NotNull
    public String toString() {
        return "RotatePageProgressEvent(rotatePageArgs=" + this.rotatePageArgs + ", virtualPages=" + this.virtualPages + ')';
    }
}
