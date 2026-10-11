package com.onyx.android.sdk.replicator.event;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;", "", "", "status", "setStatus", "", "a", Constants.STRING_SIG, "getRequestId", "()Ljava/lang/String;", "requestId", "<set-?>", "b", "I", "getStatus", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocRequestEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String requestId;

    /* renamed from: b, reason: from kotlin metadata */
    public int status;

    public DocRequestEvent(@NotNull String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.requestId = requestId;
        this.status = 1;
    }

    @NotNull
    public final String getRequestId() {
        return this.requestId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final DocRequestEvent setStatus(int status) {
        this.status = status;
        return this;
    }
}
