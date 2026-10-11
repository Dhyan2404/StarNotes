package org.apache.commons.compress.compressors.p112xz;

import com.alibaba.fastjson2.JSONB;
import java.util.HashMap;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.FileNameUtil;
import org.apache.commons.compress.utils.OsgiUtils;

/* loaded from: classes12.dex */
public class XZUtils {

    /* renamed from: a */
    public static final FileNameUtil f106385a;

    /* renamed from: b */
    public static final byte[] f106386b = {-3, TarConstants.LF_CONTIG, JSONB.Constants.BC_STR_UTF8, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 90, 0};

    /* renamed from: c */
    public static volatile CachedAvailability f106387c;

    /* loaded from: classes12.dex */
    public enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(".txz", ".tar");
        hashMap.put(".xz", "");
        hashMap.put("-xz", "");
        f106385a = new FileNameUtil(hashMap, ".xz");
        f106387c = CachedAvailability.DONT_CACHE;
        setCacheXZAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    /* renamed from: a */
    public static CachedAvailability m66825a() {
        return f106387c;
    }

    /* renamed from: b */
    public static boolean m66826b() {
        try {
            XZCompressorInputStream.matches(null, 0);
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }

    public static String getCompressedFilename(String str) {
        return f106385a.getCompressedFilename(str);
    }

    public static String getUncompressedFilename(String str) {
        return f106385a.getUncompressedFilename(str);
    }

    public static boolean isCompressedFilename(String str) {
        return f106385a.isCompressedFilename(str);
    }

    public static boolean isXZCompressionAvailable() {
        CachedAvailability cachedAvailability = f106387c;
        return cachedAvailability != CachedAvailability.DONT_CACHE ? cachedAvailability == CachedAvailability.CACHED_AVAILABLE : m66826b();
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < f106386b.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f106386b;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static void setCacheXZAvailablity(boolean z) {
        if (!z) {
            f106387c = CachedAvailability.DONT_CACHE;
        } else if (f106387c == CachedAvailability.DONT_CACHE) {
            f106387c = m66826b() ? CachedAvailability.CACHED_AVAILABLE : CachedAvailability.CACHED_UNAVAILABLE;
        }
    }
}
