package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageFinallyEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "component1", "rotatePageArgs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "getRotatePageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RotatePageFinallyEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final RotatePageArgs rotatePageArgs;

    public RotatePageFinallyEvent(@NotNull RotatePageArgs rotatePageArgs) {
        Intrinsics.checkNotNullParameter(rotatePageArgs, "rotatePageArgs");
        this.rotatePageArgs = rotatePageArgs;
    }

    public static /* synthetic */ RotatePageFinallyEvent copy$default(RotatePageFinallyEvent rotatePageFinallyEvent, RotatePageArgs rotatePageArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            rotatePageArgs = rotatePageFinallyEvent.rotatePageArgs;
        }
        return rotatePageFinallyEvent.copy(rotatePageArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RotatePageArgs getRotatePageArgs() {
        return this.rotatePageArgs;
    }

    @NotNull
    public final RotatePageFinallyEvent copy(@NotNull RotatePageArgs rotatePageArgs) {
        Intrinsics.checkNotNullParameter(rotatePageArgs, "rotatePageArgs");
        return new RotatePageFinallyEvent(rotatePageArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RotatePageFinallyEvent) && Intrinsics.areEqual(this.rotatePageArgs, ((RotatePageFinallyEvent) other).rotatePageArgs);
    }

    @NotNull
    public final RotatePageArgs getRotatePageArgs() {
        return this.rotatePageArgs;
    }

    public int hashCode() {
        return this.rotatePageArgs.hashCode();
    }

    @NotNull
    public String toString() {
        return "RotatePageFinallyEvent(rotatePageArgs=" + this.rotatePageArgs + ')';
    }
}
