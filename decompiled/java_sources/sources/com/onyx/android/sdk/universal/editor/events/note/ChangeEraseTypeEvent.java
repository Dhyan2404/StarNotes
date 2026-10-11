package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", "", "", "component1", "", "component2", ApiBroadCastReceiver.ARGS_ERASE_TYPE, "activeUserProvider", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "I", "getEraseType", "()I", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getActiveUserProvider", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangeEraseTypeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int eraseType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean activeUserProvider;

    public ChangeEraseTypeEvent(int i, boolean z) {
        this.eraseType = i;
        this.activeUserProvider = z;
    }

    public static /* synthetic */ ChangeEraseTypeEvent copy$default(ChangeEraseTypeEvent changeEraseTypeEvent, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = changeEraseTypeEvent.eraseType;
        }
        if ((i2 & 2) != 0) {
            z = changeEraseTypeEvent.activeUserProvider;
        }
        return changeEraseTypeEvent.copy(i, z);
    }

    /* renamed from: component1, reason: from getter */
    public final int getEraseType() {
        return this.eraseType;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getActiveUserProvider() {
        return this.activeUserProvider;
    }

    @NotNull
    public final ChangeEraseTypeEvent copy(int eraseType, boolean activeUserProvider) {
        return new ChangeEraseTypeEvent(eraseType, activeUserProvider);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangeEraseTypeEvent)) {
            return false;
        }
        ChangeEraseTypeEvent changeEraseTypeEvent = (ChangeEraseTypeEvent) other;
        return this.eraseType == changeEraseTypeEvent.eraseType && this.activeUserProvider == changeEraseTypeEvent.activeUserProvider;
    }

    public final boolean getActiveUserProvider() {
        return this.activeUserProvider;
    }

    public final int getEraseType() {
        return this.eraseType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = Integer.hashCode(this.eraseType) * 31;
        boolean z = this.activeUserProvider;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "ChangeEraseTypeEvent(eraseType=" + this.eraseType + ", activeUserProvider=" + this.activeUserProvider + ')';
    }

    public /* synthetic */ ChangeEraseTypeEvent(int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? true : z);
    }
}
