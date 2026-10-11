package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.core.impl.NativeC4QueryEnumerator;
import com.couchbase.lite.internal.fleece.FLArray;
import com.couchbase.lite.internal.fleece.FLArrayIterator;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4QueryEnumerator extends C4NativePeer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4QueryEnumerator();

    @NonNull
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nFree(long j);

        long nGetColumns(long j);

        long nGetMissingColumns(long j);

        boolean nNext(long j) throws LiteCoreException;
    }

    @VisibleForTesting
    public C4QueryEnumerator(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.tz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4QueryEnumerator.this.lambda$closePeer$1((Long) obj);
            }
        });
    }

    @NonNull
    public static C4QueryEnumerator create(long j) {
        return new C4QueryEnumerator(NATIVE_IMPL, Preconditions.assertNotZero(j, "query enumerator peer"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nFree(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLArrayIterator lambda$getColumns$0(Long l) throws RuntimeException {
        return FLArray.unmanagedIterator(this.impl.nGetColumns(l.longValue()));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        closePeer(null);
    }

    public void finalize() throws Throwable {
        try {
            closePeer(LogDomain.QUERY);
        } finally {
            super.finalize();
        }
    }

    @NonNull
    public FLArrayIterator getColumns() {
        return (FLArrayIterator) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.vz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                FLArrayIterator lambda$getColumns$0;
                lambda$getColumns$0 = C4QueryEnumerator.this.lambda$getColumns$0((Long) obj);
                return lambda$getColumns$0;
            }
        });
    }

    public long getMissingColumns() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.wz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4QueryEnumerator.NativeImpl.this.nGetMissingColumns(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public boolean next() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.uz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(C4QueryEnumerator.NativeImpl.this.nNext(((Long) obj).longValue()));
            }
        })).booleanValue();
    }
}
