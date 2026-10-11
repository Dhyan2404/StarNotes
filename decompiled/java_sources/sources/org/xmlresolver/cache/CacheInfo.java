package org.xmlresolver.cache;

import java.util.regex.Pattern;

/* loaded from: classes16.dex */
public class CacheInfo {
    public final boolean cache;
    public final long cacheSize;
    public final long cacheSpace;
    public final long deleteWait;
    public final long maxAge;
    public final String pattern;
    public final Pattern uriPattern;

    public CacheInfo(String str, boolean z) {
        this(str, z, ResourceCache.deleteWait, 1000L, ResourceCache.cacheSpace, -1L);
    }

    public String toString() {
        if (this.cache) {
            return "Cache include " + this.pattern;
        }
        return "Cache exclude " + this.pattern;
    }

    public CacheInfo(String str, boolean z, long j, long j2, long j3, long j4) {
        this.pattern = str;
        this.uriPattern = Pattern.compile(str);
        this.cache = z;
        this.deleteWait = j;
        this.cacheSize = j2;
        this.cacheSpace = j3;
        this.maxAge = j4;
    }
}
