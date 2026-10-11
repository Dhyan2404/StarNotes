package org.apache.commons.compress.compressors.zstandard;

import com.alibaba.fastjson2.JSONB;
import org.apache.commons.compress.utils.OsgiUtils;

/* loaded from: classes12.dex */
public class ZstdUtils {

    /* renamed from: a */
    public static final byte[] f106398a = {40, JSONB.Constants.BC_DOUBLE, 47, -3};

    /* renamed from: b */
    public static final byte[] f106399b = {42, 77, 24};

    /* renamed from: c */
    public static volatile CachedAvailability f106400c = CachedAvailability.DONT_CACHE;

    /* loaded from: classes12.dex */
    public enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        setCacheZstdAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    /* renamed from: a */
    public static CachedAvailability m66829a() {
        return f106400c;
    }

    /* renamed from: b */
    public static boolean m66830b() {
        try {
            Class.forName("com.github.luben.zstd.ZstdInputStream");
            return true;
        } catch (Exception | NoClassDefFoundError unused) {
            return false;
        }
    }

    public static boolean isZstdCompressionAvailable() {
        CachedAvailability cachedAvailability = f106400c;
        return cachedAvailability != CachedAvailability.DONT_CACHE ? cachedAvailability == CachedAvailability.CACHED_AVAILABLE : m66830b();
    }

    public static boolean matches(byte[] bArr, int i) {
        boolean z;
        if (i < f106398a.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f106398a;
            if (i2 >= bArr2.length) {
                z = true;
                break;
            }
            if (bArr[i2] != bArr2[i2]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            return true;
        }
        if (80 != (bArr[0] & JSONB.Constants.BC_INT32_NUM_MIN)) {
            return false;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr3 = f106399b;
            if (i3 >= bArr3.length) {
                return true;
            }
            int i4 = i3 + 1;
            if (bArr[i4] != bArr3[i3]) {
                return false;
            }
            i3 = i4;
        }
    }

    public static void setCacheZstdAvailablity(boolean z) {
        if (!z) {
            f106400c = CachedAvailability.DONT_CACHE;
        } else if (f106400c == CachedAvailability.DONT_CACHE) {
            f106400c = m66830b() ? CachedAvailability.CACHED_AVAILABLE : CachedAvailability.CACHED_UNAVAILABLE;
        }
    }
}
