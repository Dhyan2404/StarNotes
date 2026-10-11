package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "component1", "movePageArgs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "getMovePageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "setMovePageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class MovePageEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public MovePageArgs movePageArgs;

    /* JADX WARN: Multi-variable type inference failed */
    public MovePageEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ MovePageEvent copy$default(MovePageEvent movePageEvent, MovePageArgs movePageArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            movePageArgs = movePageEvent.movePageArgs;
        }
        return movePageEvent.copy(movePageArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final MovePageArgs getMovePageArgs() {
        return this.movePageArgs;
    }

    @NotNull
    public final MovePageEvent copy(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "movePageArgs");
        return new MovePageEvent(movePageArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MovePageEvent) && Intrinsics.areEqual(this.movePageArgs, ((MovePageEvent) other).movePageArgs);
    }

    @NotNull
    public final MovePageArgs getMovePageArgs() {
        return this.movePageArgs;
    }

    public int hashCode() {
        return this.movePageArgs.hashCode();
    }

    public final void setMovePageArgs(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "<set-?>");
        this.movePageArgs = movePageArgs;
    }

    @NotNull
    public String toString() {
        return "MovePageEvent(movePageArgs=" + this.movePageArgs + ')';
    }

    public MovePageEvent(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "movePageArgs");
        this.movePageArgs = movePageArgs;
    }

    public /* synthetic */ MovePageEvent(MovePageArgs movePageArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new MovePageArgs(0, 0, false, false, 15, null) : movePageArgs);
    }
}
