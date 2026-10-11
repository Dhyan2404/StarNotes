package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "", ApiBroadCastReceiver.ARGS_FROM_INDEX, "", ApiBroadCastReceiver.ARGS_TO_INDEX, "insertBefore", "", "scrollToNewPosition", "(IIZZ)V", "getFromIndex", "()I", "setFromIndex", "(I)V", "getInsertBefore", Constants.BOOLEAN_VALUE_SIG, "setInsertBefore", "(Z)V", "getScrollToNewPosition", "setScrollToNewPosition", "getToIndex", "setToIndex", "component1", "component2", "component3", "component4", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class MovePageArgs {
    private int fromIndex;
    private boolean insertBefore;
    private boolean scrollToNewPosition;
    private int toIndex;

    public MovePageArgs() {
        this(0, 0, false, false, 15, null);
    }

    public static /* synthetic */ MovePageArgs copy$default(MovePageArgs movePageArgs, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = movePageArgs.fromIndex;
        }
        if ((i3 & 2) != 0) {
            i2 = movePageArgs.toIndex;
        }
        if ((i3 & 4) != 0) {
            z = movePageArgs.insertBefore;
        }
        if ((i3 & 8) != 0) {
            z2 = movePageArgs.scrollToNewPosition;
        }
        return movePageArgs.copy(i, i2, z, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getFromIndex() {
        return this.fromIndex;
    }

    /* renamed from: component2, reason: from getter */
    public final int getToIndex() {
        return this.toIndex;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getInsertBefore() {
        return this.insertBefore;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getScrollToNewPosition() {
        return this.scrollToNewPosition;
    }

    @NotNull
    public final MovePageArgs copy(int fromIndex, int toIndex, boolean insertBefore, boolean scrollToNewPosition) {
        return new MovePageArgs(fromIndex, toIndex, insertBefore, scrollToNewPosition);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MovePageArgs)) {
            return false;
        }
        MovePageArgs movePageArgs = (MovePageArgs) other;
        return this.fromIndex == movePageArgs.fromIndex && this.toIndex == movePageArgs.toIndex && this.insertBefore == movePageArgs.insertBefore && this.scrollToNewPosition == movePageArgs.scrollToNewPosition;
    }

    public final int getFromIndex() {
        return this.fromIndex;
    }

    public final boolean getInsertBefore() {
        return this.insertBefore;
    }

    public final boolean getScrollToNewPosition() {
        return this.scrollToNewPosition;
    }

    public final int getToIndex() {
        return this.toIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((Integer.hashCode(this.fromIndex) * 31) + Integer.hashCode(this.toIndex)) * 31;
        boolean z = this.insertBefore;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.scrollToNewPosition;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final void setFromIndex(int i) {
        this.fromIndex = i;
    }

    public final void setInsertBefore(boolean z) {
        this.insertBefore = z;
    }

    public final void setScrollToNewPosition(boolean z) {
        this.scrollToNewPosition = z;
    }

    public final void setToIndex(int i) {
        this.toIndex = i;
    }

    @NotNull
    public String toString() {
        return "MovePageArgs(fromIndex=" + this.fromIndex + ", toIndex=" + this.toIndex + ", insertBefore=" + this.insertBefore + ", scrollToNewPosition=" + this.scrollToNewPosition + ')';
    }

    public MovePageArgs(int i, int i2, boolean z, boolean z2) {
        this.fromIndex = i;
        this.toIndex = i2;
        this.insertBefore = z;
        this.scrollToNewPosition = z2;
    }

    public /* synthetic */ MovePageArgs(int i, int i2, boolean z, boolean z2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? false : z, (i3 & 8) != 0 ? true : z2);
    }
}
