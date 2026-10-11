package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4Document;
import com.couchbase.lite.internal.core.C4Peer;
import com.couchbase.lite.internal.core.impl.NativeC4Document;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLSharedKeys;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.List;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4Document extends C4Peer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Document();

    @NonNull
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        @Nullable
        String nBodyAsJSON(long j, boolean z) throws LiteCoreException;

        long nCreateFromSlice(long j, String str, long j2, long j3, int i) throws LiteCoreException;

        boolean nDictContainsBlobs(long j, long j2, long j3);

        void nFree(long j);

        int nGetFlags(long j);

        long nGetFromCollection(long j, String str, boolean z, boolean z2) throws LiteCoreException;

        @NonNull
        String nGetRevID(long j);

        @Nullable
        String nGetRevisionHistory(long j, long j2, long j3, @Nullable String[] strArr) throws LiteCoreException;

        long nGetSelectedBody2(long j);

        int nGetSelectedFlags(long j);

        @NonNull
        String nGetSelectedRevID(long j);

        long nGetSelectedSequence(long j);

        long nGetSequence(long j);

        long nGetTimestamp(long j);

        void nResolveConflict(long j, String str, String str2, byte[] bArr, int i) throws LiteCoreException;

        void nSave(long j, int i) throws LiteCoreException;

        void nSelectNextLeafRevision(long j, boolean z, boolean z2) throws LiteCoreException;

        long nUpdate(long j, long j2, long j3, int i) throws LiteCoreException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C4Document(@NonNull final NativeImpl nativeImpl, long j) {
        super(j, new C4Peer.PeerCleaner() { // from class: com.sunia.HTREnginev2.ty
            @Override // com.couchbase.lite.internal.core.C4Peer.PeerCleaner
            public final void dispose(long j2) {
                C4Document.NativeImpl.this.nFree(j2);
            }
        });
        Objects.requireNonNull(nativeImpl);
        this.impl = nativeImpl;
    }

    @NonNull
    public static C4Document create(@NonNull C4Collection c4Collection, @NonNull final String str, @Nullable final FLSliceResult fLSliceResult, final int i) throws LiteCoreException {
        return (C4Document) c4Collection.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.sy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4Document lambda$create$0;
                lambda$create$0 = C4Document.lambda$create$0(str, fLSliceResult, i, (Long) obj);
                return lambda$create$0;
            }
        });
    }

    public static boolean dictContainsBlobs(@NonNull FLSliceResult fLSliceResult, @NonNull FLSharedKeys fLSharedKeys) {
        return NATIVE_IMPL.nDictContainsBlobs(fLSliceResult.getBase(), fLSliceResult.getSize(), fLSharedKeys.getHandle());
    }

    @Nullable
    public static C4Document get(@NonNull C4Collection c4Collection, @NonNull final String str) throws LiteCoreException {
        long longValue = ((Long) c4Collection.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ky
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$get$1;
                lambda$get$1 = C4Document.lambda$get$1(str, (Long) obj);
                return lambda$get$1;
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return new C4Document(NATIVE_IMPL, longValue);
    }

    private int getFlags() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Integer) withPeerOrDefault(0, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.ey
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Integer.valueOf(C4Document.NativeImpl.this.nGetFlags(((Long) obj).longValue()));
            }
        })).intValue();
    }

    @NonNull
    @VisibleForTesting
    public static C4Document getOrCreateDocument(@NonNull C4Collection c4Collection, @NonNull final String str) throws LiteCoreException {
        long longValue = ((Long) c4Collection.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.xy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$getOrCreateDocument$3;
                lambda$getOrCreateDocument$3 = C4Document.lambda$getOrCreateDocument$3(str, (Long) obj);
                return lambda$getOrCreateDocument$3;
            }
        })).longValue();
        if (longValue != 0) {
            return new C4Document(NATIVE_IMPL, longValue);
        }
        throw new LiteCoreException(1, 7, "Could not create document: " + str);
    }

    @Nullable
    public static C4Document getWithRevs(@NonNull C4Collection c4Collection, @NonNull final String str) throws LiteCoreException {
        long longValue = ((Long) c4Collection.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.uy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$getWithRevs$2;
                lambda$getWithRevs$2 = C4Document.lambda$getWithRevs$2(str, (Long) obj);
                return lambda$getWithRevs$2;
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return new C4Document(NATIVE_IMPL, longValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$bodyAsJSON$10(boolean z, Long l) throws LiteCoreException {
        return this.impl.nBodyAsJSON(l.longValue(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4Document lambda$create$0(String str, FLSliceResult fLSliceResult, int i, Long l) throws LiteCoreException {
        NativeImpl nativeImpl = NATIVE_IMPL;
        return new C4Document(nativeImpl, nativeImpl.nCreateFromSlice(l.longValue(), str, fLSliceResult == null ? 0L : fLSliceResult.getBase(), fLSliceResult != null ? fLSliceResult.getSize() : 0L, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$get$1(String str, Long l) throws LiteCoreException {
        return Long.valueOf(NATIVE_IMPL.nGetFromCollection(l.longValue(), str, true, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getOrCreateDocument$3(String str, Long l) throws LiteCoreException {
        return Long.valueOf(NATIVE_IMPL.nGetFromCollection(l.longValue(), str, false, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getRevisionHistory$4(Long l, long j, String[] strArr, Long l2) throws LiteCoreException {
        return this.impl.nGetRevisionHistory(l.longValue(), l2.longValue(), j, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getRevisionHistory$5(final long j, final String[] strArr, final Long l) throws LiteCoreException {
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.vy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$getRevisionHistory$4;
                lambda$getRevisionHistory$4 = C4Document.this.lambda$getRevisionHistory$4(l, j, strArr, (Long) obj);
                return lambda$getRevisionHistory$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getWithRevs$2(String str, Long l) throws LiteCoreException {
        return Long.valueOf(NATIVE_IMPL.nGetFromCollection(l.longValue(), str, true, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveConflict$7(String str, String str2, byte[] bArr, int i, Long l) throws LiteCoreException {
        this.impl.nResolveConflict(l.longValue(), str, str2, bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$9(int i, Long l) throws LiteCoreException {
        this.impl.nSave(l.longValue(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectNextLeafRevision$6(boolean z, boolean z2, Long l) throws LiteCoreException {
        this.impl.nSelectNextLeafRevision(l.longValue(), z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$update$8(FLSliceResult fLSliceResult, int i, Long l) throws LiteCoreException {
        return Long.valueOf(this.impl.nUpdate(l.longValue(), fLSliceResult == null ? 0L : fLSliceResult.getBase(), fLSliceResult == null ? 0L : fLSliceResult.getSize(), i));
    }

    @Nullable
    public String bodyAsJSON(final boolean z) throws LiteCoreException {
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.hy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$bodyAsJSON$10;
                lambda$bodyAsJSON$10 = C4Document.this.lambda$bodyAsJSON$10(z, (Long) obj);
                return lambda$bodyAsJSON$10;
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4Peer, java.lang.AutoCloseable
    public void close() {
        Log.m9909w(LogDomain.DATABASE, "Unsafe call to C4Document.close()", new Exception("Unsafe call at:"));
    }

    public boolean docExists() {
        return C4Constants.hasFlags(getFlags(), 4096);
    }

    @Nullable
    public String getRevID() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.iy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4Document.NativeImpl.this.nGetRevID(((Long) obj).longValue());
            }
        });
    }

    @Nullable
    public String getRevisionHistory(@NonNull C4Collection c4Collection, final long j, @Nullable List<String> list) throws LiteCoreException {
        final String[] strArr = list == null ? null : (String[]) list.toArray(new String[0]);
        return (String) c4Collection.withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.ny
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$getRevisionHistory$5;
                lambda$getRevisionHistory$5 = C4Document.this.lambda$getRevisionHistory$5(j, strArr, (Long) obj);
                return lambda$getRevisionHistory$5;
            }
        });
    }

    @Nullable
    public FLDict getSelectedBody2() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        long longValue = ((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.gy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Document.NativeImpl.this.nGetSelectedBody2(((Long) obj).longValue()));
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return FLDict.create(longValue);
    }

    public int getSelectedFlags() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Integer) withPeerOrDefault(0, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.ly
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Integer.valueOf(C4Document.NativeImpl.this.nGetSelectedFlags(((Long) obj).longValue()));
            }
        })).intValue();
    }

    @Nullable
    public String getSelectedRevID() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.jy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4Document.NativeImpl.this.nGetSelectedRevID(((Long) obj).longValue());
            }
        });
    }

    public long getSelectedSequence() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.fy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Document.NativeImpl.this.nGetSelectedSequence(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public long getSequence() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.qy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Document.NativeImpl.this.nGetSequence(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public long getTimestamp() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrDefault(-1L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.oy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Document.NativeImpl.this.nGetTimestamp(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public boolean hasDocAttachments() {
        return C4Constants.hasFlags(getFlags(), 4);
    }

    public boolean hasRevAttachments() {
        return C4Constants.hasFlags(getFlags(), 8);
    }

    public boolean isDocConflicted() {
        return C4Constants.hasFlags(getFlags(), 2);
    }

    public boolean isDocDeleted() {
        return C4Constants.hasFlags(getFlags(), 1);
    }

    public boolean isRevConflicted() {
        return C4Constants.hasFlags(getSelectedFlags(), 32);
    }

    public boolean isRevDeleted() {
        return C4Constants.hasFlags(getSelectedFlags(), 1);
    }

    public void resolveConflict(final String str, final String str2, final byte[] bArr, final int i) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.ry
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Document.this.lambda$resolveConflict$7(str, str2, bArr, i, (Long) obj);
            }
        });
    }

    public void save(final int i) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.my
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Document.this.lambda$save$9(i, (Long) obj);
            }
        });
    }

    public void selectNextLeafRevision(final boolean z, final boolean z2) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.py
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Document.this.lambda$selectNextLeafRevision$6(z, z2, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4Peer
    @NonNull
    public String toString() {
        return "C4Document" + super.toString();
    }

    @Nullable
    public C4Document update(@Nullable final FLSliceResult fLSliceResult, final int i) throws LiteCoreException {
        long longValue = ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.wy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$update$8;
                lambda$update$8 = C4Document.this.lambda$update$8(fLSliceResult, i, (Long) obj);
                return lambda$update$8;
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return new C4Document(this.impl, longValue);
    }

    @VisibleForTesting
    public C4Document(long j) {
        this(NATIVE_IMPL, j);
    }
}
