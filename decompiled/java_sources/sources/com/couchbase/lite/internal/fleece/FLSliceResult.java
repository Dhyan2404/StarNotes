package com.couchbase.lite.internal.fleece;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.fleece.impl.NativeFLSliceResult;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public abstract class FLSliceResult implements AutoCloseable {
    private static final NativeImpl NATIVE_IMPL = new NativeFLSliceResult();
    final long base;

    @GuardedBy("this")
    private NativeImpl impl;
    final long size;

    /* loaded from: classes4.dex */
    public static final class ManagedFLSliceResult extends FLSliceResult {
        public ManagedFLSliceResult(@NonNull NativeImpl nativeImpl, long j, long j2) {
            super(nativeImpl, j, j2);
        }

        public void finalize() throws Throwable {
            try {
                close();
            } finally {
                super.finalize();
            }
        }

        @Override // com.couchbase.lite.internal.fleece.FLSliceResult
        public void release(@NonNull NativeImpl nativeImpl) {
            nativeImpl.nRelease(this.base, this.size);
        }
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        @Nullable
        byte[] nGetBuf(long j, long j2);

        void nRelease(long j, long j2);
    }

    /* loaded from: classes4.dex */
    public static final class UnmanagedFLSliceResult extends FLSliceResult {
        public UnmanagedFLSliceResult(@NonNull NativeImpl nativeImpl, long j, long j2) {
            super(nativeImpl, j, j2);
        }

        @Override // com.couchbase.lite.internal.fleece.FLSliceResult
        public void release(@NonNull NativeImpl nativeImpl) {
        }
    }

    @NonNull
    public static FLSliceResult createManagedSlice(long j, long j2) {
        return new ManagedFLSliceResult(NATIVE_IMPL, j, j2);
    }

    @NonNull
    @VisibleForTesting
    public static FLSliceResult createTestSlice() {
        return createManagedSlice(0L, 0L);
    }

    @NonNull
    public static FLSliceResult createUnmanagedSlice(long j, long j2) {
        return new UnmanagedFLSliceResult(NATIVE_IMPL, j, j2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        NativeImpl nativeImpl;
        synchronized (this) {
            nativeImpl = this.impl;
            this.impl = null;
        }
        if (nativeImpl != null) {
            release(nativeImpl);
        }
    }

    public long getBase() {
        return this.base;
    }

    @Nullable
    public byte[] getContent() {
        byte[] nGetBuf;
        synchronized (this) {
            NativeImpl nativeImpl = this.impl;
            if (nativeImpl == null) {
                throw new IllegalStateException("Attempt to use a closed slice");
            }
            nGetBuf = nativeImpl.nGetBuf(this.base, this.size);
        }
        return nGetBuf;
    }

    public long getSize() {
        return this.size;
    }

    public abstract void release(@NonNull NativeImpl nativeImpl);

    @NonNull
    public String toString() {
        return "SliceResult{" + ClassUtils.objId(this) + " @0x0" + Long.toHexString(this.base) + ", " + this.size + "}";
    }

    private FLSliceResult(@NonNull NativeImpl nativeImpl, long j, long j2) {
        this.impl = nativeImpl;
        this.base = j;
        this.size = Preconditions.assertNotNegative(j2, "size");
    }
}
