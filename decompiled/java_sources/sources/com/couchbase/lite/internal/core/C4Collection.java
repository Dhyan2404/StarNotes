package com.couchbase.lite.internal.core;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.core.C4CollectionDocObserver;
import com.couchbase.lite.internal.core.C4CollectionObserver;
import com.couchbase.lite.internal.core.C4Peer;
import com.couchbase.lite.internal.core.impl.NativeC4Collection;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4Collection extends C4Peer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Collection();

    /* renamed from: db */
    @NonNull
    private final C4Database f16300db;

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final String name;

    @NonNull
    private final String scope;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        boolean nCollectionIsValid(long j);

        void nCreateArrayIndex(long j, @NonNull String str, @NonNull String str2, @NonNull String str3) throws LiteCoreException;

        long nCreateCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

        void nCreateFullTextIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3, boolean z, @Nullable String str4) throws LiteCoreException;

        void nCreatePredictiveIndex(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

        void nCreateValueIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3) throws LiteCoreException;

        void nCreateVectorIndex(long j, @NonNull String str, @NonNull String str2, long j2, int i, long j3, int i2, long j4, long j5, long j6, long j7, long j8, boolean z) throws LiteCoreException;

        void nDeleteIndex(long j, @NonNull String str) throws LiteCoreException;

        void nFree(long j);

        long nGetCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

        long nGetDefaultCollection(long j) throws LiteCoreException;

        long nGetDocExpiration(long j, @NonNull String str) throws LiteCoreException;

        long nGetDocumentCount(long j);

        long nGetIndex(long j, @NonNull String str) throws LiteCoreException;

        long nGetIndexesInfo(long j) throws LiteCoreException;

        void nPurgeDoc(long j, @NonNull String str) throws LiteCoreException;

        void nSetDocExpiration(long j, @NonNull String str, long j2) throws LiteCoreException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C4Collection(@NonNull final NativeImpl nativeImpl, long j, @NonNull C4Database c4Database, @NonNull String str, @NonNull String str2) {
        super(j, new C4Peer.PeerCleaner() { // from class: com.sunia.HTREnginev2.pw
            @Override // com.couchbase.lite.internal.core.C4Peer.PeerCleaner
            public final void dispose(long j2) {
                C4Collection.NativeImpl.this.nFree(j2);
            }
        });
        Objects.requireNonNull(nativeImpl);
        this.impl = nativeImpl;
        this.f16300db = c4Database;
        this.scope = str;
        this.name = str2;
    }

    @NonNull
    public static C4Collection create(@NonNull C4Database c4Database, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        return create(NATIVE_IMPL, c4Database, str, str2);
    }

    @Nullable
    @GuardedBy("dbLock")
    public static C4Collection get(@NonNull C4Database c4Database, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        return get(NATIVE_IMPL, c4Database, str, str2);
    }

    @NonNull
    public static C4Collection getDefault(@NonNull C4Database c4Database) throws LiteCoreException {
        return getDefault(NATIVE_IMPL, c4Database);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$create$0(NativeImpl nativeImpl, String str, String str2, Long l) throws LiteCoreException {
        return Long.valueOf(nativeImpl.nCreateCollection(l.longValue(), str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createArrayIndex$8(String str, String str2, String str3, Long l) throws LiteCoreException {
        this.impl.nCreateArrayIndex(l.longValue(), str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4CollectionObserver lambda$createCollectionObserver$5(Runnable runnable, Long l) throws LiteCoreException {
        return C4CollectionObserver.newObserver(l.longValue(), runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4CollectionDocObserver lambda$createDocumentObserver$6(String str, Runnable runnable, Long l) throws LiteCoreException {
        return C4CollectionDocObserver.newObserver(l.longValue(), str, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFullTextIndex$9(String str, int i, String str2, String str3, boolean z, String str4, Long l) throws LiteCoreException {
        this.impl.nCreateFullTextIndex(l.longValue(), str, i, str2, str3, z, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPredictiveIndex$10(String str, String str2, Long l) throws LiteCoreException {
        this.impl.nCreatePredictiveIndex(l.longValue(), str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createValueIndex$7(String str, int i, String str2, String str3, Long l) throws LiteCoreException {
        this.impl.nCreateValueIndex(l.longValue(), str, i, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createVectorIndex$11(String str, String str2, long j, int i, long j2, int i2, long j3, long j4, long j5, long j6, long j7, boolean z, Long l) throws LiteCoreException {
        this.impl.nCreateVectorIndex(l.longValue(), str, str2, j, i, j2, i2, j3, j4, j5, j6, j7, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteIndex$14(String str, Long l) throws LiteCoreException {
        this.impl.nDeleteIndex(l.longValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$get$1(NativeImpl nativeImpl, String str, String str2, Long l) throws LiteCoreException {
        return Long.valueOf(nativeImpl.nGetCollection(l.longValue(), str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$getDocumentExpiration$3(String str, Long l) throws LiteCoreException {
        return Long.valueOf(this.impl.nGetDocExpiration(l.longValue(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$getIndex$13(String str, Long l) throws LiteCoreException {
        return Long.valueOf(this.impl.nGetIndex(l.longValue(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLValue lambda$getIndexesInfo$12(Long l) throws LiteCoreException {
        return FLValue.getFLValue(this.impl.nGetIndexesInfo(l.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$purgeDocument$4(String str, Long l) throws LiteCoreException {
        this.impl.nPurgeDoc(l.longValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDocumentExpiration$2(String str, long j, Long l) throws LiteCoreException {
        this.impl.nSetDocExpiration(l.longValue(), str, j);
    }

    public void createArrayIndex(@NonNull final String str, @NonNull final String str2, @NonNull final String str3) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.yw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$createArrayIndex$8(str, str2, str3, (Long) obj);
            }
        });
    }

    @NonNull
    public C4CollectionObserver createCollectionObserver(@NonNull final Runnable runnable) throws LiteCoreException {
        return (C4CollectionObserver) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.fx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4CollectionObserver lambda$createCollectionObserver$5;
                lambda$createCollectionObserver$5 = C4Collection.lambda$createCollectionObserver$5(runnable, (Long) obj);
                return lambda$createCollectionObserver$5;
            }
        });
    }

    @NonNull
    public C4Document createDocument(@NonNull String str, @Nullable FLSliceResult fLSliceResult, int i) throws LiteCoreException {
        return C4Document.create(this, str, fLSliceResult, i);
    }

    @NonNull
    public C4DocumentObserver createDocumentObserver(@NonNull final String str, @NonNull final Runnable runnable) throws LiteCoreException {
        return (C4DocumentObserver) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.xw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4CollectionDocObserver lambda$createDocumentObserver$6;
                lambda$createDocumentObserver$6 = C4Collection.lambda$createDocumentObserver$6(str, runnable, (Long) obj);
                return lambda$createDocumentObserver$6;
            }
        });
    }

    public void createFullTextIndex(@NonNull final String str, final int i, @NonNull final String str2, @Nullable final String str3, final boolean z, @Nullable final String str4) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.zw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$createFullTextIndex$9(str, i, str2, str3, z, str4, (Long) obj);
            }
        });
    }

    public void createPredictiveIndex(final String str, final String str2) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.qw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$createPredictiveIndex$10(str, str2, (Long) obj);
            }
        });
    }

    public void createValueIndex(@NonNull final String str, final int i, @NonNull final String str2, @Nullable final String str3) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.ww
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$createValueIndex$7(str, i, str2, str3, (Long) obj);
            }
        });
    }

    public void createVectorIndex(@NonNull final String str, @NonNull final String str2, final long j, final int i, final long j2, final int i2, final long j3, final long j4, final long j5, final long j6, final long j7, final boolean z) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.cx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$createVectorIndex$11(str, str2, j, i, j2, i2, j3, j4, j5, j6, j7, z, (Long) obj);
            }
        });
    }

    public void deleteIndex(@NonNull final String str) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.uw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$deleteIndex$14(str, (Long) obj);
            }
        });
    }

    @NonNull
    public C4Database getDb() {
        return this.f16300db;
    }

    @Nullable
    public C4Document getDocument(@NonNull String str) throws LiteCoreException {
        return C4Document.get(this, (String) Preconditions.assertNotNull(str, "doc ID"));
    }

    public long getDocumentCount() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.ax
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Collection.NativeImpl.this.nGetDocumentCount(((Long) obj).longValue()));
            }
        })).longValue();
    }

    public long getDocumentExpiration(@NonNull final String str) throws LiteCoreException {
        return ((Long) withPeerOrDefault(0L, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.dx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$getDocumentExpiration$3;
                lambda$getDocumentExpiration$3 = C4Collection.this.lambda$getDocumentExpiration$3(str, (Long) obj);
                return lambda$getDocumentExpiration$3;
            }
        })).longValue();
    }

    @Nullable
    public C4Document getDocumentWithRevs(@NonNull String str) throws LiteCoreException {
        return C4Document.getWithRevs(this, (String) Preconditions.assertNotNull(str, "doc ID"));
    }

    @Nullable
    @GuardedBy("Database.getDbLock()")
    public C4Index getIndex(@NonNull final String str) throws LiteCoreException {
        long longValue = ((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.nw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$getIndex$13;
                lambda$getIndex$13 = C4Collection.this.lambda$getIndex$13(str, (Long) obj);
                return lambda$getIndex$13;
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return C4Index.create(longValue);
    }

    @NonNull
    public FLValue getIndexesInfo() throws LiteCoreException {
        return (FLValue) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.vw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                FLValue lambda$getIndexesInfo$12;
                lambda$getIndexesInfo$12 = C4Collection.this.lambda$getIndexesInfo$12((Long) obj);
                return lambda$getIndexesInfo$12;
            }
        });
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    @NonNull
    public String getScope() {
        return this.scope;
    }

    public boolean isValid() {
        Boolean bool = Boolean.FALSE;
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Boolean) withPeerOrDefault(bool, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.bx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(C4Collection.NativeImpl.this.nCollectionIsValid(((Long) obj).longValue()));
            }
        })).booleanValue();
    }

    public void purgeDocument(@NonNull final String str) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.ow
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$purgeDocument$4(str, (Long) obj);
            }
        });
    }

    public void setDocumentExpiration(@NonNull final String str, final long j) throws LiteCoreException {
        voidWithPeerOrWarn(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.tw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Collection.this.lambda$setDocumentExpiration$2(str, j, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4Peer
    @NonNull
    public String toString() {
        return "C4Collection" + super.toString();
    }

    @NonNull
    @VisibleForTesting
    public static C4Collection create(@NonNull final NativeImpl nativeImpl, @NonNull C4Database c4Database, @NonNull final String str, @NonNull final String str2) throws LiteCoreException {
        return new C4Collection(nativeImpl, ((Long) c4Database.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ex
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$create$0;
                lambda$create$0 = C4Collection.lambda$create$0(C4Collection.NativeImpl.this, str, str2, (Long) obj);
                return lambda$create$0;
            }
        })).longValue(), c4Database, str, str2);
    }

    @Nullable
    @GuardedBy("dbLock")
    @VisibleForTesting
    public static C4Collection get(@NonNull final NativeImpl nativeImpl, @NonNull C4Database c4Database, @NonNull final String str, @NonNull final String str2) throws LiteCoreException {
        long longValue = ((Long) c4Database.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.sw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$get$1;
                lambda$get$1 = C4Collection.lambda$get$1(C4Collection.NativeImpl.this, str, str2, (Long) obj);
                return lambda$get$1;
            }
        })).longValue();
        if (longValue == 0) {
            return null;
        }
        return new C4Collection(nativeImpl, longValue, c4Database, str, str2);
    }

    @NonNull
    @VisibleForTesting
    public static C4Collection getDefault(@NonNull final NativeImpl nativeImpl, @NonNull C4Database c4Database) throws LiteCoreException {
        Objects.requireNonNull(nativeImpl);
        return new C4Collection(nativeImpl, ((Long) c4Database.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.rw
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Collection.NativeImpl.this.nGetDefaultCollection(((Long) obj).longValue()));
            }
        })).longValue(), c4Database, "_default", "_default");
    }
}
