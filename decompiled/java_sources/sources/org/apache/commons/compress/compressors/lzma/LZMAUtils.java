package org.apache.commons.compress.compressors.lzma;

import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import java.util.HashMap;
import org.apache.commons.compress.compressors.FileNameUtil;
import org.apache.commons.compress.utils.OsgiUtils;

/* loaded from: classes12.dex */
public class LZMAUtils {

    /* renamed from: a */
    public static final FileNameUtil f106301a;

    /* renamed from: b */
    public static final byte[] f106302b = {UTF8JsonGenerator.f21288h, 0, 0};

    /* renamed from: c */
    public static volatile CachedAvailability f106303c;

    /* loaded from: classes12.dex */
    public enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(".lzma", "");
        hashMap.put("-lzma", "");
        f106301a = new FileNameUtil(hashMap, ".lzma");
        f106303c = CachedAvailability.DONT_CACHE;
        setCacheLZMAAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    /* renamed from: a */
    public static CachedAvailability m66790a() {
        return f106303c;
    }

    /* renamed from: b */
    public static boolean m66791b() {
        try {
            LZMACompressorInputStream.matches(null, 0);
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }

    public static String getCompressedFilename(String str) {
        return f106301a.getCompressedFilename(str);
    }

    public static String getUncompressedFilename(String str) {
        return f106301a.getUncompressedFilename(str);
    }

    public static boolean isCompressedFilename(String str) {
        return f106301a.isCompressedFilename(str);
    }

    public static boolean isLZMACompressionAvailable() {
        CachedAvailability cachedAvailability = f106303c;
        return cachedAvailability != CachedAvailability.DONT_CACHE ? cachedAvailability == CachedAvailability.CACHED_AVAILABLE : m66791b();
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < f106302b.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f106302b;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static void setCacheLZMAAvailablity(boolean z) {
        if (!z) {
            f106303c = CachedAvailability.DONT_CACHE;
        } else if (f106303c == CachedAvailability.DONT_CACHE) {
            f106303c = m66791b() ? CachedAvailability.CACHED_AVAILABLE : CachedAvailability.CACHED_UNAVAILABLE;
        }
    }
}
