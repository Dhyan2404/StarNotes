package org.apache.commons.compress.compressors.brotli;

import org.apache.commons.compress.utils.OsgiUtils;

/* loaded from: classes12.dex */
public class BrotliUtils {

    /* renamed from: a */
    public static volatile CachedAvailability f105985a = CachedAvailability.DONT_CACHE;

    /* loaded from: classes12.dex */
    public enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        setCacheBrotliAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    /* renamed from: a */
    public static CachedAvailability m66606a() {
        return f105985a;
    }

    /* renamed from: b */
    public static boolean m66607b() {
        try {
            Class.forName("org.brotli.dec.BrotliInputStream");
            return true;
        } catch (Exception | NoClassDefFoundError unused) {
            return false;
        }
    }

    public static boolean isBrotliCompressionAvailable() {
        CachedAvailability cachedAvailability = f105985a;
        return cachedAvailability != CachedAvailability.DONT_CACHE ? cachedAvailability == CachedAvailability.CACHED_AVAILABLE : m66607b();
    }

    public static void setCacheBrotliAvailablity(boolean z) {
        if (!z) {
            f105985a = CachedAvailability.DONT_CACHE;
        } else if (f105985a == CachedAvailability.DONT_CACHE) {
            f105985a = m66607b() ? CachedAvailability.CACHED_AVAILABLE : CachedAvailability.CACHED_UNAVAILABLE;
        }
    }
}
