package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4NativePeer;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLDictIterator;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class FLDictIterator extends C4NativePeer {
    private final FLDict dict;
    private final FLDict.NativeImpl impl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FLDictIterator(@NonNull final FLDict.NativeImpl nativeImpl, @NonNull FLDict fLDict) {
        super((Long) fLDict.withContent(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.o7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
            public final Object apply(Object obj) {
                return Long.valueOf(FLDict.NativeImpl.this.nInit(((Long) obj).longValue()));
            }
        }));
        Objects.requireNonNull(nativeImpl);
        this.impl = nativeImpl;
        this.dict = fLDict;
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.p7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                FLDictIterator.this.lambda$closePeer$1((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
        FLDict.NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nFree(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLValue lambda$getValue$0(Long l) throws RuntimeException {
        return FLValue.getFLValue(this.impl.nGetValue(l.longValue()));
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

    public long getCount() {
        final FLDict.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.m7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(FLDict.NativeImpl.this.nGetCount(((Long) obj).longValue()));
            }
        })).longValue();
    }

    @Nullable
    public String getKey() {
        final FLDict.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.k7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return FLDict.NativeImpl.this.nGetKey(((Long) obj).longValue());
            }
        });
    }

    @NonNull
    public FLValue getValue() {
        return (FLValue) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.l7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                FLValue lambda$getValue$0;
                lambda$getValue$0 = FLDictIterator.this.lambda$getValue$0((Long) obj);
                return lambda$getValue$0;
            }
        });
    }

    public void next() {
        final FLDict.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.n7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(FLDict.NativeImpl.this.nNext(((Long) obj).longValue()));
            }
        });
    }
}
