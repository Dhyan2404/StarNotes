package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "component1", "", "component2", "penArgs", "fromPenBox", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getFromPenBox", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangePenArgsEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final PenArgs penArgs;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean fromPenBox;

    public ChangePenArgsEvent(@NotNull PenArgs penArgs, boolean z) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        this.penArgs = penArgs;
        this.fromPenBox = z;
    }

    public static /* synthetic */ ChangePenArgsEvent copy$default(ChangePenArgsEvent changePenArgsEvent, PenArgs penArgs, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            penArgs = changePenArgsEvent.penArgs;
        }
        if ((i & 2) != 0) {
            z = changePenArgsEvent.fromPenBox;
        }
        return changePenArgsEvent.copy(penArgs, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getFromPenBox() {
        return this.fromPenBox;
    }

    @NotNull
    public final ChangePenArgsEvent copy(@NotNull PenArgs penArgs, boolean fromPenBox) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        return new ChangePenArgsEvent(penArgs, fromPenBox);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangePenArgsEvent)) {
            return false;
        }
        ChangePenArgsEvent changePenArgsEvent = (ChangePenArgsEvent) other;
        return Intrinsics.areEqual(this.penArgs, changePenArgsEvent.penArgs) && this.fromPenBox == changePenArgsEvent.fromPenBox;
    }

    public final boolean getFromPenBox() {
        return this.fromPenBox;
    }

    @NotNull
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.penArgs.hashCode() * 31;
        boolean z = this.fromPenBox;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "ChangePenArgsEvent(penArgs=" + this.penArgs + ", fromPenBox=" + this.fromPenBox + ')';
    }

    public /* synthetic */ ChangePenArgsEvent(PenArgs penArgs, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(penArgs, (i & 2) != 0 ? false : z);
    }
}
