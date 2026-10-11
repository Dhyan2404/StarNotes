package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4BlobKey;
import com.couchbase.lite.internal.core.impl.NativeC4Blob;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4BlobKey extends C4NativePeer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Blob();
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nFree(long j);

        long nFromString(@Nullable String str) throws LiteCoreException;

        @Nullable
        String nToString(long j);
    }

    @VisibleForTesting
    public C4BlobKey(@NonNull NativeImpl nativeImpl, @Nullable String str) throws LiteCoreException {
        this(nativeImpl, nativeImpl.nFromString(str));
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.xv
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobKey.this.lambda$closePeer$0((Long) obj);
            }
        });
    }

    @NonNull
    public static C4BlobKey create(@Nullable String str) throws LiteCoreException {
        return new C4BlobKey(NATIVE_IMPL, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$0(Long l) throws RuntimeException {
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

    public long getHandle() {
        return getPeer();
    }

    @Override // com.couchbase.lite.internal.core.C4NativePeer
    @NonNull
    public String toString() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (String) withPeerOrDefault("unknown", new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.wv
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4BlobKey.NativeImpl.this.nToString(((Long) obj).longValue());
            }
        });
    }

    private C4BlobKey(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    @NonNull
    public static C4BlobKey create(long j) {
        return new C4BlobKey(NATIVE_IMPL, j);
    }
}
