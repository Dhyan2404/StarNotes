package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4NativePeer;
import com.couchbase.lite.internal.fleece.FLArray;
import com.couchbase.lite.internal.fleece.FLArrayIterator;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.Objects;

/* loaded from: classes4.dex */
public abstract class FLArrayIterator extends C4NativePeer {
    protected final FLArray.NativeImpl impl;

    /* loaded from: classes4.dex */
    public static final class ManagedFLArrayIterator extends FLArrayIterator {
        private final FLArray array;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManagedFLArrayIterator(@NonNull final FLArray.NativeImpl nativeImpl, @NonNull FLArray fLArray) {
            super(nativeImpl, (Long) fLArray.withContent(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.j7g
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(FLArray.NativeImpl.this.nInit(((Long) obj).longValue()));
                }
            }));
            Objects.requireNonNull(nativeImpl);
            this.array = fLArray;
        }

        private void closePeer(@Nullable LogDomain logDomain) {
            releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.fleece.a
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    FLArrayIterator.ManagedFLArrayIterator.this.lambda$closePeer$0((Long) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$closePeer$0(Long l) throws RuntimeException {
            FLArray.NativeImpl nativeImpl = this.impl;
            if (nativeImpl != null) {
                nativeImpl.nFree(l.longValue());
            }
        }

        @Override // com.couchbase.lite.internal.fleece.FLArrayIterator, java.lang.AutoCloseable
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

    /* loaded from: classes4.dex */
    public static final class UnmanagedFLArrayIterator extends FLArrayIterator {
        public UnmanagedFLArrayIterator(@NonNull FLArray.NativeImpl nativeImpl, long j) {
            super(nativeImpl, j);
        }

        @Override // com.couchbase.lite.internal.fleece.FLArrayIterator, java.lang.AutoCloseable
        public void close() {
            releasePeer(null, null);
        }
    }

    public FLArrayIterator(@NonNull FLArray.NativeImpl nativeImpl, @Nullable Long l) {
        super(l);
        this.impl = nativeImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLValue lambda$getValue$1(Long l) throws RuntimeException {
        long nGetValue = this.impl.nGetValue(l.longValue());
        if (nGetValue == 0) {
            return null;
        }
        return FLValue.getFLValue(nGetValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLValue lambda$getValueAt$0(int i, Long l) throws RuntimeException {
        long nGetValueAt = this.impl.nGetValueAt(l.longValue(), i);
        if (nGetValueAt == 0) {
            return null;
        }
        return FLValue.getFLValue(nGetValueAt);
    }

    @Override // java.lang.AutoCloseable
    public abstract void close();

    @Nullable
    public FLValue getValue() {
        return (FLValue) nullableWithPeerOrThrow(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.g7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                FLValue lambda$getValue$1;
                lambda$getValue$1 = FLArrayIterator.this.lambda$getValue$1((Long) obj);
                return lambda$getValue$1;
            }
        });
    }

    @Nullable
    public FLValue getValueAt(final int i) {
        return (FLValue) nullableWithPeerOrThrow(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.h7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                FLValue lambda$getValueAt$0;
                lambda$getValueAt$0 = FLArrayIterator.this.lambda$getValueAt$0(i, (Long) obj);
                return lambda$getValueAt$0;
            }
        });
    }

    public void next() {
        final FLArray.NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.i7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(FLArray.NativeImpl.this.nNext(((Long) obj).longValue()));
            }
        });
    }

    public FLArrayIterator(@NonNull FLArray.NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
    }
}
