package com.couchbase.lite.internal.core.peers;

import androidx.annotation.NonNull;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.internal.utils.MathUtils;

/* loaded from: classes4.dex */
public class TaggedWeakPeerBinding<T> extends WeakPeerBinding<T> {
    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    public void preBind(long j, @NonNull T t) {
        if (!exists(j)) {
            throw new CouchbaseLiteError("attempt to use un-reserved key");
        }
    }

    @Override // com.couchbase.lite.internal.core.peers.PeerBinding
    public void preGetBinding(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException("Key out of bounds: " + j);
        }
    }

    public synchronized long reserveKey() {
        long nextInt;
        do {
            nextInt = MathUtils.RANDOM.get().nextInt(Integer.MAX_VALUE);
        } while (exists(nextInt));
        super.set(nextInt, null);
        return nextInt;
    }
}
