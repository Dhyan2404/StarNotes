package com.onyx.android.sdk.replicator.event;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u0006\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;", "", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "getReplicatorInfo", "", FirebaseAnalytics.Param.SUCCESS, "setSuccess", "a", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfo", "b", Constants.HASIDCALL_INDEX_SIG, "isSuccess", Constants.BOOLEAN_VALUE_SIG, "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocSyncFinishEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ReplicatorInfo replicatorInfo;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isSuccess;

    public NoteDocSyncFinishEvent(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        this.replicatorInfo = replicatorInfo;
    }

    @NotNull
    public final ReplicatorInfo getReplicatorInfo() {
        return this.replicatorInfo;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    /* renamed from: setSuccess, reason: collision with other method in class */
    public final void m72350setSuccess(boolean z) {
        this.isSuccess = z;
    }

    @NotNull
    public final NoteDocSyncFinishEvent setSuccess(boolean success) {
        this.isSuccess = success;
        return this;
    }
}
