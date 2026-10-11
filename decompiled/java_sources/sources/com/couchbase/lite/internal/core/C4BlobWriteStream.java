package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4BlobKey;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.core.C4BlobWriteStream;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Objects;
import org.mortbay.jetty.HttpHeaderValues;

/* loaded from: classes4.dex */
public final class C4BlobWriteStream extends C4NativePeer {

    @NonNull
    private final C4BlobStore.NativeImpl impl;

    public C4BlobWriteStream(@NonNull C4BlobStore.NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.jw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobWriteStream.this.lambda$closePeer$2((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$2(Long l) throws RuntimeException {
        C4BlobStore.NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nCloseWriteStream(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ C4BlobKey lambda$computeBlobKey$1(Long l) throws LiteCoreException {
        return C4BlobKey.create(this.impl.nComputeBlobKey(l.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$0(byte[] bArr, int i, Long l) throws LiteCoreException {
        this.impl.nWrite(l.longValue(), bArr, i);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        closePeer(null);
    }

    @NonNull
    public C4BlobKey computeBlobKey() throws LiteCoreException {
        return (C4BlobKey) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.mw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4BlobKey lambda$computeBlobKey$1;
                lambda$computeBlobKey$1 = C4BlobWriteStream.this.lambda$computeBlobKey$1((Long) obj);
                return lambda$computeBlobKey$1;
            }
        });
    }

    public void finalize() throws Throwable {
        try {
            closePeer(LogDomain.DATABASE);
        } finally {
            super.finalize();
        }
    }

    public void install() throws LiteCoreException {
        final C4BlobStore.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.lw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobStore.NativeImpl.this.nInstall(((Long) obj).longValue());
            }
        });
    }

    public void write(@NonNull byte[] bArr) throws LiteCoreException {
        Preconditions.assertNotNull(bArr, HttpHeaderValues.BYTES);
        write(bArr, bArr.length);
    }

    public void write(@NonNull final byte[] bArr, final int i) throws LiteCoreException {
        Preconditions.assertNotNull(bArr, HttpHeaderValues.BYTES);
        if (i <= 0) {
            return;
        }
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.kw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobWriteStream.this.lambda$write$0(bArr, i, (Long) obj);
            }
        });
    }
}
