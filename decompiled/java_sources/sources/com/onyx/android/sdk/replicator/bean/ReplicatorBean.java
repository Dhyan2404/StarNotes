package com.onyx.android.sdk.replicator.bean;

import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u0004\u0010\u000eR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0007\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;", "", "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;", "error", "setError", "", "status", "setStatus", "", "isSuccess", "a", "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;", "getError", "()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;", "(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)V", "b", "I", "getStatus", "()I", "(I)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReplicatorBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public ReplicatorError error;

    /* renamed from: b, reason: from kotlin metadata */
    public int status = 4;

    @Nullable
    public final ReplicatorError getError() {
        return this.error;
    }

    public final int getStatus() {
        return this.status;
    }

    public final boolean isSuccess() {
        return this.error == null;
    }

    /* renamed from: setError, reason: collision with other method in class */
    public final void m72340setError(@Nullable ReplicatorError replicatorError) {
        this.error = replicatorError;
    }

    /* renamed from: setStatus, reason: collision with other method in class */
    public final void m72341setStatus(int i) {
        this.status = i;
    }

    @NotNull
    public final ReplicatorBean setError(@Nullable ReplicatorError error) {
        this.error = error;
        return this;
    }

    @NotNull
    public final ReplicatorBean setStatus(int status) {
        this.status = status;
        return this;
    }
}
