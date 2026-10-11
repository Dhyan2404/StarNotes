package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4DocumentObserver;
import com.couchbase.lite.internal.core.impl.NativeC4DocumentObserver;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* loaded from: classes4.dex */
public class C4DocumentObserver extends C4NativePeer {

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final Runnable listener;

    @VisibleForTesting
    final long token;

    @NonNull
    protected static final NativeImpl NATIVE_IMPL = new NativeC4DocumentObserver();
    protected static final TaggedWeakPeerBinding<C4DocumentObserver> BOUND_OBSERVERS = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCreate(long j, long j2, String str) throws LiteCoreException;

        void nFree(long j);
    }

    public C4DocumentObserver(@NonNull NativeImpl nativeImpl, long j, long j2, @NonNull Runnable runnable) {
        super(j2);
        this.impl = nativeImpl;
        this.token = j;
        this.listener = runnable;
    }

    public static void callback(long j, long j2, @Nullable String str) {
        Log.m9899d(LogDomain.DATABASE, "C4CollectionDocObserver.callback @0x%x: %s (5d)", Long.valueOf(j), str, Long.valueOf(j2));
        C4DocumentObserver c4DocumentObserver = (C4DocumentObserver) BOUND_OBSERVERS.getBinding(j);
        if (c4DocumentObserver == null) {
            return;
        }
        c4DocumentObserver.listener.run();
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.yy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4DocumentObserver.this.lambda$closePeer$0((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$0(Long l) throws RuntimeException {
        BOUND_OBSERVERS.unbind(this.token);
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nFree(l.longValue());
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        closePeer(null);
    }

    public void finalize() throws Throwable {
        try {
            closePeer(LogDomain.DATABASE);
        } finally {
            super.finalize();
        }
    }
}
