package com.couchbase.lite.internal.core.peers;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteError;
import java.util.Set;

/* loaded from: classes4.dex */
abstract class PeerBinding<T> {
    public synchronized void bind(long j, @NonNull T t) {
        preBind(j, t);
        T t2 = get(j);
        if (t2 == t) {
            return;
        }
        if (t2 == null) {
            set(j, t);
            return;
        }
        throw new CouchbaseLiteError("Attempt to rebind peer @x" + Long.toHexString(j));
    }

    @VisibleForTesting
    public abstract void clear();

    @GuardedBy("this")
    public abstract boolean exists(long j);

    @Nullable
    @GuardedBy("this")
    public abstract T get(long j);

    @Nullable
    public synchronized T getBinding(long j) {
        preGetBinding(j);
        return get(j);
    }

    @NonNull
    @VisibleForTesting
    public abstract Set<Long> keySet();

    @GuardedBy("this")
    public abstract void preBind(long j, @NonNull T t);

    @GuardedBy("this")
    public abstract void preGetBinding(long j);

    @GuardedBy("this")
    public abstract void remove(long j);

    @GuardedBy("this")
    public abstract void set(long j, @Nullable T t);

    @VisibleForTesting
    public abstract int size();

    public synchronized void unbind(long j) {
        remove(j);
    }
}
