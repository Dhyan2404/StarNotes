package com.couchbase.lite.internal.core;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4IndexUpdater;
import com.couchbase.lite.internal.core.impl.NativeC4IndexUpdater;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class C4IndexUpdater extends C4NativePeer {
    private static final NativeImpl NATIVE_IMPL = new NativeC4IndexUpdater();
    private final int count;

    @NonNull
    private final NativeImpl impl;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nClose(long j);

        void nFinish(long j) throws LiteCoreException;

        long nGetCount(long j);

        long nGetValueAt(long j, long j2);

        void nSetVectorAt(long j, long j2, @Nullable float[] fArr) throws LiteCoreException;

        boolean nSkipVectorAt(long j, long j2);
    }

    private C4IndexUpdater(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.impl = nativeImpl;
        this.count = Preconditions.assertInt(nativeImpl.nGetCount(j), "count");
    }

    @NonNull
    public static C4IndexUpdater create(long j) {
        return new C4IndexUpdater(NATIVE_IMPL, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLValue lambda$getValueAt$0(int i, Long l) throws RuntimeException {
        long nGetValueAt = this.impl.nGetValueAt(l.longValue(), i);
        if (nGetValueAt == 0) {
            return null;
        }
        return FLValue.getFLValue(nGetValueAt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVector$1(long j, float[] fArr, Long l) throws LiteCoreException {
        this.impl.nSetVectorAt(l.longValue(), j, fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$skipVector$2(long j, Long l) {
        return Boolean.valueOf(this.impl.nSkipVectorAt(l.longValue(), j));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        releasePeer(null, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.dz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4IndexUpdater.NativeImpl.this.nClose(((Long) obj).longValue());
            }
        });
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @GuardedBy("Database.lock")
    public void finish() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.fz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4IndexUpdater.NativeImpl.this.nFinish(((Long) obj).longValue());
            }
        });
        close();
    }

    public int getCount() {
        return this.count;
    }

    @Nullable
    @GuardedBy("IndexUpdateImpl.lock")
    public FLValue getValueAt(final int i) {
        return (FLValue) nullableWithPeerOrThrow(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.cz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                FLValue lambda$getValueAt$0;
                lambda$getValueAt$0 = C4IndexUpdater.this.lambda$getValueAt$0(i, (Long) obj);
                return lambda$getValueAt$0;
            }
        });
    }

    @GuardedBy("IndexUpdateImpl.lock")
    public void setVector(final long j, @Nullable final float[] fArr) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.ez
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4IndexUpdater.this.lambda$setVector$1(j, fArr, (Long) obj);
            }
        });
    }

    @GuardedBy("IndexUpdateImpl.lock")
    public boolean skipVector(final long j) {
        return ((Boolean) nonNullWithPeerOrThrow(new InterfaceC2217Fn.NonNullFunction() { // from class: com.sunia.HTREnginev2.bz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunction
            public final Object apply(Object obj) {
                Boolean lambda$skipVector$2;
                lambda$skipVector$2 = C4IndexUpdater.this.lambda$skipVector$2(j, (Long) obj);
                return lambda$skipVector$2;
            }
        })).booleanValue();
    }
}
