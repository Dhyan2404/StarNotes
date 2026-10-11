package com.onyx.android.sdk.replicator.event;

import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;", "", "", "triggerSource", "setTriggerSource", "", "", "a", "Ljava/util/List;", "getDocIdList", "()Ljava/util/List;", "docIdList", "<set-?>", "b", "I", "getTriggerSource", "()I", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartNoteReplicatorEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<String> docIdList;

    /* renamed from: b, reason: from kotlin metadata */
    public int triggerSource;

    public StartNoteReplicatorEvent(@NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.docIdList = docIdList;
        this.triggerSource = 1;
    }

    @NotNull
    public final List<String> getDocIdList() {
        return this.docIdList;
    }

    public final int getTriggerSource() {
        return this.triggerSource;
    }

    @NotNull
    public final StartNoteReplicatorEvent setTriggerSource(int triggerSource) {
        this.triggerSource = triggerSource;
        return this;
    }
}
