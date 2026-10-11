package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4DocumentObserver;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;

/* loaded from: classes4.dex */
public final class C4CollectionDocObserver extends C4DocumentObserver {
    private C4CollectionDocObserver(@NonNull C4DocumentObserver.NativeImpl nativeImpl, long j, long j2, @NonNull Runnable runnable) {
        super(nativeImpl, j, j2, runnable);
    }

    @NonNull
    public static C4CollectionDocObserver newObserver(long j, @NonNull String str, @NonNull Runnable runnable) throws LiteCoreException {
        return newObserver(C4DocumentObserver.NATIVE_IMPL, j, str, runnable);
    }

    @NonNull
    @VisibleForTesting
    public static C4CollectionDocObserver newObserver(@NonNull C4DocumentObserver.NativeImpl nativeImpl, long j, @NonNull String str, @NonNull Runnable runnable) throws LiteCoreException {
        TaggedWeakPeerBinding<C4DocumentObserver> taggedWeakPeerBinding = C4DocumentObserver.BOUND_OBSERVERS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4CollectionDocObserver c4CollectionDocObserver = new C4CollectionDocObserver(nativeImpl, reserveKey, nativeImpl.nCreate(reserveKey, j, str), runnable);
        taggedWeakPeerBinding.bind(reserveKey, c4CollectionDocObserver);
        return c4CollectionDocObserver;
    }
}
