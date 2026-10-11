package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLArrayIterator;
import com.couchbase.lite.internal.fleece.impl.NativeFLArray;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class FLArray {
    private static final NativeImpl NATIVE_IMPL = new NativeFLArray();
    private final NativeImpl impl;
    private final long peer;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCount(long j);

        void nFree(long j);

        long nGet(long j, long j2);

        long nGetValue(long j);

        long nGetValueAt(long j, int i);

        long nInit(long j);

        boolean nNext(long j);
    }

    private FLArray(@NonNull NativeImpl nativeImpl, long j) {
        Preconditions.assertNotZero(j, "peer");
        this.peer = j;
        this.impl = nativeImpl;
    }

    @NonNull
    public static FLArray create(long j) {
        return new FLArray(NATIVE_IMPL, j);
    }

    @NonNull
    public static FLArrayIterator unmanagedIterator(long j) {
        return new FLArrayIterator.UnmanagedFLArrayIterator(NATIVE_IMPL, j);
    }

    @NonNull
    public List<Object> asArray() {
        return asTypedArray();
    }

    @NonNull
    public <T> List<T> asTypedArray() {
        ArrayList arrayList = new ArrayList();
        FLArrayIterator it2 = iterator();
        while (true) {
            try {
                FLValue value = it2.getValue();
                if (value == null) {
                    it2.close();
                    return arrayList;
                }
                arrayList.add(value.asObject());
                it2.next();
            } catch (Throwable th) {
                if (it2 != null) {
                    try {
                        it2.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    public long count() {
        return this.impl.nCount(this.peer);
    }

    @NonNull
    public FLValue get(long j) {
        return FLValue.getFLValue(this.impl.nGet(this.peer, j));
    }

    @NonNull
    public FLArrayIterator iterator() {
        return new FLArrayIterator.ManagedFLArrayIterator(this.impl, this);
    }

    @Nullable
    public <T> T withContent(@NonNull InterfaceC2217Fn.Function<Long, T> function) {
        return function.apply(Long.valueOf(this.peer));
    }
}
