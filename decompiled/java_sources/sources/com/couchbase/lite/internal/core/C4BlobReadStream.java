package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4BlobReadStream;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4BlobReadStream extends C4NativePeer {

    @NonNull
    private final C4BlobStore.NativeImpl impl;

    public C4BlobReadStream(@NonNull C4BlobStore.NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.aw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobReadStream.this.lambda$closePeer$2((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$2(Long l) throws RuntimeException {
        C4BlobStore.NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nCloseReadStream(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$0(byte[] bArr, int i, long j, Long l) throws LiteCoreException {
        return Integer.valueOf(this.impl.nRead(l.longValue(), bArr, i, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$seek$1(long j, Long l) throws LiteCoreException {
        this.impl.nSeek(l.longValue(), j);
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

    public long getLength() throws LiteCoreException {
        final C4BlobStore.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.yv
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4BlobStore.NativeImpl.this.nGetLength(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public int read(final byte[] bArr, final int i, final long j) throws LiteCoreException {
        return ((Integer) withPeerOrDefault(0, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.bw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                Integer lambda$read$0;
                lambda$read$0 = C4BlobReadStream.this.lambda$read$0(bArr, i, j, (Long) obj);
                return lambda$read$0;
            }
        })).intValue();
    }

    public void seek(final long j) throws LiteCoreException {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.zv
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobReadStream.this.lambda$seek$1(j, (Long) obj);
            }
        });
    }
}
