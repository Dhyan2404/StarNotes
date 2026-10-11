package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketToCore;

/* loaded from: classes4.dex */
public interface BaseSocketFactory {

    @NonNull
    @VisibleForTesting
    public static final TaggedWeakPeerBinding<BaseSocketFactory> BOUND_SOCKET_FACTORIES = new TaggedWeakPeerBinding<>();

    static long bindSocketFactory(@NonNull BaseSocketFactory baseSocketFactory) {
        TaggedWeakPeerBinding<BaseSocketFactory> taggedWeakPeerBinding = BOUND_SOCKET_FACTORIES;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        taggedWeakPeerBinding.bind(reserveKey, baseSocketFactory);
        return reserveKey;
    }

    @Nullable
    static BaseSocketFactory getBoundSocketFactory(long j) {
        return (BaseSocketFactory) BOUND_SOCKET_FACTORIES.getBinding(j);
    }

    static void unbindSocketFactory(long j) {
        BOUND_SOCKET_FACTORIES.unbind(j);
    }

    @NonNull
    SocketFromCore createSocket(@NonNull SocketToCore socketToCore, @NonNull String str, @NonNull String str2, int i, @NonNull String str3, @NonNull byte[] bArr);
}
