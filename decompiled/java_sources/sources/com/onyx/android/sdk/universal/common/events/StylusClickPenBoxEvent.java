package com.onyx.android.sdk.universal.common.events;

import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "a", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StylusClickPenBoxEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final PenArgs penArgs;

    public StylusClickPenBoxEvent(@Nullable PenArgs penArgs) {
        this.penArgs = penArgs;
    }

    @Nullable
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }
}
