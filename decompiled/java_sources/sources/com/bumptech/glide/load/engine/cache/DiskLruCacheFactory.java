package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* loaded from: classes3.dex */
public class DiskLruCacheFactory implements DiskCache.Factory {

    /* renamed from: a */
    public final long f14702a;

    /* renamed from: b */
    public final CacheDirectoryGetter f14703b;

    /* loaded from: classes3.dex */
    public interface CacheDirectoryGetter {
        File getCacheDirectory();
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$a */
    /* loaded from: classes3.dex */
    public class C1948a implements CacheDirectoryGetter {

        /* renamed from: a */
        public final /* synthetic */ String f14704a;

        public C1948a(String str) {
            this.f14704a = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            return new File(this.f14704a);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$b */
    /* loaded from: classes3.dex */
    public class C1949b implements CacheDirectoryGetter {

        /* renamed from: a */
        public final /* synthetic */ String f14705a;

        /* renamed from: b */
        public final /* synthetic */ String f14706b;

        public C1949b(String str, String str2) {
            this.f14705a = str;
            this.f14706b = str2;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            return new File(this.f14705a, this.f14706b);
        }
    }

    public DiskLruCacheFactory(String str, long j) {
        this(new C1948a(str), j);
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
    public DiskCache build() {
        File cacheDirectory = this.f14703b.getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.isDirectory() || cacheDirectory.mkdirs()) {
            return DiskLruCacheWrapper.create(cacheDirectory, this.f14702a);
        }
        return null;
    }

    public DiskLruCacheFactory(String str, String str2, long j) {
        this(new C1949b(str, str2), j);
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, long j) {
        this.f14702a = j;
        this.f14703b = cacheDirectoryGetter;
    }
}
