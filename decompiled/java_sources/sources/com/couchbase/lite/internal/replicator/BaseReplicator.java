package com.couchbase.lite.internal.replicator;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public abstract class BaseReplicator implements AutoCloseable {

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4Replicator c4Replicator;
    private final Object lock = new Object();
    protected final Executor dispatcher = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();

    /* renamed from: id */
    @NonNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private String f16339id = getReplId(null) + ClassUtils.objId(this);

    @NonNull
    private String getReplId(@Nullable C4Replicator c4Replicator) {
        return c4Replicator == null ? "unattached" : c4Replicator.getReplId();
    }

    private void setC4ReplicatorInternal(@Nullable C4Replicator c4Replicator) {
        String str;
        C4Replicator c4Replicator2;
        String replId;
        synchronized (getReplicatorLock()) {
            str = this.f16339id;
            c4Replicator2 = this.c4Replicator;
            replId = getReplId(c4Replicator);
            this.f16339id = replId + ClassUtils.objId(this);
            this.c4Replicator = c4Replicator;
        }
        Log.m9899d(LogDomain.REPLICATOR, "%s: new c4Repl: %s", str, replId, this);
        if (c4Replicator2 != null) {
            c4Replicator2.close();
        }
    }

    public final void closeC4Replicator() {
        setC4ReplicatorInternal(null);
    }

    @Nullable
    public final C4Replicator getC4Replicator() {
        C4Replicator c4Replicator;
        synchronized (getReplicatorLock()) {
            c4Replicator = this.c4Replicator;
        }
        return c4Replicator;
    }

    @NonNull
    public final String getId() {
        String str;
        synchronized (getReplicatorLock()) {
            str = this.f16339id;
        }
        return str;
    }

    @NonNull
    public final Object getReplicatorLock() {
        return this.lock;
    }

    public final void setC4Replicator(@NonNull C4Replicator c4Replicator) {
        setC4ReplicatorInternal(c4Replicator);
    }
}
