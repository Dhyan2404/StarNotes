package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4CollectionObserver;
import com.couchbase.lite.internal.core.impl.NativeC4CollectionObserver;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.listener.ChangeNotifier;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
public final class C4CollectionObserver extends C4NativePeer implements ChangeNotifier.C4ChangeProducer<C4DocumentChange> {

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final Runnable listener;

    @VisibleForTesting
    final long token;

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4CollectionObserver();
    private static final TaggedWeakPeerBinding<C4CollectionObserver> BOUND_OBSERVERS = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCreate(long j, long j2) throws LiteCoreException;

        void nFree(long j);

        @NonNull
        C4DocumentChange[] nGetChanges(long j, int i);
    }

    private C4CollectionObserver(@NonNull NativeImpl nativeImpl, long j, long j2, @NonNull Runnable runnable) {
        super(j2);
        this.impl = nativeImpl;
        this.token = j;
        this.listener = runnable;
    }

    public static void callback(long j) {
        Log.m9899d(LogDomain.DATABASE, "C4CollectionObserver.callback @%x", Long.valueOf(j));
        C4CollectionObserver c4CollectionObserver = (C4CollectionObserver) BOUND_OBSERVERS.getBinding(j);
        if (c4CollectionObserver == null) {
            return;
        }
        c4CollectionObserver.listener.run();
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.gx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4CollectionObserver.this.lambda$closePeer$1((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
        BOUND_OBSERVERS.unbind(this.token);
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nFree(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List lambda$getChanges$0(int i, Long l) throws RuntimeException {
        C4DocumentChange[] nGetChanges = this.impl.nGetChanges(l.longValue(), i);
        if (nGetChanges.length <= 0) {
            return null;
        }
        return Arrays.asList(nGetChanges);
    }

    @NonNull
    public static C4CollectionObserver newObserver(long j, @NonNull Runnable runnable) throws LiteCoreException {
        return newObserver(NATIVE_IMPL, j, runnable);
    }

    @Override // java.lang.AutoCloseable, com.couchbase.lite.internal.listener.ChangeNotifier.C4ChangeProducer
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

    @Override // com.couchbase.lite.internal.listener.ChangeNotifier.C4ChangeProducer
    @Nullable
    public List<C4DocumentChange> getChanges(final int i) {
        return (List) nullableWithPeerOrThrow(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.hx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                List lambda$getChanges$0;
                lambda$getChanges$0 = C4CollectionObserver.this.lambda$getChanges$0(i, (Long) obj);
                return lambda$getChanges$0;
            }
        });
    }

    @NonNull
    @VisibleForTesting
    public static C4CollectionObserver newObserver(@NonNull NativeImpl nativeImpl, long j, @NonNull Runnable runnable) throws LiteCoreException {
        TaggedWeakPeerBinding<C4CollectionObserver> taggedWeakPeerBinding = BOUND_OBSERVERS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4CollectionObserver c4CollectionObserver = new C4CollectionObserver(nativeImpl, reserveKey, nativeImpl.nCreate(reserveKey, j), runnable);
        taggedWeakPeerBinding.bind(reserveKey, c4CollectionObserver);
        return c4CollectionObserver;
    }
}
