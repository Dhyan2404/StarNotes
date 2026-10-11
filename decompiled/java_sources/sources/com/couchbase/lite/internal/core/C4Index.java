package com.couchbase.lite.internal.core;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4Index;
import com.couchbase.lite.internal.core.C4IndexUpdater;
import com.couchbase.lite.internal.core.impl.NativeC4Index;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* loaded from: classes4.dex */
public final class C4Index extends C4NativePeer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Index();
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nBeginUpdate(long j, int i) throws LiteCoreException;

        void nReleaseIndex(long j);
    }

    @VisibleForTesting
    public C4Index(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.zy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Index.this.lambda$closePeer$1((Long) obj);
            }
        });
    }

    @NonNull
    public static C4Index create(long j) {
        return new C4Index(NATIVE_IMPL, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ C4IndexUpdater lambda$beginUpdate$0(int i, Long l) throws LiteCoreException {
        long nBeginUpdate = this.impl.nBeginUpdate(l.longValue(), i);
        if (nBeginUpdate == 0) {
            return null;
        }
        return C4IndexUpdater.create(nBeginUpdate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nReleaseIndex(l.longValue());
        }
    }

    @Nullable
    @GuardedBy("Database.lock")
    public C4IndexUpdater beginUpdate(final int i) throws LiteCoreException {
        return (C4IndexUpdater) nullableWithPeerOrThrow(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.az
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                C4IndexUpdater lambda$beginUpdate$0;
                lambda$beginUpdate$0 = C4Index.this.lambda$beginUpdate$0(i, (Long) obj);
                return lambda$beginUpdate$0;
            }
        });
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
