package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.impl.NativeFLDict;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class FLDict {
    private static final NativeImpl NATIVE_IMPL = new NativeFLDict();
    private final NativeImpl impl;
    private final long peer;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCount(long j);

        void nFree(long j);

        long nGet(long j, @NonNull byte[] bArr);

        long nGetCount(long j);

        @Nullable
        String nGetKey(long j);

        long nGetValue(long j);

        long nInit(long j);

        boolean nNext(long j);
    }

    public FLDict(@NonNull NativeImpl nativeImpl, long j) {
        this.impl = nativeImpl;
        this.peer = Preconditions.assertNotZero(j, "peer");
    }

    @NonNull
    public static FLDict create(long j) {
        return new FLDict(NATIVE_IMPL, j);
    }

    @NonNull
    public Map<String, Object> asDict() {
        HashMap hashMap = new HashMap();
        FLDictIterator it2 = iterator();
        while (true) {
            try {
                String key = it2.getKey();
                if (key == null) {
                    it2.close();
                    return hashMap;
                }
                hashMap.put(key, it2.getValue().asObject());
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

    @Nullable
    public FLValue get(@Nullable String str) {
        if (str == null) {
            return null;
        }
        long nGet = this.impl.nGet(this.peer, str.getBytes(StandardCharsets.UTF_8));
        if (nGet != 0) {
            return FLValue.getFLValue(nGet);
        }
        return null;
    }

    @NonNull
    public FLDictIterator iterator() {
        return new FLDictIterator(this.impl, this);
    }

    @NonNull
    public FLValue toFLValue() {
        return FLValue.getFLValue(this.peer);
    }

    @Nullable
    public <T> T withContent(@NonNull InterfaceC2217Fn.Function<Long, T> function) {
        return function.apply(Long.valueOf(this.peer));
    }
}
