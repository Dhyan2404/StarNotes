package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;

@Deprecated
/* loaded from: classes3.dex */
public final class ExternalCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.ExternalCacheDiskCacheFactory$a */
    /* loaded from: classes3.dex */
    public class C1950a implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: a */
        public final /* synthetic */ Context f14716a;

        /* renamed from: b */
        public final /* synthetic */ String f14717b;

        public C1950a(Context context, String str) {
            this.f14716a = context;
            this.f14717b = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File externalCacheDir = this.f14716a.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            return this.f14717b != null ? new File(externalCacheDir, this.f14717b) : externalCacheDir;
        }
    }

    public ExternalCacheDiskCacheFactory(Context context) {
        this(context, "image_manager_disk_cache", DiskCache.Factory.DEFAULT_DISK_CACHE_SIZE);
    }

    public ExternalCacheDiskCacheFactory(Context context, int i) {
        this(context, "image_manager_disk_cache", i);
    }

    public ExternalCacheDiskCacheFactory(Context context, String str, int i) {
        super(new C1950a(context, str), i);
    }
}
