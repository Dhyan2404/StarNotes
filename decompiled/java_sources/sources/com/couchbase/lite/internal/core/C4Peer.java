package com.couchbase.lite.internal.core;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Peer;
import com.couchbase.lite.internal.exec.CBLExecutor;
import com.couchbase.lite.internal.exec.Cleaner;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.CoroutineContextKt;

/* loaded from: classes4.dex */
public abstract class C4Peer implements AutoCloseable {

    @VisibleForTesting
    static final Cleaner CLEANER = new Cleaner("c4peer");

    @VisibleForTesting
    static final CBLExecutor CORE_CLEANER = new CBLExecutor("CoreCleaner", 3, 3, new LinkedBlockingQueue());

    @NonNull
    final Cleaner.Cleanable cleaner;

    @NonNull
    private final String name;

    @NonNull
    private final PeerHolder peerHolder;

    /* loaded from: classes4.dex */
    public interface PeerCleaner {
        void dispose(long j);
    }

    /* loaded from: classes4.dex */
    public static class PeerHolder implements Cleaner.Cleanable {

        @Nullable
        private final PeerCleaner cleaner;
        private final long createdAt = System.currentTimeMillis();

        /* renamed from: id */
        protected final long f16301id;

        @NonNull
        private final AtomicReference<Exception> lifecycle;

        @NonNull
        private final String name;

        @GuardedBy("name")
        private long peer;

        public PeerHolder(@NonNull String str, long j, @Nullable PeerCleaner peerCleaner) {
            this.f16301id = j;
            this.cleaner = peerCleaner;
            this.peer = j;
            this.name = str;
            this.lifecycle = new AtomicReference<>(!CouchbaseLiteInternal.debugging() ? null : new Exception("Created at:"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: disposeRef, reason: merged with bridge method [inline-methods] */
        public void lambda$clean$0(@NonNull PeerCleaner peerCleaner) {
            long j;
            synchronized (getPeerLock()) {
                j = this.peer;
                this.peer = 0L;
            }
            if (j == 0) {
                return;
            }
            peerCleaner.dispose(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$clean$1() {
            Log.m9899d(LogDomain.DATABASE, "Peer %s not explicitly closed", Long.valueOf(this.createdAt), this.name);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void logBadCall() {
            Log.m9909w(LogDomain.DATABASE, "Operation on closed native peer", new Exception("Used at:", this.lifecycle.get()));
        }

        @Override // com.couchbase.lite.internal.exec.Cleaner.Cleanable
        @SuppressFBWarnings({"JLM_JSR166_UTILCONCURRENT_MONITORENTER"})
        public final void clean(boolean z) {
            final PeerCleaner peerCleaner = this.cleaner;
            if (peerCleaner != null) {
                if (z) {
                    C4Peer.CORE_CLEANER.execute(new Runnable() { // from class: com.couchbase.lite.internal.core.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            C4Peer.PeerHolder.this.lambda$clean$0(peerCleaner);
                        }
                    });
                } else {
                    lambda$clean$0(peerCleaner);
                }
            }
            Exception exc = this.lifecycle.get();
            if (exc == null) {
                return;
            }
            if (z) {
                C4Peer.CORE_CLEANER.execute(new Runnable() { // from class: com.couchbase.lite.internal.core.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        C4Peer.PeerHolder.this.lambda$clean$1();
                    }
                });
            } else {
                this.lifecycle.set(new Exception("Closed at:", exc));
            }
        }

        @NonNull
        public Object getPeerLock() {
            return this.name;
        }

        @NonNull
        public String toString() {
            return "PeerHolder{" + Long.toHexString(this.peer) + CoroutineContextKt.f98133a + this.createdAt + "}";
        }
    }

    /* loaded from: classes4.dex */
    public static class UncountedPeerHolder extends PeerHolder {
        public UncountedPeerHolder(@NonNull String str, long j, @Nullable PeerCleaner peerCleaner) {
            super(str, j, peerCleaner);
        }

        public boolean equals(@Nullable Object obj) {
            return this == obj || ((obj instanceof PeerHolder) && ((PeerHolder) obj).f16301id == this.f16301id);
        }

        public int hashCode() {
            return (int) this.f16301id;
        }
    }

    public C4Peer(long j, @Nullable PeerCleaner peerCleaner) {
        this(j, peerCleaner, true);
    }

    @Override // java.lang.AutoCloseable
    @CallSuper
    public void close() {
        this.cleaner.clean(false);
    }

    @NonNull
    public final Object getPeerLock() {
        return this.peerHolder.getPeerLock();
    }

    @NonNull
    public String toString() {
        return this.name;
    }

    public final <E extends Exception> void voidWithPeerOrThrow(@NonNull InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        synchronized (getPeerLock()) {
            long j = this.peerHolder.peer;
            if (j != 0) {
                consumerThrows.accept(Long.valueOf(j));
            } else {
                this.peerHolder.logBadCall();
                throw new CouchbaseLiteError("Closed peer");
            }
        }
    }

    public final <E extends Exception> void voidWithPeerOrWarn(@NonNull InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        synchronized (getPeerLock()) {
            long j = this.peerHolder.peer;
            if (j != 0) {
                consumerThrows.accept(Long.valueOf(j));
            } else {
                this.peerHolder.logBadCall();
            }
        }
    }

    @NonNull
    public final <R, E extends Exception> R withPeerOrDefault(@NonNull R r, @NonNull InterfaceC2217Fn.NullableFunctionThrows<Long, R, E> nullableFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            long j = this.peerHolder.peer;
            if (j == 0) {
                this.peerHolder.logBadCall();
                return r;
            }
            R apply = nullableFunctionThrows.apply(Long.valueOf(j));
            if (apply != null) {
                r = apply;
            }
            return r;
        }
    }

    @Nullable
    public final <R, E extends Exception> R withPeerOrNull(@NonNull InterfaceC2217Fn.NullableFunctionThrows<Long, R, E> nullableFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            long j = this.peerHolder.peer;
            if (j != 0) {
                return nullableFunctionThrows.apply(Long.valueOf(j));
            }
            this.peerHolder.logBadCall();
            return null;
        }
    }

    @NonNull
    public final <R, E extends Exception> R withPeerOrThrow(@NonNull InterfaceC2217Fn.NonNullFunctionThrows<Long, R, E> nonNullFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            long j = this.peerHolder.peer;
            if (j != 0) {
                return nonNullFunctionThrows.apply(Long.valueOf(j));
            }
            this.peerHolder.logBadCall();
            throw new IllegalStateException("Closed peer");
        }
    }

    public C4Peer(long j, @Nullable PeerCleaner peerCleaner, boolean z) {
        PeerHolder uncountedPeerHolder;
        String str = getClass().getSimpleName() + ClassUtils.objId(this);
        this.name = str;
        Preconditions.assertNotZero(j, "peer");
        if (z) {
            uncountedPeerHolder = new PeerHolder(str, j, peerCleaner);
        } else {
            uncountedPeerHolder = new UncountedPeerHolder(str, j, peerCleaner);
        }
        this.peerHolder = uncountedPeerHolder;
        this.cleaner = CLEANER.register(this, uncountedPeerHolder);
    }
}
