package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.core.C4Peer;
import com.couchbase.lite.internal.core.C4Query;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.core.impl.NativeC4Query;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4Query extends C4Peer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Query();
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        int nColumnCount(long j);

        @Nullable
        String nColumnName(long j, int i);

        long nCreateQuery(long j, int i, @NonNull String str) throws LiteCoreException;

        @Nullable
        String nExplain(long j);

        void nFree(long j);

        long nRun(long j, long j2, long j3) throws LiteCoreException;

        void nSetParameters(long j, long j2, long j3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C4Query(@NonNull final NativeImpl nativeImpl, long j) {
        super(j, new C4Peer.PeerCleaner() { // from class: com.sunia.HTREnginev2.mz
            @Override // com.couchbase.lite.internal.core.C4Peer.PeerCleaner
            public final void dispose(long j2) {
                C4Query.NativeImpl.this.nFree(j2);
            }
        });
        Objects.requireNonNull(nativeImpl);
        this.impl = nativeImpl;
    }

    @NonNull
    public static C4Query create(@NonNull C4Database c4Database, @NonNull QueryLanguage queryLanguage, @NonNull String str) throws LiteCoreException {
        return create(NATIVE_IMPL, c4Database, queryLanguage, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4Query lambda$create$0(NativeImpl nativeImpl, QueryLanguage queryLanguage, String str, Long l) throws LiteCoreException {
        return new C4Query(nativeImpl, nativeImpl.nCreateQuery(l.longValue(), queryLanguage.getCode(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getColumnNameForIndex$3(int i, Long l) throws RuntimeException {
        return this.impl.nColumnName(l.longValue(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ C4QueryEnumerator lambda$run$2(FLSliceResult fLSliceResult, Long l) throws LiteCoreException {
        return C4QueryEnumerator.create(this.impl.nRun(l.longValue(), fLSliceResult.getBase(), fLSliceResult.getSize()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParameters$1(FLSliceResult fLSliceResult, Long l) throws RuntimeException {
        this.impl.nSetParameters(l.longValue(), fLSliceResult.getBase(), fLSliceResult.getSize());
    }

    @Nullable
    public String explain() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.nz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4Query.NativeImpl.this.nExplain(((Long) obj).longValue());
            }
        });
    }

    public int getColumnCount() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Integer) withPeerOrDefault(0, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.rz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return Integer.valueOf(C4Query.NativeImpl.this.nColumnCount(((Long) obj).longValue()));
            }
        })).intValue();
    }

    @Nullable
    public String getColumnNameForIndex(final int i) {
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.qz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$getColumnNameForIndex$3;
                lambda$getColumnNameForIndex$3 = C4Query.this.lambda$getColumnNameForIndex$3(i, (Long) obj);
                return lambda$getColumnNameForIndex$3;
            }
        });
    }

    @Nullable
    public C4QueryEnumerator run(@NonNull final FLSliceResult fLSliceResult) throws LiteCoreException {
        return (C4QueryEnumerator) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.oz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                C4QueryEnumerator lambda$run$2;
                lambda$run$2 = C4Query.this.lambda$run$2(fLSliceResult, (Long) obj);
                return lambda$run$2;
            }
        });
    }

    public void setParameters(@NonNull final FLSliceResult fLSliceResult) {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.pz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Query.this.lambda$setParameters$1(fLSliceResult, (Long) obj);
            }
        });
    }

    @NonNull
    @VisibleForTesting
    public static C4Query create(@NonNull final NativeImpl nativeImpl, @NonNull C4Database c4Database, @NonNull final QueryLanguage queryLanguage, @NonNull final String str) throws LiteCoreException {
        return (C4Query) c4Database.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.sz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4Query lambda$create$0;
                lambda$create$0 = C4Query.lambda$create$0(C4Query.NativeImpl.this, queryLanguage, str, (Long) obj);
                return lambda$create$0;
            }
        });
    }
}
