package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4BlobKey;
import com.couchbase.lite.internal.core.C4BlobReadStream;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.core.impl.NativeC4Blob;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public abstract class C4BlobStore extends C4NativePeer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Blob();
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nCloseReadStream(long j);

        void nCloseWriteStream(long j);

        long nComputeBlobKey(long j) throws LiteCoreException;

        long nCreate(long j, byte[] bArr) throws LiteCoreException;

        void nDelete(long j, long j2) throws LiteCoreException;

        long nGetBlobStore(long j) throws LiteCoreException;

        @NonNull
        FLSliceResult nGetContents(long j, long j2) throws LiteCoreException;

        @Nullable
        String nGetFilePath(long j, long j2) throws LiteCoreException;

        long nGetLength(long j) throws LiteCoreException;

        long nGetSize(long j, long j2);

        void nInstall(long j) throws LiteCoreException;

        long nOpenReadStream(long j, long j2) throws LiteCoreException;

        long nOpenWriteStream(long j) throws LiteCoreException;

        int nRead(long j, byte[] bArr, int i, long j2) throws LiteCoreException;

        void nSeek(long j, long j2) throws LiteCoreException;

        void nWrite(long j, byte[] bArr, int i) throws LiteCoreException;
    }

    /* loaded from: classes4.dex */
    public static final class UnmanagedC4BlobStore extends C4BlobStore {
        public UnmanagedC4BlobStore(@NonNull NativeImpl nativeImpl, long j) {
            super(nativeImpl, j);
        }
    }

    @NonNull
    public static C4BlobStore create(long j) throws LiteCoreException {
        NativeImpl nativeImpl = NATIVE_IMPL;
        return new UnmanagedC4BlobStore(nativeImpl, nativeImpl.nGetBlobStore(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ C4BlobKey lambda$create$3(byte[] bArr, Long l) throws LiteCoreException {
        return C4BlobKey.create(this.impl.nCreate(l.longValue(), bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$delete$4(C4BlobKey c4BlobKey, Long l) throws LiteCoreException {
        this.impl.nDelete(l.longValue(), c4BlobKey.getHandle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLSliceResult lambda$getContents$1(C4BlobKey c4BlobKey, Long l) throws LiteCoreException {
        return this.impl.nGetContents(l.longValue(), c4BlobKey.getHandle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getFilePath$2(C4BlobKey c4BlobKey, Long l) throws LiteCoreException {
        return this.impl.nGetFilePath(l.longValue(), c4BlobKey.getHandle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$getSize$0(C4BlobKey c4BlobKey, Long l) throws RuntimeException {
        return Long.valueOf(this.impl.nGetSize(l.longValue(), c4BlobKey.getHandle()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ C4BlobReadStream lambda$openReadStream$5(C4BlobKey c4BlobKey, Long l) throws LiteCoreException {
        NativeImpl nativeImpl = this.impl;
        return new C4BlobReadStream(nativeImpl, nativeImpl.nOpenReadStream(l.longValue(), c4BlobKey.getHandle()));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        releasePeer(null, null);
    }

    public void delete(@NonNull final C4BlobKey c4BlobKey) throws LiteCoreException {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.iw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4BlobStore.this.lambda$delete$4(c4BlobKey, (Long) obj);
            }
        });
    }

    @NonNull
    public FLSliceResult getContents(@NonNull final C4BlobKey c4BlobKey) throws LiteCoreException {
        return (FLSliceResult) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.cw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                FLSliceResult lambda$getContents$1;
                lambda$getContents$1 = C4BlobStore.this.lambda$getContents$1(c4BlobKey, (Long) obj);
                return lambda$getContents$1;
            }
        });
    }

    @Nullable
    public String getFilePath(@NonNull final C4BlobKey c4BlobKey) throws LiteCoreException {
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.dw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$getFilePath$2;
                lambda$getFilePath$2 = C4BlobStore.this.lambda$getFilePath$2(c4BlobKey, (Long) obj);
                return lambda$getFilePath$2;
            }
        });
    }

    public long getSize(@NonNull final C4BlobKey c4BlobKey) {
        return ((Long) withPeerOrDefault(-1L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.hw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$getSize$0;
                lambda$getSize$0 = C4BlobStore.this.lambda$getSize$0(c4BlobKey, (Long) obj);
                return lambda$getSize$0;
            }
        })).longValue();
    }

    @NonNull
    public C4BlobReadStream openReadStream(@NonNull final C4BlobKey c4BlobKey) throws LiteCoreException {
        return (C4BlobReadStream) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ew
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4BlobReadStream lambda$openReadStream$5;
                lambda$openReadStream$5 = C4BlobStore.this.lambda$openReadStream$5(c4BlobKey, (Long) obj);
                return lambda$openReadStream$5;
            }
        });
    }

    @NonNull
    public C4BlobWriteStream openWriteStream() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return new C4BlobWriteStream(nativeImpl, ((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.fw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4BlobStore.NativeImpl.this.nOpenWriteStream(((Long) obj).longValue()));
            }
        })).longValue());
    }

    private C4BlobStore(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }

    @NonNull
    public C4BlobKey create(@NonNull final byte[] bArr) throws LiteCoreException {
        return (C4BlobKey) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.gw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4BlobKey lambda$create$3;
                lambda$create$3 = C4BlobStore.this.lambda$create$3(bArr, (Long) obj);
                return lambda$create$3;
            }
        });
    }

    @VisibleForTesting
    public C4BlobStore(long j) {
        this(NATIVE_IMPL, j);
    }
}
