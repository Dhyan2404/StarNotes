package com.couchbase.lite.internal.core.peers;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public abstract class WeakPeerBinding<T> extends PeerBinding<T> {

    @NonNull
    @GuardedBy("this")
    private final Map<Long, WeakReference<T>> bindings = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    public synchronized /* bridge */ /* synthetic */ void bind(long j, @NonNull Object obj) {
        super.bind(j, obj);
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @VisibleForTesting
    public final synchronized void clear() {
        this.bindings.clear();
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    public boolean exists(long j) {
        return this.bindings.containsKey(Long.valueOf(j));
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @Nullable
    @GuardedBy("this")
    public T get(long j) {
        WeakReference<T> weakReference = this.bindings.get(Long.valueOf(j));
        if (weakReference == null) {
            return null;
        }
        T t = weakReference.get();
        if (t != null) {
            return t;
        }
        this.bindings.remove(Long.valueOf(j));
        return null;
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @Nullable
    public synchronized /* bridge */ /* synthetic */ Object getBinding(long j) {
        return super.getBinding(j);
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @NonNull
    @VisibleForTesting
    public final synchronized Set<Long> keySet() {
        return this.bindings.keySet();
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @GuardedBy("this")
    public void remove(long j) {
        this.bindings.remove(Long.valueOf(j));
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @GuardedBy("this")
    public void set(long j, @Nullable T t) {
        this.bindings.put(Long.valueOf(j), t == null ? null : new WeakReference<>(t));
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    @VisibleForTesting
    public final synchronized int size() {
        return this.bindings.size();
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    public synchronized /* bridge */ /* synthetic */ void unbind(long j) {
        super.unbind(j);
    }
}
