package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.core.C4QueryObserver;
import com.couchbase.lite.internal.core.impl.NativeC4QueryObserver;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public final class C4QueryObserver extends C4NativePeer {

    @NonNull
    @VisibleForTesting
    private static final NativeImpl NATIVE_IMPL = new NativeC4QueryObserver();

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<C4QueryObserver> QUERY_OBSERVER_CONTEXT = new TaggedWeakPeerBinding<>();

    @NonNull
    private final InterfaceC2217Fn.Function<Long, C4QueryEnumerator> c4QueryEnumeratorFactory;

    @NonNull
    private final QueryChangeCallback callback;

    @NonNull
    private final NativeImpl impl;
    private final long token;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCreate(long j, long j2);

        void nEnable(long j);

        void nFree(long j);
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface QueryChangeCallback {
        void onQueryChanged(@Nullable C4QueryEnumerator c4QueryEnumerator, @Nullable LiteCoreException liteCoreException);
    }

    @VisibleForTesting
    public C4QueryObserver(@NonNull NativeImpl nativeImpl, long j, @NonNull InterfaceC2217Fn.Function<Long, C4QueryEnumerator> function, long j2, @NonNull QueryChangeCallback queryChangeCallback) {
        super(j);
        this.impl = nativeImpl;
        this.c4QueryEnumeratorFactory = function;
        this.token = j2;
        this.callback = queryChangeCallback;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.yz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4QueryObserver.this.lambda$closePeer$1((Long) obj);
            }
        });
    }

    @NonNull
    public static C4QueryObserver create(@NonNull C4Query c4Query, @NonNull QueryChangeCallback queryChangeCallback) {
        return create(NATIVE_IMPL, new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.zz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
            public final Object apply(Object obj) {
                return C4QueryEnumerator.create(((Long) obj).longValue());
            }
        }, c4Query, queryChangeCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nFree(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$create$0(NativeImpl nativeImpl, long j, Long l) throws RuntimeException {
        return Long.valueOf(nativeImpl.nCreate(j, l.longValue()));
    }

    public static void onQueryChanged(long j, long j2, int i, int i2, @Nullable String str) {
        C4QueryObserver c4QueryObserver = (C4QueryObserver) QUERY_OBSERVER_CONTEXT.getBinding(j);
        if (c4QueryObserver != null) {
            c4QueryObserver.queryChanged(j2, i, i2, str);
            return;
        }
        Log.m9908w(LogDomain.QUERY, "No observer for token: " + j);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        QUERY_OBSERVER_CONTEXT.unbind(this.token);
        closePeer(null);
    }

    public void enable() {
        this.impl.nEnable(getPeer());
    }

    public void finalize() throws Throwable {
        try {
            closePeer(LogDomain.LISTENER);
        } finally {
            super.finalize();
        }
    }

    public void queryChanged(long j, int i, int i2, @Nullable String str) {
        this.callback.onQueryChanged(j == 0 ? null : this.c4QueryEnumeratorFactory.apply(Long.valueOf(j)), i2 != 0 ? new LiteCoreException(i, i2, str) : null);
    }

    @Override // com.couchbase.lite.internal.core.C4NativePeer
    @NonNull
    public String toString() {
        return "C4QueryObserver{" + ClassUtils.objId(this) + "/" + super.toString() + ": " + this.token + "}";
    }

    @NonNull
    public static C4QueryObserver create(@NonNull final NativeImpl nativeImpl, @NonNull InterfaceC2217Fn.Function<Long, C4QueryEnumerator> function, @NonNull C4Query c4Query, @NonNull QueryChangeCallback queryChangeCallback) {
        TaggedWeakPeerBinding<C4QueryObserver> taggedWeakPeerBinding = QUERY_OBSERVER_CONTEXT;
        final long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4QueryObserver c4QueryObserver = new C4QueryObserver(nativeImpl, ((Long) c4Query.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.xz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$create$0;
                lambda$create$0 = C4QueryObserver.lambda$create$0(C4QueryObserver.NativeImpl.this, reserveKey, (Long) obj);
                return lambda$create$0;
            }
        })).longValue(), function, reserveKey, queryChangeCallback);
        taggedWeakPeerBinding.bind(reserveKey, c4QueryObserver);
        return c4QueryObserver;
    }
}
