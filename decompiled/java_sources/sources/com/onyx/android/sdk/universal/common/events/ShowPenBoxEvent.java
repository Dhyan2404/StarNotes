package com.onyx.android.sdk.universal.common.events;

import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "a", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "", "b", Constants.HASIDCALL_INDEX_SIG, "getAddPen", Constants.BOOLEAN_VALUE_SIG, "addPen", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowPenBoxEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final PenArgs penArgs;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean addPen;

    public ShowPenBoxEvent(@Nullable PenArgs penArgs, boolean z) {
        this.penArgs = penArgs;
        this.addPen = z;
    }

    public final boolean getAddPen() {
        return this.addPen;
    }

    @Nullable
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }

    public /* synthetic */ ShowPenBoxEvent(PenArgs penArgs, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(penArgs, (i & 2) != 0 ? false : z);
    }
}
